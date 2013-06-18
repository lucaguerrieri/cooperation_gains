closed_economy_paramfile

omega_cc_p = 0.8; 
% omega_cc_p = .8;
rho_cc_p = 0.2857;
% el = 1.5;   % trade elasticity of substitution
%  rho_cc_p = 1/(el-1);
phi_nfa_p = 0.01;
omega_welf1 = .5;
omega_welf2 = 1 - omega_welf1;
xi2_p = .75;
% xi2_p = xi_p;
kappa2_p = (1-beta_p*xi2_p)*(1-xi2_p)/xi2_p;
phi2_p = (1+theta_p)/theta_p/tau_p/kappa2_p;


muc2_ss = 0;
theta2_ss = 0;
labor2_ss = 1;
phi2_ss = 0;
dphidp2_ss = 0;
dphidlp2_ss = 0;
infl2_ss = 1;
r_price_cc_ss = 1;
r_price_cc2_ss = 1;
r_exchg_ss = 1;
sigma2_ss = 1;

r_exchg2_ss = 1/r_exchg_ss;
rate2_ss = 1/beta_p-1;

gdp2_ss = labor2_ss; 
gov2_ss = 0.2*gdp2_ss;
cc2_ss = gdp2_ss-gov2_ss;
cc_m_ss = (1-omega_cc_p)* cc_ss;
cc_d_ss = (omega_cc_p)* cc_ss;
cc_m2_ss = (1-omega_cc_p)* cc2_ss;
cc_d2_ss = (omega_cc_p)* cc2_ss;  

Util2_ss = (cc2_ss^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor2_ss^(1+chi_p)/(1+chi_p);
Welf2_ss = Util2_ss/(1-beta_p);
wages2_ss=labor2_ss;


tau_l2_ss = gov2_ss/(wages2_ss*labor2_ss);


nfa_ss = 0;
phi_nfa_ss = 1;
rate1_ss = rate_ss;

Util1_ss = Util_ss;
Welf1_ss = Welf_ss;

Util_ss = omega_welf1*Util1_ss + omega_welf2*Util2_ss;
Welf_ss = Util_ss/(1-nbeta);

infl1_ss = infl_ss;