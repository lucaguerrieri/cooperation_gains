%% Program: two_country_ramsey.m

% Author: Joe LaBriola, Federal Reserve Board, Office of Financial
% Stability, 2012-2013.
%
% Adapted from Andrew T. Levin's get_ramsey.m file and associated
% subroutines, used for the following papers:
%
%  Levin, A., Lopez-Salido, J.D., 2004.  "Optimal Monetary Policy with
%    Endogenous Capital Accumulation", manuscript, Federal Reserve Board.
%
%  Levin, A., Onatski, A., Williams, J., Williams, N., 2005. "Monetary 
%    Policy under Uncertainty in Microfounded Macroeconometric Models."
%    In: NBER Macroeconomics Annual 2005, Gertler, M., Rogoff, K., eds.
%    Cambridge, MA:  MIT Press.

% Outputs a .mod file with the policy rules for both countries replaced by
% the Lagrangian multipliers. 

% NOTE: Program assumes infilename and outfilename have been set
% (infilename.mod being the Dynare file we want to open, outfilename.mod
% being the Dynare file we want to create with Ramsey FOCs replacing the
% policy rules for each country).

% To feed a .mod file through this program, the interest rate, utility
% function, and welfare function for one country must be labeled "rate1",
% "Util1", and "Welf1", and "rate2", "Util2", and "Welf2" for the other
% country. All of the above variables should be listed under the
% 'Endogenous variables' delimiter. In addition, the equations for the
% policy rule, utility, and welfare equations must be delimited with
% "Policy Rule", "Utility, country 1" (or 2), and "Welfare, country 1" (or
% 2). This is because each country will overlook both equations for policy
% rules: its own because it will be replaced with the Lagrangian
% multipliers, and the other because the other country's interest rate is
% taken as given to create a best-response function.

% After the output file is created, the variables Util and Welf should be
% added to aggregate utility and welfare across countries. There are some
% issues with aggregation that still need to be worked out.

% The paramater "nbeta" should also be added to (name of infile).mod.

%%=======================================================================

% Comment the following two lines out if you have already set infilename
% and outfilename.

% infilename = '';
% outfilename = '';


for c = 1:2  % country number
 start_string = cat(2,'Now creating the Lagrangian multipliers for country ',num2str(c),'.');  
 fprintf('\n');
 disp(start_string);
%% Part A: dynmod2sym.m, with a few edits.
%
% - The foreign interest rate is seen as a parameter by the home country.
% - The other country's utility and welfare equations are ignored, as are
%   the utility and welfare variable names for that country.
ramsey_flag = 1;

o = 3 - c; % sets the other country number


rule_delim = 'Policy Rule';
util_delim_current = cat(2,'Utility, country ',num2str(c));
welf_delim_current = cat(2,'Welfare, country ',num2str(c));

util_delim_other = cat(2,'Utility, country ',num2str(o));
welf_delim_other = cat(2,'Welfare, country ',num2str(o));

rate_vname_current = cat(2,'rate',num2str(c));
util_vname_current = cat(2,'Util',num2str(c));
welf_vname_current = cat(2,'Welf',num2str(c));

rate_vname_other = cat(2,'rate',num2str(o));
util_vname_other = cat(2,'Util',num2str(o));
welf_vname_other = cat(2,'Welf',num2str(o));

endog_delim = 'Endogenous variables';
exog_delim = 'Exogenous variables';

% Set initial values of various variables

modelflag = 0;
parflag = 0;
ruleqflag = 0;
shkflag = 0;
utilflag = 0;
welfflag = 0;
varflag = 0;
endogflag = 0;
exogflag = 0;
initflag = 0;
iline = 1;
nempty = 0;
ncomments = 0;
eqmat = '';
eqlist = '';
parmat = ''; 
shkmat = '';
endovarmat = '';
exovarmat = rate_vname_other; % The current country sees the other country's interest
                              % rate as an exogenous variable.
parmstring = '';
debugflag = 0;
modline = 0;
endinitline = 0;

% Counters for deleting foreign country variables from endogenous variable
% lists and skipping over foreign utility and welfare equations.

delete_rate_count = 0;    
delete_util_count = 0;
delete_welf_count = 0;

rulecount = 0;        % # rules found so far
rulestartline = [];   % first line of each rule equation
rulestopline = [];    % last line of each rule equation
ruleqmat = '';        % String array of rule equations (saved just in case)

% Start processing blocks of lines from rawfile
rawfile = textread([infilename,'.mod'],'%s', ...
                    'delimiter','\n','whitespace','','bufsize',40000);

while iline <= length(rawfile),
  rawline = char(rawfile(iline));
  if debugflag,
    disp([num2str(iline),' ',rawline]);
  end;

% Empty lines get skipped
  if isempty(deblank(rawline)),
    nempty = nempty + 1;
    
% Skip comments after checking for the relevant delimiters
  elseif strncmp(strtok(rawline),'//',2),
    if ~isempty(strfind(rawline,endog_delim)),
      endogflag = 1;
      exogflag = 0;
    elseif ~isempty(strfind(rawline,exog_delim)),
      endogflag = 0;
      exogflag = 1;
    elseif ramsey_flag & ~isempty(strfind(rawline,rule_delim)),
      rulecount = rulecount + 1;
      disp(rawline);
      ruleqflag = 1;
      rulestartline = [rulestartline (iline-1)];
    end;        
    ncomments = ncomments + 1;
    
% Start of initialization block
  elseif strncmpi(rawline,'initval;',8),
      initflag = 1;

% End of initialization block
% (No need to parse anything after this)
  elseif initflag & strncmpi(rawline,'end;',4),
    initflag = 0;
    endinitline = iline;
    iline = length(rawfile);    
    
% Start of model block
  elseif strncmpi(rawline,'model;',6),
      modelflag = 1;
      modline = iline;
      
% End of model block
  elseif modelflag & strncmpi(rawline,'end;',4),
    modelflag = 0;    
    
% Individual model equation
  elseif modelflag,

  % Read in the entire equation, which may span multiple lines, but
  % must be delimited by a semicolon at the end.  
  
    lhs_string = '';
    rhs_string = '';
    while isempty(strfind(rawline,'=')) & isempty(strfind(rawline,';')),
      lhs_string = [lhs_string,rawline];
      iline = iline + 1;
      rawline = char(rawfile(iline));
    end;
    
  % If equal sign is present, then parse equation into lhs and rhs.

    if strfind(rawline,'='),
      eqloc = strfind(rawline,'=');
      lhs_string = [lhs_string, rawline(1:(eqloc-1))];
      rest = rawline((eqloc+1):length(rawline));
      while isempty(strfind(rest,';')),
        rhs_string = [rhs_string, rest];
        iline = iline + 1;
        rest = char(rawfile(iline));
      end;
      semiloc = strfind(rest,';');
      rhs_string = [rhs_string, rest(1:(semiloc-1))];
      [lhs_token,lhs_rest] = strtok(lhs_string);
      
  % If ramsey_flag, then distinguish policy rule and definitions 
  % of utility and welfare from other equations (which are saved
  % in eqmat). Definitions of utility and welfare for the other country
  % are discarded.

      if ramsey_flag & (ruleqflag > 0),
        rule_string = [lhs_string,' = ',rhs_string,';'];
        ruleqmat = strvcat(ruleqmat,rule_string);
        ruleqflag = 0;
        rulestopline = [rulestopline, iline];
      elseif ramsey_flag & strcmpi(lhs_token,util_vname_current),
        Util_string = [lhs_string,' = ',rhs_string,';'];
        utilflag = -1;
      elseif ramsey_flag & strcmpi(lhs_token,welf_vname_current),
        Welf_string = [lhs_string,' = ',rhs_string,';'];
        welfflag = -1;
      elseif ramsey_flag & strcmpi(lhs_token,util_vname_other),
        disp('Deleting the utility function for the foreign country.');
        delete_util_count = delete_util_count + 1;
      elseif ramsey_flag & strcmpi(lhs_token,welf_vname_other),
        disp('Deleting the welfare function for the foreign country.');
        delete_welf_count = delete_welf_count + 1;
      else,
        ieq=size(eqmat,1)+1;
        eqlist = [eqlist, ' eq',num2str(ieq)];
        eqstring = ['eq',num2str(ieq),' = ',lhs_string,' - (',rhs_string,');'];
        eqmat = strvcat(eqmat,eqstring);
      end;

% If no equality sign present, then just save entire equation in eqmat
% (except for policy rule when ramsey_flag = 1)

    else,
      semiloc = strfind(rawline,';');
      rhs_string = [rhs_string, rawline(1:(semiloc-1))];
      if ramsey_flag & (ruleqflag > 0),
        rule_string = [lhs_string,rhs_string,';'];
        if strfind(rule_string,util_vname_other) | strfind(rule_string,welf_vname_other),
            error('Must set utility/welfare as only variable on LHS of equation');
        end;
        ruleqmat = strvcat(ruleqmat,rule_string);
        ruleqflag = 0;
        rulestopline = [rulestopline, iline];
      else,
        ieq=size(eqmat,1)+1;
        eqlist = [eqlist, ' eq',num2str(ieq)];
        eqstring = ['eq',num2str(ieq),' = ',lhs_string,rhs_string,';'];
        eqmat = strvcat(eqmat,eqstring);
      end;
    end;
    
% Parameters  
  elseif parflag | strncmpi(rawline,'parameters ',11),
    if ~parflag,
      rawline = rawline(12:length(rawline));
    end;
    [parname,rest] = strtok(rawline,' ,;');
    parmat = strvcat(parmat,parname);
    while ~isempty(rest),
      [parname,rest] = strtok(rest,' ,;');
      parmat = strvcat(parmat,parname);
    end;
    if isempty(strfind(rawline,';')),
      parflag = 1;
    else,
      parflag = 0;
    end;
    
% Shocks
  elseif shkflag | strncmpi(rawline,'varexo ',7),
    if ~shkflag,
      rawline = rawline(8:length(rawline));
    end;
    [shkname,rest] = strtok(rawline,' ,;');
    shkmat = strvcat(shkmat,shkname);
    while ~isempty(rest),
      [shkname,rest] = strtok(rest,' ,;');
      shkmat = strvcat(shkmat,shkname);
    end;
    if isempty(strfind(rawline,';')),
      shkflag = 1;
    else,
      shkflag = 0;
    end;

% Variables

% The matrix of variables outputted from this step does not include the
% foreign interest rate, utility, or welfare.

  elseif varflag | strncmpi(rawline,'var ',4),
    tmpvarmat = '';
    if endogflag==0 & exogflag==0,
      endogflag = 1;
      if ramsey_flag,
        disp('Warning: commment with endogenous or exogenous delimiter');
        disp('should precede the first var statement in the model file;'); 
        disp('otherwise, variables are assumed to be endogenous.');
      end;
    end;
    if ~varflag,
      rawline = rawline(5:length(rawline));
    end;
    [varname,rest] = strtok(rawline,' ,;');
    if strcmp(varname, rate_vname_other),
      disp('Deleting foreign interest rate from list of endgenous variables.');
      delete_rate_count = delete_rate_count + 1;
    elseif strcmp(varname, util_vname_other),
      disp('Deleting foreign utility from list of endogenous variables.');
      delete_util_count = delete_util_count + 1;
    elseif strcmp(varname, welf_vname_other),
      disp('Deleting foreign welfare from list of endogenous variables.');
      delete_welf_count = delete_welf_count + 1;
    else,
      tmpvarmat = varname;
    end;  
    while ~isempty(rest),
      [varname,rest] = strtok(rest,' ,;');
      if strcmp(varname, rate_vname_other),
        disp('Deleting foreign interest rate from list of endogenous variables.');
        delete_rate_count = delete_rate_count + 1;
      elseif strcmp(varname, util_vname_other),
        disp('Deleting foreign utility from list of endogenous variables.');
        delete_util_count = delete_util_count + 1;
      elseif strcmp(varname, welf_vname_other),
        disp('Deleting foreign welfare from list of endogenous variables.');
        delete_welf_count = delete_welf_count + 1;
      else,
        tmpvarmat = strvcat(tmpvarmat,varname);
      end;  
    end;
    if exogflag & strcmp(tmpvarmat,'') == 0,
      exovarmat = strvcat(exovarmat,tmpvarmat);
    elseif strcmp(tmpvarmat,'') == 0,
      endovarmat = strvcat(endovarmat,tmpvarmat);
    end;
    if isempty(strfind(rawline,';')),
      varflag = 1;
    else,
      varflag = 0;
    end;
  end;    
    
% Increment line counter and go to top of loop
  iline = iline + 1;
end;  
    
% If ramsey_flag = 1, then check for presence of utility and welfare,
% and remove these from the list of endogenous variables.  Also
% check whether policy rule has been declared.

% In the two country version, this step also checks to make sure that the
% foreign interest rate is deleted from the endogenous variable list.

if ramsey_flag,
  if utilflag >= 0,
    disp('Warning:  no period utility definition found in model');
  end;
  if welfflag >= 0,
    disp('Warning:  no welfare definition found in model');
  end;
  iutil = strmatch(util_vname_current,endovarmat);
  iwelf = strmatch(welf_vname_current,endovarmat);
  if ~length(iutil) | ~length(iwelf),
    error('Either utility or welfare for current country not declared in endogenous variable list');
  end;
  irate_other = strmatch(rate_vname_other, endovarmat, 'exact');
  if length(irate_other) > 0,
    error('Foreign interest rate still in endogenous variable list');
  end;
  if delete_rate_count == 0 | delete_util_count == 0 | delete_welf_count == 0,
    error('Problem with deletion.');
  end;
  endovec = setdiff(1:size(endovarmat,1), [iutil; iwelf]');
  endovarmat = endovarmat(endovec,:);
  if rulecount < 2,
    disp('Warning: not enough policy rules declared in model');
  else,
    disp(['Note: ',num2str(rulecount),' policy rules declared in model file']);
    if (length(rulestartline) ~= rulecount) | (length(rulestopline) ~= rulecount),
      error('Error: policy rule found but not terminated');
    end;
  end;
end;    
    
% Create cell-arrays for parameters, variables, and shocks 
%  (sorted in alphabetical order, ignoring case)

npars = size(parmat,1);
nshks = size(shkmat,1);
nendog = size(endovarmat,1);
nexog = size(exovarmat,1);
nvars = nendog + nexog;

parcmat = sorticell(cellstr(parmat));
shkcmat = sorticell(cellstr(shkmat));
endocmat = sorticell(cellstr(endovarmat));
exocmat = sorticell(cellstr(exovarmat));
if nexog,
  varcmat = sorticell(cellstr(strvcat(endovarmat,exovarmat)));
else,
  varcmat = endocmat;
end;

% Find indices of endogenous variables in list of all variables

endo_index = zeros(nendog,1);
for iv = 1:nendog,
  vname = char(endocmat(iv));
  endo_index(iv) = strmatch(vname,varcmat,'exact');
end;

% If ramsey_flag, then add utility and welfare definitions 
% to the end of the equation array.  

if ramsey_flag,
  eqmat = strvcat(eqmat,Util_string,Welf_string);
end;

% Now loop over all equations, using the tokenize function 
% to modify equation string, where _0, _L# and _F# denote 
% contemporaneous values, lags, and leads, respectively, 
% and adding double-underscores to the parameter names 
% occuring in each equation; this function also determines 
% the maximum lag & lead of each variable.

neqs = size(eqmat,1);
var_incid = cell(nvars, neqs);
shk_incid = zeros(nshks, neqs);

alleqmat = '';
behav_eqvec = [];
maxvlags = zeros(neqs,nvars);
maxvleads = zeros(neqs,nvars);
maxeqlags = zeros(neqs,1);
maxeqleads = zeros(neqs,1);

for ieq = 1:neqs,
  [ieqstring,ieq_varincid,maxeqvlags,maxeqvleads,ieq_shkincid] ...
     = tokenize(eqmat(ieq,:),varcmat,shkcmat,parcmat);
  var_incid(:,ieq) = ieq_varincid;
  shk_incid(:,ieq) = ieq_shkincid;
  maxvlags(ieq,:) = maxeqvlags;
  maxvleads(ieq,:) = maxeqvleads;
  maxeqlags(ieq) = max(maxeqvlags(endo_index));
  maxeqleads(ieq) = max(maxeqvleads(endo_index));
  
% If equation involves endogenous variables, then add its index
% to list of behavioral equations 
  if max(~cellfun('isempty',ieq_varincid(endo_index))),
    behav_eqvec = [behav_eqvec, ieq];
  end;

% Finally, save modified equation in string array,
% and add double-underscore to cell array of parameter names.

  alleqmat = strvcat(alleqmat, ieqstring);
end;

parcmat = strcat(parcmat,'__');

% If ramsey_flag, then remove definitions of utility and welfare 
% from list of behavioral equations.

if ramsey_flag,
  behav_eqvec = setdiff(behav_eqvec, [neqs-1 neqs]);
end;    
nbehaveqs = length(behav_eqvec);

% Classify variables into groups based on leads/lags

mmaxvlags = max(maxvlags);
mmaxvleads = max(maxvleads);

idstatic = find(mmaxvlags==0 & mmaxvleads==0);
idinert = find(mmaxvlags > 0 & mmaxvleads==0);
idcombo = find(mmaxvlags > 0 & mmaxvleads > 0);
idforwd = find(mmaxvlags==0  & mmaxvleads > 0);
altorder = [idstatic, idinert, idcombo, idforwd];
valtmat = varcmat(altorder);

% Create cell arrays of all variables (including lags/leads)
%    jacvmat = alphabetical for each lag/lead
%    hesvmat = alternate ordering for each lag/lead

jacvmat = {};
hesvmat = {};

maxlag = max(mmaxvlags);
for ilag = 1:maxlag,
  icmat = varcmat(find(ilag <= mmaxvlags));
  jacvmat = [jacvmat; strcat(icmat,['_L',num2str(ilag)])];
  aicmat = valtmat(find(ilag <= mmaxvlags(altorder)));
  hesvmat = [hesvmat; strcat(aicmat,['_L',num2str(ilag)])];
end;

jacvmat = [jacvmat; strcat(varcmat,'_0')];
hesvmat = [hesvmat; strcat(valtmat,'_0')];

maxlead = max(mmaxvleads);
for ilead = 1:maxlead,
  icmat = varcmat(find(ilead <= mmaxvleads));
  jacvmat  = [jacvmat; strcat(icmat,['_F',num2str(ilead)])];
  aicmat = valtmat(find(ilead <= mmaxvleads(altorder)));
  hesvmat = [hesvmat; strcat(aicmat,['_F',num2str(ilead)])];
end;

jacvmat = [jacvmat; shkcmat];
hesvmat = [hesvmat; shkcmat];

% Declare all parameters and variables as symbols 
% and then create symbolic equations and variable lists

parstring = cell2string(parcmat,' ');
varstring = cell2string(varcmat,'_0 ');
shkstring = cell2string(shkcmat,' ');
jacvstring = cell2string(jacvmat,' ');
hesvstring = cell2string(hesvmat,' ');

eval(['syms ',parstring,';']);
eval(['syms ',jacvstring,';']);
if ramsey_flag,
  eval(['syms ',util_vname_current,' ',welf_vname_current,';']);
end;

alleqns = cell2string(deblank(cellstr(alleqmat)),' ');
eval(alleqns);
eval(['eqns = [',eqlist,'];']);

eval(['parlist = [',parstring,'];']);
eval(['varlist = [',varstring,'];']);
eval(['jacvlist = [',jacvstring,'];']);
eval(['hesvlist = [',hesvstring,'];']);
eval(['shklist = [',shkstring,'];']);    
    
%% Part B: get_ramsey.m, with a few edits.

% The number of equations remaining in the model, after removing the policy
% rule, utility, and welfare equations for the foreign country, should
% equal the number of endogenous variables (from the perspective of the
% home country) minus one (for the home country's policy rule that will not
% be differentiated).

if nbehaveqs ~= nendog-rulecount+1,
  error('# Endogenous variables not equal to # Behavioral equations plus # policy instruments');
end;    
    
for il = 1:(maxlag+maxlead),
  eval(['syms ',cell2string(strcat(varcmat,['_L',num2str(il)]),' '),';']);
  eval(['syms ',cell2string(strcat(varcmat,['_F',num2str(il)]),' '),';']);
end;    
    
numlist = cellstr(deblank(strjust(num2str(behav_eqvec'),'left')));
lmulttype = cat(2,'c',num2str(c),'lmult');
lmultlist = strcat(lmulttype,numlist);
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
    lmvlist = strvcat(lmvlist,['c',num2str(c),'lmult',num2str(ieq),'_L',num2str(ilag)]);
    tmpeqstring = chgleadlag(-ilag,eqstring,maxeqlag,maxeqlead);
    eval(tmpeqstring);
  end;
  for ilead = 1:maxeqlag,
    lmvlist = strvcat(lmvlist,['c',num2str(c),'lmult',num2str(ieq),'_F',num2str(ilead)]);
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

  tmpstring = ['diff(Util',num2str(c),',',vname0,')'];
  lmss_string = tmpstring;
  foc_tstring = tmpstring;
  for jlag = 1:maxvleads(neqs-1,iv),
    tmpstring = ['diff(Lag',num2str(jlag),'_Util',c,', ',vname0,')'];
    foc_tstring = [foc_tstring,' + ((1/nbeta__)^',num2str(jlag),')*(',tmpstring,')'];
    lmss_string = [lmss_string,' + ((1/nbeta__)^',num2str(jlag),')*(',tmpstring,')']; 
  end;
  for jlead = 1:maxvlags(neqs-1,iv),
    tmpstring = char(eval(['diff(Lead',num2str(jlead),'_Util',c,', ',vname0,')']));
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
    foc_tstring = [foc_tstring,' + c',num2str(c),'lmult',num2str(jeq),'_0*(',tmpstring,')'];
    
    for klag = 1:maxvleads(jeq,iv),
      tmpstring = char(eval(['diff(Lag',num2str(klag),'_eq',num2str(jeq),', ',vname0,')']));
      lmss_string = [lmss_string,' + ((1/nbeta__)^',num2str(klag),')*(',tmpstring,')'];
      foc_tstring = [foc_tstring,' + ((1/nbeta__)^',num2str(klag),')', ...
                                      '*c',num2str(c),'lmult',num2str(jeq),'_L',num2str(klag),'*(',tmpstring,')'];
    end;
    for klead = 1:maxvlags(jeq,iv),
      tmpstring = char(eval(['diff(Lead',num2str(klead),'_eq',num2str(jeq),', ',vname0,')']));
      lmss_string = [lmss_string,' + (nbeta__^',num2str(klead),')*(',tmpstring,')'];
      foc_tstring = [foc_tstring,' + (nbeta__^',num2str(klead),')', ...
                                    '*c',num2str(c),'lmult',num2str(jeq),'_F',num2str(klead),'*(',tmpstring,')'];
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

varss_list = strcat(varcmat,'_SS');
lmss_list = strcat(lmultlist,'_SS');

% Eliminate all time subscripts from LM steady state coefficients

lmss_coefdefs = strrep(lmss_coefdefs,'_0','_SS');
for il = 1:(maxlag+maxlead),
  lmss_coefdefs = strrep(lmss_coefdefs,['_F',num2str(il)],'_SS');
  lmss_coefdefs = strrep(lmss_coefdefs,['_L',num2str(il)],'_SS');
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

eval(['rule',num2str(c),'startline = rulestartline;']);
eval(['rule',num2str(c),'stopline = rulestopline;']);

% Saving the list of Lagrangiam multipliers, steady states, and first order
% conditions.

if c == 1,
 c1lmultlist = lmultlist;
 c1lmss_list = lmss_list;
 c1focmat = focmat;
else,
 c2lmultlist = lmultlist;
 c2lmss_list = lmss_list;
 c2focmat = focmat;
end;

end;

%% Part C. write_ramsey.m, with slight edits.

% Write out Ramsey model to dynare .MOD file
% Assumes that rawfile, focmat, lmult_string, and lmult_initstr
% have been set by dynmod2sym and get_ramsey

% Confirm that modline, ruleline, endruleline, and endinitline
% have been determined by dynmod2sym

if ~modline | ~endinitline | ~rulecount,
  error('Key line in input file not found (modline, ruleline, or endinitline)');
end;


% Open output file (assumes that outfilename has been set)

outfid = fopen([outfilename,'.mod'],'w');

% Copy all lines of input file prior to "model" keyword

for iline = 1:(modline-1),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Declare lagrange multipliers as dynare endogenous variables
% and declare lagrange multiplier steady states as "parameters".

% Combining Lagrangian multipliers from both countries into one list.

delim = ', ';
endline = ' ';
lmultlist = vertcat(c1lmultlist,c2lmultlist);
lmss_list = vertcat(c1lmss_list,c2lmss_list);
writelist(outfid,'var',lmultlist,delim,endline);
writelist(outfid,'parameters',lmss_list,delim,endline);

% Copy all lines from "model" keyword until first policy rule equation

for iline = modline:rulestartline(1),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Write out Ramsey FOCs for country 1.

fprintf(outfid,'%s \n', '// Policymaker''s First-Order Conditions for Country 1');

for ifoc = 1:length(c1focmat),
  fprintf(outfid,'%s \n',char(c1focmat(ifoc)));
end;

% Pick up after first policy rule equation and copy all lines until second policy
% rule equation.

startline = rulestopline(1) + 1;

for iline = startline:rulestartline(2),
    fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Write out Ramsey FOCs for country 2.

fprintf(outfid,'%s \n', '// Policymaker''s First-Order Conditions for Country 2');

for ifoc = 1:length(c2focmat),
  fprintf(outfid,'%s \n',char(c2focmat(ifoc)));
end;

% Copy input file lines (not including any other simple policy equations)
% prior to the end of the variable initialization block

startline = rulestopline(2) + 1;

for iline = startline:(endinitline-1),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

% Write out initial guesses for Lagrange multipliers

for ilm = 1:length(lmultlist),
  lmname = char(lmultlist(ilm));
  lmult_initstr = [lmname,' = ',lmname,'_SS;'];
  fprintf(outfid,'%s \n',lmult_initstr);
end;

% Write out "end" keyword for initialization block,
% and then copy the rest of the input file

for iline = endinitline:length(rawfile),
  fprintf(outfid,'%s \n',char(rawfile(iline)));
end;

fclose(outfid);