


clear
setpathdynare4

%%%%%  REMEMBER %%%%%%%%%%%%%
% to set stochsimul to 2    %
% in the relevant .mod file %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%modnam1 = 'nonlinearnopot';
modnam_ramsey = 'nonlinearnopot_ramsey';
modnam_nash = 'nonlinearnopot_nash';


nperiods = 10000;



%% solve Ramsey model
eval(['dynare ',modnam_ramsey,' noclearall'])
Mramsey_ = M_;
ooramsey_ = oo_;


order = 2;

Welframsey_mean = oo_.mean(strmatch('Welf',Mramsey_.endo_names,'exact'));

s = mymkdata2(Mramsey_,ooramsey_,nperiods,order);
Welframsey_mean2 = mean(s.Welf_irf(floor(nperiods)/2:end))+s.Welf_ss;



%% solve Nash model
eval(['dynare ',modnam_nash,' noclearall'])
Mnash_ = M_;
oonash_ = oo_;

Welf1_mean = oo_.mean(strmatch('Welf1',Mnash_.endo_names,'exact'));
Welf2_mean = oo_.mean(strmatch('Welf2',Mnash_.endo_names,'exact'));


s = mymkdata2(Mnash_,oonash_,nperiods,order);
Welf1_mean2 = mean(s.Welf1_irf(floor(nperiods)/2:end))+s.Welf1_ss;
Welf2_mean2 = mean(s.Welf2_irf(floor(nperiods)/2:end))+s.Welf2_ss;
%%
nparams = length(M_.params);
for i=1:nparams
    eval([M_.param_names(i,:),'=M_.params(',num2str(i),');']) 
end


params_policy


Welfnash_mean = omega_welf1*Welf1_mean + omega_welf2*Welf2_mean; 
Welfnash_mean2 = omega_welf1*Welf1_mean2 + omega_welf2*Welf2_mean2;



% Welfare difference in consumption units
muctimesc = (exp(s.c1muc_ss)*exp(s.c1c_ss)-c1vkappa/c1grmuzss*exp(s.c1c_ss))^(-1)*exp(s.c1c_ss)/(1-c1beta);

cons_equiv = (Welframsey_mean-Welfnash_mean)/muctimesc*100
cons_equiv2 = (Welframsey_mean2-Welfnash_mean2)/muctimesc*100