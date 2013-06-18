// A New Keynesian Model  
 
// Endogenous variables 
var cc, rate1, infl, sigma, gdp,  
    phi, dphidp, dphidlp, 
    labor, wages, Util1, Welf1, cc_d, cc_m, r_price_cc, r_exchg, nfa,  
    cc2, rate2, infl2, sigma2, gdp2, 
    phi2, dphidp2, dphidlp2, 
    labor2, wages2, Util2, Welf2, cc_d2, cc_m2, r_price_cc2, r_exchg2, 
    tau_l, tau_l2, phi_nfa, Util, Welf; 
 
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
 
var lmult1,  lmult2,  lmult3,  lmult4,  lmult5,  lmult6,  lmult7,   
    lmult8,  lmult9,  lmult10,  lmult11,  lmult12,  lmult13,  lmult14,   
    lmult15,  lmult16,  lmult17,  lmult18,  lmult19,  lmult20,  lmult21,   
    lmult22,  lmult23,  lmult24,  lmult25,  lmult26,  lmult27,  lmult28,   
    lmult29,  lmult30,  lmult31,  lmult32,  lmult33,  lmult34; 
  
model; 
 
Util = omega_welf1*Util1 + omega_welf2*Util2; 
Welf = Util + nbeta*Welf(1); 
 
// Utility, country 1 
Util1 = ((cc-muc)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor^(1+chi_p)/(1+chi_p); 
 
// Welfare, country 1 
Welf1 = Util1 + nbeta*Welf1(1); 
 
// Utility, country 2 
Util2 = ((cc2-muc2)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor2^(1+chi_p)/(1+chi_p); 
 
// Welfare, country 2 
Welf2 = Util2+ nbeta*Welf2(1); 
 
// Policymaker's First-Order Conditions 
lmult25 - lmult1/(cc - muc)^gamma_p - lmult23*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p) + lmult24*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*gamma_p*lmult5*r_price_cc*(cc - muc)^(gamma_p - 1))/(infl(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (gamma_p*lmult15*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^(gamma_p + 1)) - (beta_p*gamma_p*lmult5(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl*nbeta*r_price_cc*(cc - muc)^(gamma_p + 1)); 
lmult28 - lmult3/(cc2 - muc2)^gamma_p - lmult26*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p) + lmult27*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*gamma_p*lmult6*r_price_cc2*(cc2 - muc2)^(gamma_p - 1))/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (gamma_p*lmult16*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)) - (beta_p*gamma_p*lmult6(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)); 
lmult23 - lmult21 - cc_d^(1/(rho_cc_p + 1) - 1)*lmult25*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
lmult26 - lmult22 - cc_d2^(1/(rho_cc_p + 1) - 1)*lmult28*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
lmult24 - lmult22 + (lmult32*r_exchg)/gdp - cc_m^(1/(rho_cc_p + 1) - 1)*lmult25*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
lmult27 - lmult21 - lmult32/gdp - cc_m2^(1/(rho_cc_p + 1) - 1)*lmult28*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
lmult11 + (gdp*lmult7(-1)*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)); 
lmult14 + (gdp2*lmult8(-1)*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
lmult10 + gdp*lmult7*(tau_p - sigma + 1); 
lmult13 + gdp2*lmult8*(tau_p - sigma2 + 1); 
lmult19 + lmult21 + lmult32*((cc_m2 - cc_m*r_exchg)/gdp^2 + (gdp(-1)*nfa(-1)*r_exchg)/(gdp^2*infl2*r_exchg(-1))) - lmult7*((phi - 1)*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p) - dphidp*(tau_p - sigma + 1)) + (dphidlp*lmult7(-1)*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)) - (lmult32(+1)*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
lmult20 + lmult22 - lmult8*((phi2 - 1)*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p) - dphidp2*(tau_p - sigma2 + 1)) + (dphidlp2*lmult8(-1)*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
lmult11*((infl^2*phi_p)/infl_ss^2 + (2*infl*phi_p*(infl/infl_ss - 1))/infl_ss) - lmult10*((infl*phi_p)/infl_ss^2 + (phi_p*(infl/infl_ss - 1))/infl_ss) - (lmult9*phi_p*(infl/infl_ss - 1))/infl_ss - (lmult29(-1)*r_exchg)/(infl2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) - (beta_p*lmult5(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl^2*nbeta*r_price_cc*(cc - muc)^gamma_p); 
lmult14*((infl2^2*phi2_p)/infl_ss^2 + (2*infl2*phi2_p*(infl2/infl_ss - 1))/infl_ss) - lmult13*((infl2*phi2_p)/infl_ss^2 + (phi2_p*(infl2/infl_ss - 1))/infl_ss) - (lmult12*phi2_p*(infl2/infl_ss - 1))/infl_ss + (infl*lmult29(-1)*r_exchg)/(infl2^2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) + (gdp(-1)*lmult32*nfa(-1)*r_exchg)/(gdp*infl2^2*r_exchg(-1)) - (beta_p*lmult6(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2^2*nbeta*r_price_cc2*(cc2 - muc2)^gamma_p); 
lmult15 - lmult19*exp(theta) + chi0_p*labor^chi_p*lmult1 - lmult33*tau_l*wages; 
lmult16 - lmult20*exp(theta2) + chi0_p*labor2^chi_p*lmult3 - lmult34*tau_l2*wages2; 
lmult32/(phi_nfa*(rate2 + 1)) + lmult30(+1)*nbeta*phi_nfa_p*exp(-nfa*phi_nfa_p) - (gdp*lmult32(+1)*nbeta*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
lmult9 - gdp*lmult7*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p); 
lmult12 - gdp2*lmult8*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p); 
lmult30 - lmult29/(phi_nfa^2*(rate2 + 1)) - (lmult32*nfa)/(phi_nfa^2*(rate2 + 1)); 
lmult5/(rate1 + 1)^2 - (dphidlp(+1)*gdp(+1)*lmult7*(tau_p - sigma(+1) + 1))/(rate1 + 1)^2 + (infl(+1)*lmult29*r_exchg(+1))/(infl2(+1)*r_exchg*(rate1 + 1)^2); 
lmult6/(rate2 + 1)^2 - lmult29/(phi_nfa*(rate2 + 1)^2) - (lmult32*nfa)/(phi_nfa*(rate2 + 1)^2) - (dphidlp2(+1)*gdp2(+1)*lmult8*(tau_p - sigma2(+1) + 1))/(rate2 + 1)^2; 
lmult31 + lmult32*(cc_m/gdp - (gdp(-1)*nfa(-1))/(gdp*infl2*r_exchg(-1))) + (infl(+1)*lmult29*r_exchg(+1))/(infl2(+1)*r_exchg^2*(rate1 + 1)) - (infl*lmult29(-1))/(infl2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) - (cc*lmult24*r_price_cc*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg^2*rho_cc_p) + (gdp*lmult32(+1)*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg^2); 
lmult31/r_exchg2^2 - (cc2*lmult27*r_price_cc2*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2^2*rho_cc_p); 
(beta_p*lmult5*(cc - muc)^gamma_p)/(infl(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (cc*lmult23*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (cc*lmult24*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg*rho_cc_p) - (beta_p*lmult5(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl*nbeta*r_price_cc^2*(cc - muc)^gamma_p) - (lmult15*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc^2*(cc - muc)^gamma_p); 
(beta_p*lmult6*(cc2 - muc2)^gamma_p)/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (cc2*lmult26*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (cc2*lmult27*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2*rho_cc_p) - (beta_p*lmult6(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2^2*(cc2 - muc2)^gamma_p) - (lmult16*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2^2*(cc2 - muc2)^gamma_p); 
lmult17 - lmult7*(dphidp*gdp - (gdp*(phi - 1)*(theta_p + 1))/theta_p) - (dphidlp*gdp*lmult7(-1))/(nbeta*(rate1(-1) + 1)); 
lmult18 - lmult8*(dphidp2*gdp2 - (gdp2*(phi2 - 1)*(theta_p + 1))/theta_p) - (dphidlp2*gdp2*lmult8(-1))/(nbeta*(rate2(-1) + 1)); 
(lmult15*wages*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - labor*lmult33*wages; 
(lmult16*wages2*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - labor2*lmult34*wages2; 
lmult1 - lmult2 + omega_welf1; 
lmult3 - lmult4 + omega_welf2; 
(lmult15*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - labor*lmult33*tau_l - lmult17*exp(-theta); 
(lmult16*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - labor2*lmult34*tau_l2 - lmult18*exp(-theta2); 
lmult2 - lmult2(-1); 
lmult4 - lmult4(-1); 
 
 
//consumption Euler equations 
beta_p*(r_price_cc/r_price_cc(1)/infl(1))*(cc(1) - muc(1))^(-gamma_p)/(cc-muc)^(-gamma_p) = 1/(1 + rate1); 
beta_p*(r_price_cc2/r_price_cc2(1)/infl2(1))*(cc2(1) - muc2(1))^(-gamma_p)/(cc2-muc2)^(-gamma_p) = 1/(1+rate2); 
 
//price setting 
0 = (-(1+tau_p)/theta_p + sigma*(1 + theta_p)/theta_p)*(1-phi)*gdp 
    - ((1 + tau_p) - sigma)*gdp*dphidp 
    - (1/(1+rate1))*((1+tau_p) - sigma(1))*gdp(1)*dphidlp(1); 
 
0 = (-(1+tau_p)/theta_p + sigma2*(1 + theta_p)/theta_p)*(1-phi2)*gdp2 
    - ((1 + tau_p) - sigma2)*gdp2*dphidp2 
    - (1/(1+rate2))*((1+tau_p) - sigma2(1))*gdp2(1)*dphidlp2(1); 
 
//price adjustment costs 
phi = (phi_p/2)*(infl/infl_ss - 1)^2; 
dphidp = phi_p*(infl/infl_ss - 1)*infl/infl_ss; 
dphidlp = -phi_p*(infl/infl_ss - 1)*infl^2/infl_ss; 
 
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
1/(phi_nfa*(1+rate2)) =  infl(1)/(1+rate1)*r_exchg(1)/r_exchg/infl2(1); 
 
 
// costs for foreign bond holding 
phi_nfa = exp(-phi_nfa_p*(nfa(-1))); 
 
//Relation between real exchange rates 
r_exchg = 1/r_exchg2; 
 
////Net foreign assets condition. 
1/(phi_nfa*(1+rate2))*nfa-r_exchg/r_exchg(-1)/infl2*nfa(-1)*gdp(-1)/gdp = (cc_m2-r_exchg*cc_m)/gdp; 
 
// Risk-sharing condition. 
// r_exchg*r_price_cc2/r_price_cc = ((cc - muc)/(cc2 - muc2))^(gamma_p); 
 
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
 
 
stoch_simul(order=2,nocorr,nomoments,irf=0); 
 
