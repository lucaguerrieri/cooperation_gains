// A New Keynesian Model 

// Endogenous variables
var cc, rate1, infl1, sigma, gdp, 
    phi, dphidp, dphidlp,
    labor, wages, Util1, Welf1, cc_d, cc_m, r_price_cc, r_exchg,
    cc2, rate2, infl2, sigma2, gdp2,
    phi2, dphidp2, dphidlp2,
    labor2, wages2, Util2, Welf2, cc_d2, cc_m2, r_price_cc2, r_exchg2,
    tau_l, tau_l2;

// 1 domestic interest rate
// 1 foreign interest rate
// 4 Util/Welf equations (disregarded, except for home Utility which is used in the FOC)

// Exogenous variables 
var muc, theta, muc2, theta2, gov, gov2;

varexo muc_err, theta_err, gov_err, muc2_err, theta2_err, gov2_err;

parameters gamma_p, delta_p, gamma_pi_p, psi_p, beta_p, tau_p, theta_p,
         xi_p, phi_p,  alpha_p, rho_theta_p, rho_muc_p, nbeta, kappa_p,
         rs_rsl_p, rs_dp_p, rs_gdp_p, chi0_p, chi_p,
         omega_cc_p, rho_cc_p, phi_nfa_p, omega_welf1, omega_welf2,
         xi2_p, kappa2_p, phi2_p, rho_gov_p,
         cc_ss, rate_ss, infl_ss, sigma_ss,
         gdp_ss, phi_ss, dphidp_ss, dphidlp_ss, labor_ss, wages_ss,
         Util_ss, Welf_ss, muc_ss, theta_ss,
         cc2_ss, rate2_ss, infl2_ss, sigma2_ss,
         gdp2_ss, phi2_ss, dphidp2_ss, dphidlp2_ss, labor2_ss, wages2_ss,
         Util2_ss, Welf2_ss, muc2_ss, theta2_ss,
         tau_l_ss, tau_l2_ss, gov_ss, gov2_ss;

model;

// Utility, country 1
Util1 = ((cc-muc)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor^(1+chi_p)/(1+chi_p);
// Welfare, country 1
Welf1 = Util1 + nbeta*Welf1(1);

// Utility, country 2
Util2 = ((cc2-muc2)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor2^(1+chi_p)/(1+chi_p);
// Welfare, country 2
Welf2 = Util2+ nbeta*Welf2(1);

// Policy Rule, country 1
infl1 = 1;

// Policy Rule, country 2
infl2 = 1;

//consumption Euler equations
beta_p*(r_price_cc/r_price_cc(1)/infl1(1))*(cc(1) - muc(1))^(-gamma_p)/(cc-muc)^(-gamma_p) = 1/(1 + rate1);
beta_p*(r_price_cc2/r_price_cc2(1)/infl2(1))*(cc2(1) - muc2(1))^(-gamma_p)/(cc2-muc2)^(-gamma_p) = 1/(1+rate2);

//price setting
0 = (-(1+tau_p)/theta_p + sigma*(1 + theta_p)/theta_p)*(1-phi)*gdp
    - ((1 + tau_p) - sigma)*gdp*dphidp
    - (1/(1+rate1))*((1+tau_p) - sigma(1))*gdp(1)*dphidlp(1);

0 = (-(1+tau_p)/theta_p + sigma2*(1 + theta_p)/theta_p)*(1-phi2)*gdp2
    - ((1 + tau_p) - sigma2)*gdp2*dphidp2
    - (1/(1+rate2))*((1+tau_p) - sigma2(1))*gdp2(1)*dphidlp2(1);

//price adjustment costs
phi = (phi_p/2)*(infl1/infl_ss - 1)^2;
dphidp = phi_p*(infl1/infl_ss - 1)*infl1/infl_ss;
dphidlp = -phi_p*(infl1/infl_ss - 1)*infl1^2/infl_ss;

phi2 = (phi2_p/2)*(infl2/infl_ss - 1)^2;
dphidp2 = phi2_p*(infl2/infl_ss - 1)*infl2/infl_ss;
dphidlp2 = -phi2_p*(infl2/infl_ss - 1)*infl2^2/infl_ss;

//FOC of firms' constraint w/r/t labor
labor = ((1-tau_l)*(cc-muc)^(-gamma_p)*wages/r_price_cc/chi0_p)^(1/chi_p);
labor2 = ((1-tau_l2)*(cc2-muc2)^(-gamma_p)*wages2/r_price_cc2/chi0_p)^(1/chi_p);

//marginal cost of labor
sigma = wages/(exp(theta));
sigma2 = wages2/(exp(theta2));

//Production technology
gdp = exp(theta)*labor;
gdp2 = exp(theta2)*labor2;

//Resource constraint
gdp = cc_d + cc_m2 + gov;
gdp2 = cc_d2 + cc_m + gov2;

//FOCs from minimizing costs from aggregate consumption function.
cc_d = cc*omega_cc_p*(r_price_cc^((1+rho_cc_p)/rho_cc_p));
cc_m = cc*(1-omega_cc_p)*(r_price_cc/r_exchg)^((1+rho_cc_p)/rho_cc_p);
cc = (omega_cc_p^(rho_cc_p/(1+rho_cc_p))*cc_d^(1/(1+rho_cc_p)) + (1 - omega_cc_p)^(rho_cc_p/(1+rho_cc_p))*cc_m^(1/(1+rho_cc_p)))^(1+rho_cc_p);

cc_d2 = cc2*omega_cc_p*(r_price_cc2^((1+rho_cc_p)/rho_cc_p));
cc_m2 = cc2*(1-omega_cc_p)*(r_price_cc2/r_exchg2)^((1+rho_cc_p)/rho_cc_p);
cc2 = (omega_cc_p^(rho_cc_p/(1+rho_cc_p))*cc_d2^(1/(1+rho_cc_p)) + (1 - omega_cc_p)^(rho_cc_p/(1+rho_cc_p))*cc_m2^(1/(1+rho_cc_p)))^(1+rho_cc_p);

//Uncovered interest rate parity condition.
//1/(phi_nfa*(1+rate2)) =  infl1(1)/(1+rate1)*r_exchg(1)/r_exchg/infl2(1);


// costs for foreign bond holding
//phi_nfa = exp(-phi_nfa_p*(nfa));

//Relation between real exchange rates
r_exchg = 1/r_exchg2;

////Net foreign assets condition.
//1/(phi_nfa*(1+rate2))*nfa-r_exchg/r_exchg(-1)/infl2*nfa(-1)*gdp(-1)/gdp = (cc_m2-r_exchg*cc_m)/gdp;

// Risk-sharing condition.
r_exchg*r_price_cc2/r_price_cc = ((cc - muc)/(cc2 - muc2))^(gamma_p);

// Government spending equals revenues from the preference-distorting labor tax.
gov = tau_l*wages*labor;
gov2 = tau_l2*wages2*labor2;

// Law of motion of government spending.
gov - gov_ss = rho_gov_p*(gov(-1) - gov_ss) + gov_err;
gov2 - gov2_ss = rho_gov_p*(gov2(-1) - gov2_ss) + gov2_err;

//Exogenous shocks to technology and consumption, respectively.
theta = rho_theta_p*theta(-1) + theta_err;
muc = rho_muc_p*muc(-1) + muc_err;
theta2 = rho_theta_p*theta2(-1) + theta2_err;
muc2 = rho_muc_p*muc2(-1) + muc2_err;



end;

//////
//////

//shocks;
//var theta_err; stderr .01;
//var muc_err; stderr .01;
//var gov_err; stderr .01;
//end;

check;

stoch_simul(order=2,nocorr,nomoments,irf=0);

