// A New Keynesian Model  
 
// Endogenous variables 
var cc, rate1, infl1, sigma, gdp,  
    phi, dphidp, dphidlp, 
    labor, wages, Util1, Welf1, cc_d, cc_m, r_price_cc, r_exchg, nfa,  
    cc2, rate2, infl2, sigma2, gdp2, 
    phi2, dphidp2, dphidlp2, 
    labor2, wages2, Util2, Welf2, cc_d2, cc_m2, r_price_cc2, r_exchg2, 
    tau_l, tau_l2, gov, gov2, phi_nfa; 
 
// 1 domestic interest rate 
// 1 foreign interest rate 
// 4 Util/Welf equations (disregarded, except for home Utility which is used in the FOC) 
 
// Exogenous variables  
var muc, theta, muc2, theta2; 
 
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
 
var c1lmult1,  c1lmult2,  c1lmult3,  c1lmult4,  c1lmult5,  c1lmult6,   
    c1lmult7,  c1lmult8,  c1lmult9,  c1lmult10,  c1lmult11,  c1lmult12,   
    c1lmult13,  c1lmult14,  c1lmult15,  c1lmult16,  c1lmult17,  c1lmult18,   
    c1lmult19,  c1lmult20,  c1lmult21,  c1lmult22,  c1lmult23,  c1lmult24,   
    c1lmult25,  c1lmult26,  c1lmult27,  c1lmult28,  c1lmult29,  c1lmult30,   
    c1lmult31,  c1lmult32,  c2lmult1,  c2lmult2,  c2lmult3,  c2lmult4,   
    c2lmult5,  c2lmult6,  c2lmult7,  c2lmult8,  c2lmult9,  c2lmult10,   
    c2lmult11,  c2lmult12,  c2lmult13,  c2lmult14,  c2lmult15,  c2lmult16,   
    c2lmult17,  c2lmult18,  c2lmult19,  c2lmult20,  c2lmult21,  c2lmult22,   
    c2lmult23,  c2lmult24,  c2lmult25,  c2lmult26,  c2lmult27,  c2lmult28,   
    c2lmult29,  c2lmult30,  c2lmult31,  c2lmult32; 
  
model; 
 
 
 
// Utility, country 1 
Util1 = ((cc-muc)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor^(1+chi_p)/(1+chi_p); 
// Welfare, country 1 
Welf1 = Util1 + nbeta*Welf1(1); 
 
// Utility, country 2 
Util2 = ((cc2-muc2)^(1-gamma_p) - 1)/(1-gamma_p) - chi0_p*labor2^(1+chi_p)/(1+chi_p); 
// Welfare, country 2 
Welf2 = Util2+ nbeta*Welf2(1); 
 
// Policymaker's First-Order Conditions for Country 1 
c1lmult21 + 1/(cc - muc)^gamma_p - c1lmult19*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p) + c1lmult20*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*c1lmult1*gamma_p*r_price_cc*(cc - muc)^(gamma_p - 1))/(infl1(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (c1lmult11*gamma_p*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^(gamma_p + 1)) - (beta_p*c1lmult1(-1)*gamma_p*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl1*nbeta*r_price_cc*(cc - muc)^(gamma_p + 1)); 
c1lmult24 - c1lmult22*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p) + c1lmult23*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*c1lmult2*gamma_p*r_price_cc2*(cc2 - muc2)^(gamma_p - 1))/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (c1lmult12*gamma_p*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)) - (beta_p*c1lmult2(-1)*gamma_p*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)); 
c1lmult19 - c1lmult17 - c1lmult21*cc_d^(1/(rho_cc_p + 1) - 1)*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
c1lmult22 - c1lmult18 - c1lmult24*cc_d2^(1/(rho_cc_p + 1) - 1)*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
c1lmult20 - c1lmult18 + (c1lmult28*r_exchg)/gdp - c1lmult21*cc_m^(1/(rho_cc_p + 1) - 1)*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
c1lmult23 - c1lmult17 - c1lmult28/gdp - c1lmult24*cc_m2^(1/(rho_cc_p + 1) - 1)*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
c1lmult7 + (c1lmult3(-1)*gdp*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)); 
c1lmult10 + (c1lmult4(-1)*gdp2*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
c1lmult6 + c1lmult3*gdp*(tau_p - sigma + 1); 
c1lmult9 + c1lmult4*gdp2*(tau_p - sigma2 + 1); 
c1lmult15 + c1lmult17 + c1lmult28*((cc_m2 - cc_m*r_exchg)/gdp^2 + (gdp(-1)*nfa(-1)*r_exchg)/(gdp^2*infl2*r_exchg(-1))) - c1lmult3*((phi - 1)*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p) - dphidp*(tau_p - sigma + 1)) + (c1lmult3(-1)*dphidlp*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)) - (c1lmult28(+1)*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
c1lmult16 + c1lmult18 - c1lmult4*((phi2 - 1)*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p) - dphidp2*(tau_p - sigma2 + 1)) + (c1lmult4(-1)*dphidlp2*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
c1lmult29 - c1lmult17 + c1lmult31 - c1lmult31(+1)*nbeta*rho_gov_p; 
c1lmult30 - c1lmult18 + c1lmult32 - c1lmult32(+1)*nbeta*rho_gov_p; 
c1lmult7*((infl1^2*phi_p)/infl_ss^2 + (2*infl1*phi_p*(infl1/infl_ss - 1))/infl_ss) - c1lmult6*((infl1*phi_p)/infl_ss^2 + (phi_p*(infl1/infl_ss - 1))/infl_ss) - (c1lmult5*phi_p*(infl1/infl_ss - 1))/infl_ss - (c1lmult25(-1)*r_exchg)/(infl2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) - (beta_p*c1lmult1(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl1^2*nbeta*r_price_cc*(cc - muc)^gamma_p); 
c1lmult11 - c1lmult15*exp(theta) - chi0_p*labor^chi_p - c1lmult29*tau_l*wages; 
c1lmult12 - c1lmult16*exp(theta2) - c1lmult30*tau_l2*wages2; 
c1lmult28/(phi_nfa*(rate2 + 1)) + c1lmult26*phi_nfa_p*exp(-nfa*phi_nfa_p) - (c1lmult28(+1)*gdp*nbeta*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
c1lmult5 - c1lmult3*gdp*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p); 
c1lmult8 - c1lmult4*gdp2*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p); 
c1lmult26 - c1lmult25/(phi_nfa^2*(rate2 + 1)) - (c1lmult28*nfa)/(phi_nfa^2*(rate2 + 1)); 
c1lmult1/(rate1 + 1)^2 - (c1lmult3*dphidlp(+1)*gdp(+1)*(tau_p - sigma(+1) + 1))/(rate1 + 1)^2 + (c1lmult25*infl1(+1)*r_exchg(+1))/(infl2(+1)*r_exchg*(rate1 + 1)^2); 
c1lmult2/(rate2 + 1)^2 - c1lmult25/(phi_nfa*(rate2 + 1)^2) - (c1lmult28*nfa)/(phi_nfa*(rate2 + 1)^2) - (c1lmult4*dphidlp2(+1)*gdp2(+1)*(tau_p - sigma2(+1) + 1))/(rate2 + 1)^2; 
c1lmult27 + c1lmult28*(cc_m/gdp - (gdp(-1)*nfa(-1))/(gdp*infl2*r_exchg(-1))) + (c1lmult25*infl1(+1)*r_exchg(+1))/(infl2(+1)*r_exchg^2*(rate1 + 1)) - (c1lmult25(-1)*infl1)/(infl2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) - (c1lmult20*cc*r_price_cc*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg^2*rho_cc_p) + (c1lmult28(+1)*gdp*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg^2); 
c1lmult27/r_exchg2^2 - (c1lmult23*cc2*r_price_cc2*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2^2*rho_cc_p); 
(beta_p*c1lmult1*(cc - muc)^gamma_p)/(infl1(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (c1lmult19*cc*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (c1lmult20*cc*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg*rho_cc_p) - (beta_p*c1lmult1(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl1*nbeta*r_price_cc^2*(cc - muc)^gamma_p) - (c1lmult11*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc^2*(cc - muc)^gamma_p); 
(beta_p*c1lmult2*(cc2 - muc2)^gamma_p)/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (c1lmult22*cc2*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (c1lmult23*cc2*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2*rho_cc_p) - (beta_p*c1lmult2(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2^2*(cc2 - muc2)^gamma_p) - (c1lmult12*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2^2*(cc2 - muc2)^gamma_p); 
c1lmult13 - c1lmult3*(dphidp*gdp - (gdp*(phi - 1)*(theta_p + 1))/theta_p) - (c1lmult3(-1)*dphidlp*gdp)/(nbeta*(rate1(-1) + 1)); 
c1lmult14 - c1lmult4*(dphidp2*gdp2 - (gdp2*(phi2 - 1)*(theta_p + 1))/theta_p) - (c1lmult4(-1)*dphidlp2*gdp2)/(nbeta*(rate2(-1) + 1)); 
(c1lmult11*wages*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - c1lmult29*labor*wages; 
(c1lmult12*wages2*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - c1lmult30*labor2*wages2; 
(c1lmult11*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - c1lmult29*labor*tau_l - c1lmult13*exp(-theta); 
(c1lmult12*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - c1lmult30*labor2*tau_l2 - c1lmult14*exp(-theta2); 
 
// Policymaker's First-Order Conditions for Country 2 
c2lmult21 - c2lmult19*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p) + c2lmult20*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*c2lmult1*gamma_p*r_price_cc*(cc - muc)^(gamma_p - 1))/(infl1(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (c2lmult11*gamma_p*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^(gamma_p + 1)) - (beta_p*c2lmult1(-1)*gamma_p*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl1*nbeta*r_price_cc*(cc - muc)^(gamma_p + 1)); 
c2lmult24 + 1/(cc2 - muc2)^gamma_p - c2lmult22*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p) + c2lmult23*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p)*(omega_cc_p - 1) + (beta_p*c2lmult2*gamma_p*r_price_cc2*(cc2 - muc2)^(gamma_p - 1))/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (c2lmult12*gamma_p*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)) - (beta_p*c2lmult2(-1)*gamma_p*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2*(cc2 - muc2)^(gamma_p + 1)); 
c2lmult19 - c2lmult17 - c2lmult21*cc_d^(1/(rho_cc_p + 1) - 1)*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
c2lmult22 - c2lmult18 - c2lmult24*cc_d2^(1/(rho_cc_p + 1) - 1)*omega_cc_p^(rho_cc_p/(rho_cc_p + 1))*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p; 
c2lmult20 - c2lmult18 + (c2lmult28*r_exchg)/gdp - c2lmult21*cc_m^(1/(rho_cc_p + 1) - 1)*(cc_d^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
c2lmult23 - c2lmult17 - c2lmult28/gdp - c2lmult24*cc_m2^(1/(rho_cc_p + 1) - 1)*(cc_d2^(1/(rho_cc_p + 1))*omega_cc_p^(rho_cc_p/(rho_cc_p + 1)) + cc_m2^(1/(rho_cc_p + 1))*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)))^rho_cc_p*(1 - omega_cc_p)^(rho_cc_p/(rho_cc_p + 1)); 
c2lmult7 + (c2lmult3(-1)*gdp*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)); 
c2lmult10 + (c2lmult4(-1)*gdp2*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
c2lmult6 + c2lmult3*gdp*(tau_p - sigma + 1); 
c2lmult9 + c2lmult4*gdp2*(tau_p - sigma2 + 1); 
c2lmult15 + c2lmult17 + c2lmult28*((cc_m2 - cc_m*r_exchg)/gdp^2 + (gdp(-1)*nfa(-1)*r_exchg)/(gdp^2*infl2*r_exchg(-1))) - c2lmult3*((phi - 1)*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p) - dphidp*(tau_p - sigma + 1)) + (c2lmult3(-1)*dphidlp*(tau_p - sigma + 1))/(nbeta*(rate1(-1) + 1)) - (c2lmult28(+1)*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
c2lmult16 + c2lmult18 - c2lmult4*((phi2 - 1)*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p) - dphidp2*(tau_p - sigma2 + 1)) + (c2lmult4(-1)*dphidlp2*(tau_p - sigma2 + 1))/(nbeta*(rate2(-1) + 1)); 
c2lmult29 - c2lmult17 + c2lmult31 - c2lmult31(+1)*nbeta*rho_gov_p; 
c2lmult30 - c2lmult18 + c2lmult32 - c2lmult32(+1)*nbeta*rho_gov_p; 
c2lmult10*((infl2^2*phi2_p)/infl_ss^2 + (2*infl2*phi2_p*(infl2/infl_ss - 1))/infl_ss) - c2lmult9*((infl2*phi2_p)/infl_ss^2 + (phi2_p*(infl2/infl_ss - 1))/infl_ss) - (c2lmult8*phi2_p*(infl2/infl_ss - 1))/infl_ss + (c2lmult25(-1)*infl1*r_exchg)/(infl2^2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) + (c2lmult28*gdp(-1)*nfa(-1)*r_exchg)/(gdp*infl2^2*r_exchg(-1)) - (beta_p*c2lmult2(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2^2*nbeta*r_price_cc2*(cc2 - muc2)^gamma_p); 
c2lmult11 - c2lmult15*exp(theta) - c2lmult29*tau_l*wages; 
c2lmult12 - c2lmult16*exp(theta2) - chi0_p*labor2^chi_p - c2lmult30*tau_l2*wages2; 
c2lmult28/(phi_nfa*(rate2 + 1)) + c2lmult26*phi_nfa_p*exp(-nfa*phi_nfa_p) - (c2lmult28(+1)*gdp*nbeta*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg); 
c2lmult5 - c2lmult3*gdp*((tau_p + 1)/theta_p - (sigma*(theta_p + 1))/theta_p); 
c2lmult8 - c2lmult4*gdp2*((tau_p + 1)/theta_p - (sigma2*(theta_p + 1))/theta_p); 
c2lmult26 - c2lmult25/(phi_nfa^2*(rate2 + 1)) - (c2lmult28*nfa)/(phi_nfa^2*(rate2 + 1)); 
c2lmult1/(rate1 + 1)^2 - (c2lmult3*dphidlp(+1)*gdp(+1)*(tau_p - sigma(+1) + 1))/(rate1 + 1)^2 + (c2lmult25*infl1(+1)*r_exchg(+1))/(infl2(+1)*r_exchg*(rate1 + 1)^2); 
c2lmult2/(rate2 + 1)^2 - c2lmult25/(phi_nfa*(rate2 + 1)^2) - (c2lmult28*nfa)/(phi_nfa*(rate2 + 1)^2) - (c2lmult4*dphidlp2(+1)*gdp2(+1)*(tau_p - sigma2(+1) + 1))/(rate2 + 1)^2; 
c2lmult27 + c2lmult28*(cc_m/gdp - (gdp(-1)*nfa(-1))/(gdp*infl2*r_exchg(-1))) + (c2lmult25*infl1(+1)*r_exchg(+1))/(infl2(+1)*r_exchg^2*(rate1 + 1)) - (c2lmult25(-1)*infl1)/(infl2*nbeta*r_exchg(-1)*(rate1(-1) + 1)) - (c2lmult20*cc*r_price_cc*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg^2*rho_cc_p) + (c2lmult28(+1)*gdp*nbeta*nfa*r_exchg(+1))/(gdp(+1)*infl2(+1)*r_exchg^2); 
c2lmult27/r_exchg2^2 - (c2lmult23*cc2*r_price_cc2*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2^2*rho_cc_p); 
(beta_p*c2lmult1*(cc - muc)^gamma_p)/(infl1(+1)*r_price_cc(+1)*(cc(+1) - muc(+1))^gamma_p) - (c2lmult19*cc*omega_cc_p*r_price_cc^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (c2lmult20*cc*(r_price_cc/r_exchg)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg*rho_cc_p) - (beta_p*c2lmult1(-1)*r_price_cc(-1)*(cc(-1) - muc(-1))^gamma_p)/(infl1*nbeta*r_price_cc^2*(cc - muc)^gamma_p) - (c2lmult11*wages*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc^2*(cc - muc)^gamma_p); 
(beta_p*c2lmult2*(cc2 - muc2)^gamma_p)/(infl2(+1)*r_price_cc2(+1)*(cc2(+1) - muc2(+1))^gamma_p) - (c2lmult22*cc2*omega_cc_p*r_price_cc2^((rho_cc_p + 1)/rho_cc_p - 1)*(rho_cc_p + 1))/rho_cc_p + (c2lmult23*cc2*(r_price_cc2/r_exchg2)^((rho_cc_p + 1)/rho_cc_p - 1)*(omega_cc_p - 1)*(rho_cc_p + 1))/(r_exchg2*rho_cc_p) - (beta_p*c2lmult2(-1)*r_price_cc2(-1)*(cc2(-1) - muc2(-1))^gamma_p)/(infl2*nbeta*r_price_cc2^2*(cc2 - muc2)^gamma_p) - (c2lmult12*wages2*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2^2*(cc2 - muc2)^gamma_p); 
c2lmult13 - c2lmult3*(dphidp*gdp - (gdp*(phi - 1)*(theta_p + 1))/theta_p) - (c2lmult3(-1)*dphidlp*gdp)/(nbeta*(rate1(-1) + 1)); 
c2lmult14 - c2lmult4*(dphidp2*gdp2 - (gdp2*(phi2 - 1)*(theta_p + 1))/theta_p) - (c2lmult4(-1)*dphidlp2*gdp2)/(nbeta*(rate2(-1) + 1)); 
(c2lmult11*wages*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - c2lmult29*labor*wages; 
(c2lmult12*wages2*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - c2lmult30*labor2*wages2; 
(c2lmult11*(tau_l - 1)*(-(wages*(tau_l - 1))/(chi0_p*r_price_cc*(cc - muc)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc*(cc - muc)^gamma_p) - c2lmult29*labor*tau_l - c2lmult13*exp(-theta); 
(c2lmult12*(tau_l2 - 1)*(-(wages2*(tau_l2 - 1))/(chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p))^(1/chi_p - 1))/(chi_p*chi0_p*r_price_cc2*(cc2 - muc2)^gamma_p) - c2lmult30*labor2*tau_l2 - c2lmult14*exp(-theta2); 
 
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
1/(phi_nfa*(1+rate2)) =  infl1(1)/(1+rate1)*r_exchg(1)/r_exchg/infl2(1); 
 
// costs for foreign bond holding 
phi_nfa = exp(-phi_nfa_p*(nfa)); 
 
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
 
 
 
 
stoch_simul(order=2,nocorr,nomoments,irf=0); 
 
