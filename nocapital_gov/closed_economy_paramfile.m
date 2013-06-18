beta_p = .99; 
gamma_p = 1.1;  
% gamma_p = .01;
delta_p = .025; 
gamma_pi_p = 1.5;  
psi_p = 0; 
theta_p = 0.11;
% theta_p = .1;
xi_p = 0.66;
%xi_p = 2;
% xi_p = .75;
alpha_p = 0.01;
% alpha_p = .3;
rho_theta_p = .90; 
rho_muc_p = .90; 
rs_rsl_p = 0;
rs_dp_p = 2;
rs_gdp_p = 0;
chi_p = .47;

nbeta = beta_p; 
tau_p = theta_p; 
kappa_p = (1-beta_p*xi_p)*(1-xi_p)/xi_p;
phi_p = (1+theta_p)/theta_p/tau_p/kappa_p;

muc_ss = 0;
theta_ss = 0;
infl_ss = 1; 
labor_ss = 1;
rate_ss = 1/beta_p-1; 
sigma_ss = 1;
gdp_ss = labor_ss; 
gov_ss = 0.2*gdp_ss;
cc_ss = gdp_ss-gov_ss;
phi_ss = 0;
dphidp_ss = 0;
dphidlp_ss = 0;
wages_ss = labor_ss;
tau_l_ss = gov_ss/(wages_ss*labor_ss);
chi0_p = wages_ss*(1-tau_l_ss)/(labor_ss^chi_p)*cc_ss^-gamma_p;


rho_gov_p = .9;

Util_ss = (cc_ss^(1-gamma_p)-1)/(1-gamma_p) - chi0_p*labor_ss^(1+chi_p)/(1+chi_p);
Welf_ss = Util_ss/(1-beta_p);


