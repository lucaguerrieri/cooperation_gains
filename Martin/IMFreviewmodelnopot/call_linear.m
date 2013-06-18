clear
setpathdynare4

modnam1 = 'nonlinearnopot';
modnam2 = 'nonlinearnopot_ramsey';
modnam3 = 'nonlinearnopot_nash';


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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Model 1
% ! copy closed_economy_paramfile_baseline.m closed_economy_paramfile.m
% solve model
eval(['dynare ',modnam1,' noclearall'])
M1_ = M_;
oo1_ = oo_;
ys1 = oo1_.dr.ys;



eval(['dynare ',modnam2,' noclearall'])
M2_ = M_;
oo2_ = oo_;
ys2 = oo2_.dr.ys;



eval(['dynare ',modnam3,' noclearall'])
M3_ = M_;
oo3_ = oo_;
ys3 = oo3_.dr.ys;


%% generate model IRFs

[f1] = makeirfsecondorder(M1_,oo1_,nperiods,shocks,1);
[f2] = makeirfsecondorder(M2_,oo2_,nperiods,shocks,1);
[f3] = makeirfsecondorder(M3_,oo3_,nperiods,shocks,1);

figlabel = '';
percent = '% dev. from steady state';

titlelist = char('Gross Output','Consumption','Investment','Real Exchange Rate');
ylabels = char(percent, percent, percent, percent);
legendlist = char('Instrument Rule','Ramsey Policy -- Coordination','Ramsey Policy -- Nash');

line1 = 100*[f1.c1y_irf, f1.c1c_irf, f1.c1i_irf, f1.c1rer_irf,f1.c1rer_irf];
line2 = 100*[f2.c1y_irf, f2.c1c_irf, f2.c1i_irf, f2.c1rer_irf,f2.c1rer_irf];
line3 = 100*[f3.c1y_irf, f3.c1c_irf, f3.c1i_irf, f3.c1rer_irf,f3.c1rer_irf];

makechart(titlelist,legendlist,figlabel,ylabels,line1,line2,line3);
      
      