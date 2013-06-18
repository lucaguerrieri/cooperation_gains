% (c) Copyright Andrew T. Levin 2005
% Note: this program and all associated subroutines may be used freely, 
% subject to the restriction that this source should be acknowledged 
% together with citation of the following paper:  
%    "Optimal Monetary Policy with Endogenous Capital Accumulation" 
%     Andrew T. Levin and J. David Lopez-Salido
%     Manuscript, Federal Reserve Board, 2004.

% This program uses dymod2sym to generate the symbolic version
% of a dynare .MOD file; creates the first-order conditions
% of the Ramsey policymaker; writes out a new .MOD file;
% and creates a M-file with a linear system for obtaining
% the steady-state lagrange multipliers.

% Assumes that infilename and outfilename have been set 
% without the '.MOD' extension.  The output M-file is called
% outfilename_lmss.m

% Set up symbolic version of the model

ramsey_flag = 1;
dynmod2sym;

% if nbehaveqs ~= nendog-rulecount,
%   error('# Endogenous variables not equal to # Behavioral equations plus # policy instruments');
% end;

% Add longer leads and lags of the model variables, since these are
% required for obtaining lagged and forwarded versions of the behavioral
% equations.

for il = 1:(maxlag+maxlead),
  eval(['syms ',cell2string(strcat(varcmat,['_L',num2str(il)]),' '),';']);
  eval(['syms ',cell2string(strcat(varcmat,['_F',num2str(il)]),' '),';']);
end;

% The suffix of each lagrange multiplier refers to the corresponding index 
% in the list of --all-- equations.

numlist = cellstr(deblank(strjust(num2str(behav_eqvec'),'left')));
lmultlist = strcat('lmult',numlist);
lmvlist = char(strcat(lmultlist,'_0'));

% Define lags and leads of the lmults over ranges determined by the 
% maximum leads and lags of the endogenous variables, respectively.
% Also define the corresponding lagged and forwarded versions 
% of the behavioral equations; note that these are only used
% for generating policymaker's focs, not added to the model itself.

for ibeq = 1:nbehaveqs,
  ieq = behav_eqvec(ibeq);
  eqstring = alleqmat(ieq,:);
  maxeqlag = maxeqlags(ieq);
  maxeqlead = maxeqleads(ieq);
  for ilag = 1:maxeqlead,
    lmvlist = strvcat(lmvlist,['lmult',num2str(ieq),'_L',num2str(ilag)]);
    tmpeqstring = chgleadlag(-ilag,eqstring,maxeqlag,maxeqlead);
    eval(tmpeqstring);
  end;
  for ilead = 1:maxeqlag,
    lmvlist = strvcat(lmvlist,['lmult',num2str(ieq),'_F',num2str(ilead)]);
    tmpeqstring = chgleadlag(ilead,eqstring,maxeqlag,maxeqlead);
    eval(tmpeqstring);
  end;
end;

eval(['syms ',cell2string(deblank(cellstr(lmvlist)),' '),';']);

% Define leads and lags of period utility (penultimate equation in alleqmat)

eqstring = alleqmat(neqs-1,:);
maxeqlag = maxeqlags(neqs-1);
maxeqlead = maxeqleads(neqs-1);
for ilag= 1:maxeqlead,
  tmpeqstring = chgleadlag(-ilag,eqstring,maxeqlag,maxeqlead);
  eval(tmpeqstring);
 end;
for ilead = 1:maxeqlag,
  tmpeqstring = chgleadlag(ilead,eqstring,maxeqlag,maxeqlead);
  eval(tmpeqstring);
end;

% Set up policymaker's first-order conditions

ncoefdefs = 2 + nendog*(nbehaveqs+1);
lmss_coefdefs = cell(ncoefdefs,1);
lmss_coefdefs{1} = ['lmss_mat = zeros(',num2str(nendog),',',num2str(nbehaveqs),');'];
lmss_coefdefs{2} = ['lmss_vec = zeros(',num2str(nendog),',1);'];
icoefdef = 2;

syms tmpval;
foc_tmat = '';

for iev = 1:nendog,
  if ~mod(iev,1),
    disp(['Differentiating with respect to endog variable #',num2str(iev)]);
  end;
  vname = char(endocmat(iev));
  iv = endo_index(iev);
  vname0 = [vname,'_0'];
  
% Start by differentiating period utility with respect to the variable

  tmpstring = ['diff(Util,',vname0,')'];
  lmss_string = tmpstring;
  foc_tstring = tmpstring;
  for jlag = 1:maxvleads(neqs-1,iv),
    tmpstring = ['diff(Lag',num2str(jlag),'_Util, ',vname0,')'];
    foc_tstring = [foc_tstring,' + ((1/nbeta__)^',num2str(jlag),')*(',tmpstring,')'];
    lmss_string = [lmss_string,' + ((1/nbeta__)^',num2str(jlag),')*(',tmpstring,')']; 
  end;
  for jlead = 1:maxvlags(neqs-1,iv),
    tmpstring = char(eval(['diff(Lead',num2str(jlead),'_Util, ',vname0,')']));
    foc_tstring = [foc_tstring,' + (nbeta__^',num2str(jlead),')*(',tmpstring,')'];
    lmss_string = [lmss_string,' + (nbeta__^',num2str(jlead),')*(',tmpstring,')']; 
  end;
  eval(['tmpval = sym(0) + ',lmss_string,';']);
  icoefdef = icoefdef + 1;
  lmss_coefdefs{icoefdef} = ['lmss_vec(',num2str(iev),') = ',char(tmpval),';']; %originally char(struct2cell(tmpval))
  
% Now differentiate each behavioral equation.
   
  for jbeq=1:nbehaveqs,
    jeq = behav_eqvec(jbeq);
    tmpstring = char(eval(['diff(eq',num2str(jeq),',',vname0,')']));
    lmss_string = tmpstring;
    foc_tstring = [foc_tstring,' + lmult',num2str(jeq),'_0*(',tmpstring,')'];
    
    for klag = 1:maxvleads(jeq,iv),
      tmpstring = char(eval(['diff(Lag',num2str(klag),'_eq',num2str(jeq),', ',vname0,')']));
      lmss_string = [lmss_string,' + ((1/nbeta__)^',num2str(klag),')*(',tmpstring,')'];
      foc_tstring = [foc_tstring,' + ((1/nbeta__)^',num2str(klag),')', ...
                                      '*lmult',num2str(jeq),'_L',num2str(klag),'*(',tmpstring,')'];
    end;
    for klead = 1:maxvlags(jeq,iv),
      tmpstring = char(eval(['diff(Lead',num2str(klead),'_eq',num2str(jeq),', ',vname0,')']));
      lmss_string = [lmss_string,' + (nbeta__^',num2str(klead),')*(',tmpstring,')'];
      foc_tstring = [foc_tstring,' + (nbeta__^',num2str(klead),')', ...
                                    '*lmult',num2str(jeq),'_F',num2str(klead),'*(',tmpstring,')'];
    end;
  eval(['tmpval = sym(0) + ',lmss_string,';']);
  icoefdef = icoefdef + 1;
  lmss_coefdefs{icoefdef} = ['lmss_mat(',num2str(iev),',',num2str(jbeq),') = ',char(tmpval),';']; %originally char(struct2cell(tmpval))
  end;
  
  % Finally, go ahead and create the policymaker's first-order condition

  eval(['tmpval = sym(0) + ',foc_tstring,';']);
  foc_tmat = strvcat(foc_tmat, char(tmpval)); %originally char(struct2cell(tmpval))
  
end;

% Create cell array of all first-order conditions, and
% then perform substitutions to return to dynare format

focmat = strcat(cellstr(foc_tmat),';');
focmat = strrep(focmat,'_0','');
for il = 1:(maxlag+maxlead),
  focmat = strrep(focmat,['_F',num2str(il)],['(+',num2str(il),')']);
  focmat = strrep(focmat,['_L',num2str(il)],['(-',num2str(il),')']);
end;
focmat = strrep(focmat,'__','');

% Create lists of steady-state variables

% varss_list = strcat(varcmat,'_SS');
varss_list = varcmat;
% lmss_list = strcat(lmultlist,'_SS');
lmss_list = lmultlist;

% Eliminate all time subscripts from LM steady state coefficients

lmss_coefdefs = strrep(lmss_coefdefs,'_0','_ss');
for il = 1:(maxlag+maxlead),
  lmss_coefdefs = strrep(lmss_coefdefs,['_F',num2str(il)],'_ss');
  lmss_coefdefs = strrep(lmss_coefdefs,['_L',num2str(il)],'_ss');
end;
lmss_coefdefs = strrep(lmss_coefdefs,'__','');

% Determine which lagrange multipliers actually enter the FOCs

foc_string = cell2string(focmat,' ');
for ilmult = 1:length(lmultlist),
  lmname = char(lmultlist(ilmult));
  if length(findstr(lmname, foc_string)) == 0,
    disp(['Warning: ',lmname,' does not appear in policymaker''s focs']);
  end;
end;

% Write out new .MOD file

write_ramsey;

% Write out file for determining LM steady states

write_lmss;