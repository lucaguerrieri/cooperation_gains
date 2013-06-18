clear
clear global

global paramlist params param_switch
%%%%%%%%%%%%%%%%%   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
restoredefaultpath

setpathdynare4
%dynare nonlinearnopot % model with no investment adjustment costs
%dynare nonlinearnopotcomp % model with no investment adjustment costs
%dynare nonlinearnopot_ramsey % model with no investment adjustment costs
%dynare nonlinearnopot_nash % model with no investment adjustment costs

%dynare nonlinearnopotcomp_ramsey % model with no investment adjustment costs
dynare nonlinearnopotcomp_nash % model with no investment adjustment costs

%extract relevant objects from solution 
lgx_ = M_.exo_names;
lgy_ = M_.endo_names;
dr_ = oo_.dr;
ys_ = oo_.dr.ys;


%%%% Make figure to compare simulations to first and second order
shock = [
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

shock = 0*shock;
for ishock = 18 %1:length(shock)-2
shock(ishock) = 1;
    
nperiods = 20;
dset = 'f1';        
makeirf

% dset = 'f2';
% makeirfsecondorder

percent = 'Percent';
ppt = 'Percentage Point';

titlelist = char('Gross Output','Consumption','Investment','Real Exchange Rate');
ylabels = char(percent, percent, percent, percent);
legendlist = char('First order');
% legendlist = char('First order','Second order');
figlabel = 'Home technology shock';

% makechart is a function that facilitates plotting.
% it sits in the plot_support subdirectory.
makechart(titlelist,legendlist,figlabel,ylabels,...
          100*[f1_c1y_irf, f1_c1c_irf, f1_c1i_irf, f1_c1rer_irf]);
%           100*[f1_c1y_irf, f1_c1deltad_irf, f1_c1rpwopd_irf, f1_c1ow_irf],...
%           100*[f2_c1y_irf, f2_c1deltad_irf, f2_c1rpwopd_irf, f2_c1ow_irf])

end

% %%%% Make figure to compare simulations to first and second order
% shock = [
% 0% c1shockgyerr  
% -1% c1zcerr       
% 0% c1zierr       
% 0% c1yoerr       
% 0% c1muocerr     
% 0% c1mucerr      
% 0% c1omegacmerr  
% 0% c2shockgyerr  
% 0% c2zcerr       
% 0% c2zierr       
% 0% c2yoerr       
% 0% c2muocerr        
% 0% c2mucerr      
% 0% c2omegacmerr  
% % 0% c1zwerr       
% % 0% c1muowerr     
% 0% c2thetapvarerr
% 0% c1thetapvarerr
% 0% c2thetawvarerr
% 0% c1thetawvarerr
% 0% c1pitarerr    
% 0% c2pitarerr
% ];
% 
% nperiods = 20;
% dset = 'f1';        
% makeirf
% 
% % dset = 'f2';
% % makeirfsecondorder
% 
% percent = 'Percent';
% ppt = 'Percentage Point';
% 
% % titlelist = char('Gross Output','Consumption','Real Oil Price','Oil Demand');
% % ylabels = char(percent, percent, percent, percent);
% % legendlist = char('First order');
% % % legendlist = char('First order','Second order');
% % figlabel = 'Foreign oil demand shock';
% % 
% % % makechart is a function that facilitates plotting.
% % % it sits in the plot_support subdirectory.
% % makechart(titlelist,legendlist,figlabel,ylabels,...
% %           100*[f1_c1y_irf, f1_c1deltad_irf, f1_c1rpwopd_irf, f1_c1ow_irf]);
% % %           100*[f1_c1y_irf, f1_c1deltad_irf, f1_c1rpwopd_irf, f1_c1ow_irf],...
% % %           100*[f2_c1y_irf, f2_c1deltad_irf, f2_c1rpwopd_irf, f2_c1ow_irf])
% 
% 
% titlelist = char('Gross Output','Consumption','Investment','Real Exchange Rate');
% ylabels = char(percent, percent, percent, percent);
% legendlist = char('First order');
% % legendlist = char('First order','Second order');
% figlabel = 'Home technology shock';
% 
% % makechart is a function that facilitates plotting.
% % it sits in the plot_support subdirectory.
% makechart(titlelist,legendlist,figlabel,ylabels,...
%           100*[f1_c1y_irf, f1_c1c_irf, f1_c1i_irf, f1_c1rer_irf]);
% %           100*[f1_c1y_irf, f1_c1deltad_irf, f1_c1rpwopd_irf, f1_c1ow_irf],...
% %           100*[f2_c1y_irf, f2_c1deltad_irf, f2_c1rpwopd_irf, f2_c1ow_irf])
% 
%       
%       
      