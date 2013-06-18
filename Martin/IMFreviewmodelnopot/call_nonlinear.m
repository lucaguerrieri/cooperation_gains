clear
setpathdynare4

%%%%%  REMEMBER %%%%%%%%%%%%%
% to set stochsimul to 2    %
% in the relevant .mod file %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

modnam1 = 'nonlinearnopot';
% modnam1 = 'nonlinearnopot_ramsey';
% modnam1 = 'nonlinearnopot_nash';


nperiods = 100;

% needs to follow the definition order in the .mod file
shocks = [
0% c1shockgyerr  
0% c1zcerr       
0% c1zierr       
0% c1yoerr       
0% c1muocerr     
0% c1mucerr      
0% c1omegacmerr  
0% c2shockgyerr  
0% c2zcerr       
0% c2zierr       
0% c2yoerr       
0% c2muocerr        
0% c2mucerr      
0% c2omegacmerr  
% 0% c1zwerr       
% 0% c1muowerr     
0% c2thetapvarerr
1% c1thetapvarerr
0% c2thetawvarerr
0% c1thetawvarerr
0% c1pitarerr
0% c2pitarerr
];



% % Model 1
% ! copy closed_economy_paramfile_baseline.m closed_economy_paramfile.m
% solve model
eval(['dynare ',modnam1,' noclearall'])
M1_ = M_;
oo1_ = oo_;
ys1 = oo1_.dr.ys;



%% generate model IRFs

[f1] = makeirfsecondorder(M1_,oo1_,nperiods,shocks,1);
[f2] = makeirfsecondorder(M1_,oo1_,nperiods,shocks,2);

figlabel = '';
percent = 'Percent';

titlelist = char('Gross Output','Consumption','Investment','Real Exchange Rate');
ylabels = char(percent, percent, percent, percent);
legendlist = char('First-Order Sol., dev. from Nonstochastic SS','Second-Order Sol., dev. from Stochastic Fixed Pt.');

line1 = 100*[f1.c1y_irf, f1.c1c_irf, f1.c1i_irf, f1.c1rer_irf,f1.c1rer_irf];
line2 = 100*[f2.c1y_irf, f2.c1c_irf, f2.c1i_irf, f2.c1rer_irf,f2.c1rer_irf];

makechart(titlelist,legendlist,figlabel,ylabels,line1,line2);
      
      