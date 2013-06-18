


clear
setpathdynare4

%%%%%  REMEMBER %%%%%%%%%%%%%
% to set stochsimul to 2    %
% in the relevant .mod file %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%modnam1 = 'nonlinearnopot';
modnam_ramsey = 'nonlinearnopot_ramsey';
modnam_nash = 'nonlinearnopot_nash';

% Luca confirmed that if one chooses a long enough number of periods, our
% in-house moments match Dynare's moments.

% nperiods = 10000;
nperiods = 2;

% These .mod files have a log utility function so log_switch = 1.

log_switch = 1;

%% solve Ramsey model
eval(['dynare ',modnam_ramsey,' noclearall'])
Mramsey_ = M_;
ooramsey_ = oo_;


order = 2;

Welf1_ramseymean = oo_.mean(strmatch('Welf1',Mramsey_.endo_names,'exact'));
Welf2_ramseymean = oo_.mean(strmatch('Welf2',Mramsey_.endo_names,'exact'));


s = mymkdata2(Mramsey_,ooramsey_,nperiods,order);
Welf1_ramseymean2 = mean(s.Welf1_irf(floor(nperiods)/2:end))+s.Welf1_ss;
Welf2_ramseymean2 = mean(s.Welf2_irf(floor(nperiods)/2:end))+s.Welf2_ss;



%% solve Nash model
eval(['dynare ',modnam_nash,' noclearall'])
Mnash_ = M_;
oonash_ = oo_;

Welf1_nashmean = oo_.mean(strmatch('Welf1',Mnash_.endo_names,'exact'));
Welf2_nashmean = oo_.mean(strmatch('Welf2',Mnash_.endo_names,'exact'));

if ~log_switch
 Welf1_c_nashmean = oo_.mean(strmatch('Welf1_c',Mnash_.endo_names,'exact'));
 Welf1_l_nashmean = oo_.mean(strmatch('Welf1_l',Mnash_.endo_names,'exact'));
end;



s = mymkdata2(Mnash_,oonash_,nperiods,order);
Welf1_nashmean2 = mean(s.Welf1_irf(floor(nperiods)/2:end))+s.Welf1_ss;
Welf2_nashmean2 = mean(s.Welf2_irf(floor(nperiods)/2:end))+s.Welf2_ss;

if ~log_switch
 Welf1_c_nashmean2 = mean(s.Welf1_c_irf(floor(nperiods)/2:end))+s.Welf1_ss;
 Welf1_l_nashmean2 = mean(s.Welf1_l_irf(floor(nperiods)/2:end))+s.Welf1_ss;
end;

%%
nparams = length(M_.params);
for i=1:nparams
    eval([M_.param_names(i,:),'=M_.params(',num2str(i),');']) 
end


params_policy

% The value of 1.1 for gamma is set from Benigno / Benigno (2005).
% Note that the following (which is currently commented out) is the
% compensating variation in consumption for the utility preferences from
% the general utility specification rather than the log case.

% The following is the compensating variation in consumption for the
% utility preferences from the log case. If we want to calculate the
% compensating variation in consumption in the general case, then we need
% to supplement the _ramsey.mod and _nash.mod files to have auxiliary
% variables for the portions of utility that contributes to consumption and
% to labor.



 tau = 100*(exp((1-c1beta)*(Welf1_ramseymean + Welf2_ramseymean - Welf1_nashmean - Welf2_nashmean)) - 1);
 tau2 = 100*(exp((1-c1beta)*(Welf1_ramseymean2 + Welf2_ramseymean2 - Welf1_nashmean2 - Welf2_nashmean2)) - 1);
