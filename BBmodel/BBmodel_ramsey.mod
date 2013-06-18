// Same model as used for IMF Review paper, but removed unused features. 
 
// Endogenous variables 
var Util1, 
//Welf1, 
Util2, 
//Welf2, 
Util, 
Welf, 
rate1, 
rate2, 
c1rs, 
c2rs, 
c1lambdaq, 
c1c, 
c1cd, 
c1mc, 
c1y, 
c1l, 
//c1tbal, 
c1g, 
c2lambdaq, 
c2c, 
c2cd, 
c2mc, 
c2y, 
c2l,  
c2g, 
c1rer, 
c1b, 
c2w, 
c1w, 
c2rmcpd, 
c1rmcpd, 
c2rpcpd, 
c1rpcpd, 
c2dpd, 
c1dpd, 
c2dcore, 
c1dcore, 
c1hp, 
c1gp, 
c1pstar, 
c1pidbar, 
c1pid, 
c1deltad, 
c2hp, 
c2gp, 
c2pstar, 
c2pidbar, 
c2pid, 
c2deltad, 
c1yd, 
c2yd, 
c1clag, 
c2clag, 
c1blag, 
c1ydlead, 
c1rerlead, 
c1rpcpdlead, 
c2rpcpdlead, 
c1pidlead, 
c2pidlead, 
c1lambdaqlead, 
c2lambdaqlead, 
c1dpdlead, 
c2dpdlead, 
c1hplead, 
c2hplead, 
c1gplead, 
c2gplead, 
c1rerprod; 
 
// Exogenous variables  
var c1shockgy, 
c1zc, 
c1zclag, 
c1muc, 
c1thetapvar, 
c2shockgy, 
c2zc, 
c2zclag, 
c2muc, 
c2thetapvar; 
 
varexo  c1shockgyerr 
c1zcerr 
c1mucerr 
c2shockgyerr 
c2zcerr 
c2mucerr 
c2thetapvarerr 
c1thetapvarerr; 
 
parameters   
//c1sigma, 
c1grmuzss, 
c1beta, 
c1rhoc,              
c1sharegy,           
c1rhogy,             
c1scaleshockgyerr,   
c1rhozc1,            
c1rhozc2,           
c1scalezcerr,        
c1rhomuc,            
c1scalemucerr,       
//c2sigma,             
c2grmuzss,           
c2beta,              
c2rhoc,              
c2sharegy,           
c2rhogy,             
c2scaleshockgyerr,  
c2rhozc1,            
c2rhozc2,            
c2scalezcerr,        
c2rhomuc,            
c2scalemucerr,       
c1phibparm,          
c2rhothetapvar,      
c2scalethetapvarerr, 
c1rhothetapvar,      
c1scalethetapvarerr, 
c2chi,               
c1chi,               
c2thetap,            
c1thetap,            
c2iotap,            
c2xip,               
c1iotap,             
c1xip,               
c1chi0, 
c1omegac, 
c1omegamc, 
c1relc2, 
c1pistar, 
c1taup, 
c2chi0, 
c2omegac, 
c2omegamc, 
c2pistar, 
c2taup, 
c1rsss, 
c2rsss, 
omega_welf1, 
omega_welf2, 
nbeta, 
c1gamrs,                       
c1gamdpc,                         
c2gamrs,             
c2gamdpc; 
 
var lmult1,  lmult2,  lmult3,  lmult4,  lmult5,  lmult6,  lmult7,   
    lmult8,  lmult9,  lmult10,  lmult11,  lmult12,  lmult13,  lmult14,   
    lmult15,  lmult16,  lmult17,  lmult18,  lmult19,  lmult20,  lmult21,   
    lmult22,  lmult23,  lmult24,  lmult25,  lmult26,  lmult27,  lmult28,   
    lmult29,  lmult30,  lmult31,  lmult32,  lmult33,  lmult34,  lmult35,   
    lmult36,  lmult37,  lmult38,  lmult39,  lmult40,  lmult41,  lmult42,   
    lmult43,  lmult44,  lmult45,  lmult46,  lmult47,  lmult48,  lmult49,   
    lmult50,  lmult51,  lmult52,  lmult53,  lmult54,  lmult55,  lmult56,   
    lmult57,  lmult58,  lmult59,  lmult60,  lmult61,  lmult62; 
  
model; 
 
////////////////////////////////// 
// Monetary policy bloc 
////////////////////////////////// 
 
Util = omega_welf1*Util1 + omega_welf2*Util2; 
Welf = Util + nbeta*Welf(1); 
 
// Utility, country 1 
Util1 = 1/exp(c1muc)*log(exp(c1muc)*exp(c1c))+c1chi0/(1-c1chi)*(1-exp(c1l))^(1-c1chi); 
 
// Welfare, country 1 
//Welf1 = Util1 + nbeta*Welf1(1); 
 
// Utility, country 2 
Util2 = 1/exp(c2muc)*log(exp(c2muc)*exp(c2c))+c2chi0/(1-c2chi)*(1-exp(c2l))^(1-c2chi); 
 
// Welfare, country 2 
//Welf2 = Util2+ nbeta*Welf2(1); 
 
// Policymaker's First-Order Conditions 
c1phibparm*lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - lmult48(+1)*nbeta + (c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult48 + lmult28*((c1b*c2beta*c1grmuzss*c1phibparm*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss - 1); 
lmult13*exp(c1c) - lmult46(+1)*nbeta - lmult1*exp(-c1muc) - lmult7*exp(-c1c)*exp(-c1muc) - (c1omegamc*c1rhoc*lmult15*exp(-c1mc)*exp(c1c)*(c1omegamc*exp(-c1mc)*exp(c1c))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) + (c1omegac*c1rhoc*lmult14*exp(-c1cd)*exp(c1c)*exp(c1rpcpd)*(c1omegac*exp(-c1cd)*exp(c1c))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
- lmult12*exp(c1cd) - c1omegac^(c1rhoc/(c1rhoc + 1))*lmult13*exp(c1cd)*exp(c1cd)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + c1omegamc^(c1rhoc/(c1rhoc + 1))*exp(c1mc)^(1/(c1rhoc + 1)))^c1rhoc - (c1omegac*c1rhoc*lmult14*exp(-c1cd)*exp(c1c)*exp(c1rpcpd)*(c1omegac*exp(-c1cd)*exp(c1c))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
lmult46; 
lmult5; 
lmult36*exp(c1deltad) - lmult35*exp(c1deltad)*exp(c1yd) - (c1xip*lmult36(+1)*nbeta*exp(c1deltad))/(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
- lmult3 - lmult37 - lmult57(-1)/nbeta; 
lmult57 + (c1beta*lmult8*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)^2); 
lmult16*exp(c1g) - lmult12*exp(c1g); 
lmult31*exp(c1gp) - lmult61(-1)/nbeta + lmult32*exp(-c1gp)*exp(c1hp); 
lmult61 - c1beta*c1xip*lmult31*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
lmult30*exp(c1hp) - lmult59(-1)/nbeta - lmult32*exp(-c1gp)*exp(c1hp); 
lmult59 - (c1beta*c1xip*lmult30*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
(c1chi0*lmult1*exp(c1l))/(1 - exp(c1l))^c1chi - lmult10*exp(c1l)*exp(c1zc) - (c1chi*c1chi0*lmult9*exp(-c1lambdaq)*exp(c1l))/(1 - exp(c1l))^(c1chi + 1); 
(c1chi0*lmult9*exp(-c1lambdaq))/(1 - exp(c1l))^c1chi - lmult7*exp(c1lambdaq)*exp(c1rpcpd) - lmult55(-1)/nbeta + (c1beta*lmult8*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) + (c1beta*c1xip*lmult30*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c1beta*c1xip*lmult31*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead); 
lmult55 - (c1beta*lmult8*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) - (c1beta*c1xip*lmult30*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c1beta*c1xip*lmult31*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead); 
lmult28*exp(-c2rpcpd)*exp(-c1yd)*exp(c1mc)*exp(c1rer)*exp(c1rpcpd) - c1omegamc^(c1rhoc/(c1rhoc + 1))*lmult13*exp(c1mc)*exp(c1mc)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + c1omegamc^(c1rhoc/(c1rhoc + 1))*exp(c1mc)^(1/(c1rhoc + 1)))^c1rhoc - c1relc2*lmult22*exp(c1mc) + (c1omegamc*c1rhoc*lmult15*exp(-c1mc)*exp(c1c)*(c1omegamc*exp(-c1mc)*exp(c1c))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
lmult37/c1pid - lmult5/c1pid - lmult53(-1)/nbeta - c1iotap*c1pid^(c1iotap - 1)*c1pistar^(1 - c1iotap)*lmult34 + (c1pidbar(-1)*c1xip*lmult33*exp(-c1thetapvar))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^(exp(-c1thetapvar)/c1thetap + 1)) - (c1pidbar(-1)*c1xip*lmult36*exp(-c1thetapvar)*exp(c1deltad(-1))*(c1thetap*exp(c1thetapvar) + 1))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
lmult34 - (c1xip*lmult33(+1)*nbeta*exp(-c1thetapvar(+1)))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^(exp(-c1thetapvar(+1))/c1thetap + 1)) + (c1xip*lmult36(+1)*nbeta*exp(-c1thetapvar(+1))*exp(c1deltad)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)) + (c1beta*c1xip*lmult31*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1xip*lmult30*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
lmult53 - (c1beta*c1pidbar*c1xip*lmult31*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead^2*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) - (c1beta*c1pidbar*c1xip*lmult30*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead^2*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
lmult32*exp(c1pstar) + (lmult33*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1))/(c1thetap*exp(c1pstar)^(exp(-c1thetapvar)/c1thetap + 1)) - (lmult36*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1)*(c1thetap*exp(c1thetapvar) + 1))/(c1thetap*exp(c1pstar)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
lmult28*(exp(-c2rpcpd)*exp(-c1yd)*exp(c1mc)*exp(c1rer)*exp(c1rpcpd) + (c1b*c2beta*c1grmuzss*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss) - lmult50(-1)/nbeta - lmult25*exp(-c1rer)*exp(-c1rpcpd) + lmult15*exp(-c2rpcpd)*exp(c1rer) - lmult29*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) + lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead); 
lmult50 - lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult29*exp(c1rerprod); 
- lmult11*exp(c1rmcpd) - (lmult30*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap; 
lmult5(+1)*nbeta - lmult5 - lmult51(-1)/nbeta + lmult28*(exp(-c2rpcpd)*exp(-c1yd)*exp(c1mc)*exp(c1rer)*exp(c1rpcpd) + (c1b*c2beta*c1grmuzss*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss) - lmult25*exp(-c1rer)*exp(-c1rpcpd) - lmult7*exp(c1lambdaq)*exp(c1rpcpd) + lmult14*exp(c1rpcpd)*(c1omegac*exp(-c1cd)*exp(c1c))^(c1rhoc/(c1rhoc + 1)) - lmult29*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) + lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead); 
lmult51 - lmult27*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
-lmult8/(c1rs + 1)^2; 
lmult9*exp(c1w) + lmult11*exp(-c1zc)*exp(c1w); 
lmult10*exp(c1y) + lmult35*exp(c1y); 
lmult28*(exp(-c1yd)*(exp(c2mc)/c1relc2 - exp(-c2rpcpd)*exp(c1mc)*exp(c1rer)*exp(c1rpcpd)) - (c1b*c2beta*c1grmuzss*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss) + lmult12*exp(c1yd) - lmult49(-1)/nbeta - lmult35*exp(c1deltad)*exp(c1yd) - c1sharegy*lmult16*exp(c1shockgy)*exp(c1yd) - (lmult31*exp(-c1thetapvar)*exp(c1yd)*(c1taup + 1))/c1thetap - (lmult30*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap; 
lmult49 + (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult23*exp(c2c) - lmult47(+1)*nbeta - lmult2*exp(-c2muc) - lmult17*exp(-c2c)*exp(-c2muc) - (c2omegamc*c2rhoc*lmult25*exp(-c2mc)*exp(c2c)*(c2omegamc*exp(-c2mc)*exp(c2c))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) + (c2omegac*c2rhoc*lmult24*exp(-c2cd)*exp(c2c)*exp(c2rpcpd)*(c2omegac*exp(-c2cd)*exp(c2c))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1); 
- lmult22*exp(c2cd) - c2omegac^(c2rhoc/(c2rhoc + 1))*lmult23*exp(c2cd)*exp(c2cd)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + c2omegamc^(c2rhoc/(c2rhoc + 1))*exp(c2mc)^(1/(c2rhoc + 1)))^c2rhoc - (c2omegac*c2rhoc*lmult24*exp(-c2cd)*exp(c2c)*exp(c2rpcpd)*(c2omegac*exp(-c2cd)*exp(c2c))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1); 
lmult47; 
lmult6; 
lmult44*exp(c2deltad) - lmult43*exp(c2deltad)*exp(c2yd) - (c2xip*lmult44(+1)*nbeta*exp(c2deltad))/(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
- lmult4 - lmult45 - lmult58(-1)/nbeta; 
lmult58 + (c2beta*lmult18*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)^2); 
lmult26*exp(c2g) - lmult22*exp(c2g); 
lmult39*exp(c2gp) - lmult62(-1)/nbeta + lmult40*exp(-c2gp)*exp(c2hp); 
lmult62 - c2beta*c2xip*lmult39*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
lmult38*exp(c2hp) - lmult60(-1)/nbeta - lmult40*exp(-c2gp)*exp(c2hp); 
lmult60 - (c2beta*c2xip*lmult38*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
(c2chi0*lmult2*exp(c2l))/(1 - exp(c2l))^c2chi - lmult20*exp(c2l)*exp(c2zc) - (c2chi*c2chi0*lmult19*exp(-c2lambdaq)*exp(c2l))/(1 - exp(c2l))^(c2chi + 1); 
(c2chi0*lmult19*exp(-c2lambdaq))/(1 - exp(c2l))^c2chi - lmult17*exp(c2lambdaq)*exp(c2rpcpd) - lmult56(-1)/nbeta - lmult27*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c2beta*lmult18*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) + (c2beta*c2xip*lmult38*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + c2beta*c2xip*lmult39*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult56 + lmult27*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c2beta*lmult18*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) - (c2beta*c2xip*lmult38*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - c2beta*c2xip*lmult39*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
(c2omegamc*c2rhoc*lmult25*exp(-c2mc)*exp(c2c)*(c2omegamc*exp(-c2mc)*exp(c2c))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - (lmult28*exp(-c1yd)*exp(c2mc))/c1relc2 - c2omegamc^(c2rhoc/(c2rhoc + 1))*lmult23*exp(c2mc)*exp(c2mc)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + c2omegamc^(c2rhoc/(c2rhoc + 1))*exp(c2mc)^(1/(c2rhoc + 1)))^c2rhoc - (lmult12*exp(c2mc))/c1relc2; 
lmult45/c2pid - lmult6/c2pid - lmult54(-1)/nbeta - c2iotap*c2pid^(c2iotap - 1)*c2pistar^(1 - c2iotap)*lmult42 + (c2pidbar(-1)*c2xip*lmult41*exp(-c2thetapvar))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^(exp(-c2thetapvar)/c2thetap + 1)) - (c2pidbar(-1)*c2xip*lmult44*exp(-c2thetapvar)*exp(c2deltad(-1))*(c2thetap*exp(c2thetapvar) + 1))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
lmult42 - (c2xip*lmult41(+1)*nbeta*exp(-c2thetapvar(+1)))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^(exp(-c2thetapvar(+1))/c2thetap + 1)) + (c2xip*lmult44(+1)*nbeta*exp(-c2thetapvar(+1))*exp(c2deltad)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)) + (c2beta*c2xip*lmult39*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2xip*lmult38*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
lmult54 - (c2beta*c2pidbar*c2xip*lmult39*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead^2*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) - (c2beta*c2pidbar*c2xip*lmult38*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead^2*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
lmult40*exp(c2pstar) + (lmult41*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1))/(c2thetap*exp(c2pstar)^(exp(-c2thetapvar)/c2thetap + 1)) - (lmult44*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1)*(c2thetap*exp(c2thetapvar) + 1))/(c2thetap*exp(c2pstar)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
- lmult21*exp(c2rmcpd) - (lmult38*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
lmult6(+1)*nbeta - lmult6 - lmult52(-1)/nbeta - lmult28*(exp(-c2rpcpd)*exp(-c1yd)*exp(c1mc)*exp(c1rer)*exp(c1rpcpd) + (c1b*c2beta*c1grmuzss*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss) - lmult17*exp(c2lambdaq)*exp(c2rpcpd) + lmult24*exp(c2rpcpd)*(c2omegac*exp(-c2cd)*exp(c2c))^(c2rhoc/(c2rhoc + 1)) - lmult15*exp(-c2rpcpd)*exp(c1rer) + lmult29*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - lmult27*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead); 
lmult52 + lmult27*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c1b*c2beta*c1grmuzss*lmult28*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
-lmult18/(c2rs + 1)^2; 
lmult19*exp(c2w) + lmult21*exp(-c2zc)*exp(c2w); 
lmult20*exp(c2y) + lmult43*exp(c2y); 
lmult22*exp(c2yd) - lmult43*exp(c2deltad)*exp(c2yd) - c2sharegy*lmult26*exp(c2shockgy)*exp(c2yd) - (lmult39*exp(-c2thetapvar)*exp(c2yd)*(c2taup + 1))/c2thetap - (lmult38*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
lmult3; 
lmult4; 
lmult1 + omega_welf1; 
lmult2 + omega_welf2; 
//c1rs = (1+c1rsss)*(((1+c1rs(-1))/(1+c1rsss))^c1gamrs*(((1+(c1dpd))/(1+log(c1pistar)))*((1+(c1dpd))/(1+log(c1pistar)))^c1gamdpc)^(1-c1gamrs))-1; 
 
//c2rs = (1+c2rsss)*(((1+(c2rs(-1)))/(1+c2rsss))^c2gamrs*(((1+(c2dpd))/(1+log(c2pistar)))*((1+(c2dpd))/(1+log(c2pistar)))^c2gamdpc)^(1-c2gamrs))-1; 
 
//rate1 = c1rs; 
//rate2 = c2rs; 
rate1 = c1dpd; 
rate2 = c2dpd; 
 
// core inflation 
(c1dcore) = log(exp(c1rpcpd)/exp(c1rpcpd(-1))*(c1pid)); 
 
// core inflation 
(c2dcore) = log(exp(c2rpcpd)/exp(c2rpcpd(-1))*(c2pid)); 
 
 
////////////////////////////////// 
// Home country bloc  
////////////////////////////////// 
 
// fonc consumption 
(exp(c1muc)*exp(c1c))^(-1) = exp(c1lambdaq)*exp(c1rpcpd); 
 
// definition of nominal interest rate 
1/(1+(c1rs)) = c1beta/c1grmuzss*(exp(c1lambdaqlead))/(exp(c1lambdaq))/(1+(c1dpdlead)); 
 
// fonc labor 
exp(c1w) = c1chi0*(1-exp(c1l))^(-c1chi)/exp(c1lambdaq); 
 
// gross output 
exp(c1y) = (exp(c1zc)*exp(c1l)); 
 
// fonc labor in production  
exp(c1w)/exp(c1zc) = exp(c1rmcpd); 
 
// resource constraint goods 
exp(c1yd) = exp(c1cd)+exp(c1g)+1/c1relc2*(exp(c2mc)); 
 
// final consumption 
exp(c1c) = ((c1omegac)^(c1rhoc/(1+c1rhoc))*exp(c1cd)^(1/(1+c1rhoc))+(c1omegamc)^(c1rhoc/(1+c1rhoc))*(exp(c1mc))^(1/(1+c1rhoc)))^(1+c1rhoc); 
 
// fonc consumption 
exp(c1rpcpd)*(c1omegac*exp(c1c)/exp(c1cd))^(c1rhoc/(1+c1rhoc)) = 1; 
 
// fonc imports 
(exp(c1rer))/(exp(c2rpcpd))= (c1omegamc*exp(c1c)/exp(c1mc))^(c1rhoc/(1+c1rhoc)); 
 
// government spending 
exp(c1g) = c1sharegy*exp(c1yd)*exp(c1shockgy); 
 
 
////////////////////////////////// 
// Foreign country bloc  
////////////////////////////////// 
 
// fonc consumption 
(exp(c2muc)*exp(c2c))^(-1) = exp(c2lambdaq)*exp(c2rpcpd); 
 
// definition of nominal interest rate 
1/(1+(c2rs)) = c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(1+(c2dpdlead)); 
 
// fonc labor  
exp(c2w) = c2chi0*(1-exp(c2l))^(-c2chi)/exp(c2lambdaq); 
 
// gross output 
(exp(c2y)) = (exp(c2zc))*(exp(c2l)); 
 
// fonc labor in production   
(exp(c2w))/(exp(c2zc)) = (exp(c2rmcpd)); 
 
// resource constraint goods 
(exp(c2yd)) = (exp(c2cd))+(exp(c2g))+(c1relc2*(exp(c1mc))); 
 
// final consumption 
(exp(c2c)) = ((c2omegac)^(c2rhoc/(1+c2rhoc))*(exp(c2cd))^(1/(1+c2rhoc))+(c2omegamc)^(c2rhoc/(1+c2rhoc))*((exp(c2mc)))^(1/(1+c2rhoc)))^(1+c2rhoc); 
 
// fonc consumption 
(exp(c2rpcpd))*(c2omegac*(exp(c2c))/(exp(c2cd)))^(c2rhoc/(1+c2rhoc)) = 1; 
 
// fonc imports 
1/(exp(c1rer))/(exp(c1rpcpd)) = (c2omegamc*(exp(c2c))/(exp(c2mc)))^(c2rhoc/(1+c2rhoc)); 
 
// government spending 
(exp(c2g)) = c2sharegy*(exp(c2yd))*(exp(c2shockgy)); 
 
 
//////////////////////// 
// international links 
//////////////////////// 
 
// risk sharing 
(exp(c2lambdaqlead))/(exp(c2lambdaq))*(exp(c2rpcpdlead))/(exp(c2rpcpd)) = (exp(-c1phibparm*(c1b)))*(exp(c1rerlead))/(exp(c1rer))*(exp(c1lambdaqlead))/(exp(c1lambdaq))*(exp(c1rpcpdlead))/(exp(c1rpcpd)); 
 
// international asset positions 
(exp(c1rer))/(exp(c1rerlead))*(exp(c1rpcpd))/(exp(c1rpcpdlead))*(exp(c2rpcpdlead))/(exp(c2rpcpd))*c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(exp( 
-c1phibparm*(c1blag)))*(exp(c1ydlead))/(exp(c1yd))*c1grmuzss*(c1b) = (c1blag)+(1/c1relc2*(exp(c2mc))-(exp(c1rer))/(exp(c2rpcpd))*(exp(c1rpcpd))*exp(c1mc))/exp(c1yd); 
 
//// trade balance 
//(c1tbal) = (1/c1relc2*(exp(c2mc))-(exp(c1rer))/(exp(c2rpcpd))*(exp(c1rpcpd))*exp(c1mc))/exp(c1yd); 
 
exp(c1rerprod) = (exp(c1rer))*(exp(c1rpcpd))/(exp(c2rpcpd)); 
 
 
//////////////////////// 
// nominal rigidities 
//////////////////////// 
 
////////////////// 
// sticky prices 
////////////////// 
 
// definition of hp 
(exp(c1hp)) = (1+(c1thetap*(exp(c1thetapvar))))/(c1thetap*(exp(c1thetapvar)))*(exp(c1rmcpd))*(exp(c1yd)) 
+ c1xip*c1beta*(exp(c1lambdaqlead))/(exp(c1lambdaq))*((c1pidbar)/(c1pidlead))^(-(1 
+(c1thetap*(exp(c1thetapvar(+1)))))/(c1thetap*(exp(c1thetapvar(+1)))))*(exp(c1hplead)); 
 
// definition of gp 
(exp(c1gp)) = (1+c1taup)/(c1thetap*(exp(c1thetapvar)))*(exp(c1yd))+c1xip*c1beta*(exp(c1lambdaqlead))/(exp(c1lambdaq))*((c1pidbar)/(c1pidlead))^(1 
-(1+(c1thetap*(exp(c1thetapvar(+1)))))/(c1thetap*(exp(c1thetapvar(+1)))))*(exp(c1gplead)); 
 
// definition of pstar 
(exp(c1pstar)) = (exp(c1hp))/(exp(c1gp)); 
 
// price evolution 
(1-c1xip)*((exp(c1pstar)))^(-1/(c1thetap*(exp(c1thetapvar))))+c1xip*((c1pidbar(-1))/(c1pid))^( 
-1/(c1thetap*(exp(c1thetapvar)))) = 1; 
 
// price indexation 
(c1pidbar) = ((c1pid))^c1iotap*(c1pistar)^(1-c1iotap); 
 
// price dispersion 
(exp(c1y)) = (exp(c1deltad))*(exp(c1yd)); 
 
// evolution of price dispersion 
(exp(c1deltad)) = (1-c1xip)*((exp(c1pstar)))^(-(1+(c1thetap*(exp(c1thetapvar))))/(c1thetap*(exp(c1thetapvar)))) 
+c1xip*((c1pidbar(-1))/(c1pid))^(-(1+(c1thetap*(exp(c1thetapvar))))/(c1thetap*(exp(c1thetapvar))))*(exp(c1deltad(-1))); 
 
// price inflation definition 
log((c1pid)) = log(c1pistar) + (c1dpd); 
 
// definition of hp 
(exp(c2hp)) = (1+(c2thetap*(exp(c2thetapvar))))/(c2thetap*(exp(c2thetapvar)))*(exp(c2rmcpd))*(exp(c2yd)) 
+ c2xip*c2beta*(exp(c2lambdaqlead))/(exp(c2lambdaq))*((c2pidbar)/(c2pidlead))^(-(1 
+(c2thetap*(exp(c2thetapvar(+1)))))/(c2thetap*(exp(c2thetapvar(+1)))))*(exp(c2hplead)); 
 
// definition of gp 
(exp(c2gp)) = (1+c2taup)/(c2thetap*(exp(c2thetapvar)))*(exp(c2yd))+c2xip*c2beta*(exp(c2lambdaqlead))/(exp(c2lambdaq))*((c2pidbar)/(c2pidlead))^(1 
-(1+(c2thetap*(exp(c2thetapvar(+1)))))/(c2thetap*(exp(c2thetapvar(+1)))))*(exp(c2gplead)); 
 
// definition of pstar 
(exp(c2pstar)) = (exp(c2hp))/(exp(c2gp)); 
 
// price evolution 
(1-c2xip)*((exp(c2pstar)))^(-1/(c2thetap*(exp(c2thetapvar))))+c2xip*((c2pidbar(-1))/(c2pid))^(-1/(c2thetap*(exp(c2thetapvar)))) = 1; 
 
// price indexation 
(c2pidbar) = ((c2pid))^c2iotap*(c2pistar)^(1-c2iotap); 
 
// price dispersion 
(exp(c2y)) = (exp(c2deltad))*(exp(c2yd)); 
 
// evolution of price dispersion 
(exp(c2deltad)) = (1-c2xip)*((exp(c2pstar)))^(-(1+(c2thetap*(exp(c2thetapvar))))/(c2thetap*(exp(c2thetapvar)))) 
+c2xip*((c2pidbar(-1))/(c2pid))^(-(1+(c2thetap*(exp(c2thetapvar))))/(c2thetap*(exp(c2thetapvar))))*(exp(c2deltad(-1))); 
 
// price inflation definition 
log((c2pid)) = log(c2pistar) + (c2dpd); 
 
 
///////////////////////// 
// auxiliary variables 
///////////////////////// 
c1clag = c1c(-1); 
c2clag = c2c(-1); 
c1blag = c1b(-1); 
c1ydlead = c1yd(+1); 
c1rerlead = c1rer(+1); 
c1rpcpdlead = c1rpcpd(+1); 
c2rpcpdlead = c2rpcpd(+1); 
c1pidlead = c1pid(+1); 
c2pidlead = c2pid(+1); 
c1lambdaqlead = c1lambdaq(+1); 
c2lambdaqlead = c2lambdaq(+1); 
c1dpdlead = c1dpd(+1); 
c2dpdlead = c2dpd(+1); 
c1hplead = c1hp(+1); 
c2hplead = c2hp(+1); 
c1gplead = c1gp(+1); 
c2gplead = c2gp(+1); 
 
///////////////////////// 
// exogenous variables 
///////////////////////// 
 
c1shockgy = c1rhogy*c1shockgy(-1) + c1scaleshockgyerr*c1shockgyerr; 
 
c1zc = (1+c1rhozc1-c1rhozc2)*c1zc(-1) - c1rhozc1*c1zclag(-1) + c1scalezcerr*c1zcerr; 
 
exp(c1zclag) = exp(c1zc(-1)); 
 
c1muc = c1rhomuc * c1muc(-1)+ c1scalemucerr*0.01*c1mucerr; 
 
c1thetapvar = c1rhothetapvar*c1thetapvar(-1)+c1scalethetapvarerr*c1thetapvarerr; 
 
c2shockgy = c2rhogy*c2shockgy(-1) + c2scaleshockgyerr*c2shockgyerr; 
 
c2zc = (1+c2rhozc1-c2rhozc2)*c2zc(-1) - c2rhozc1*c2zclag(-1) + c2scalezcerr*c2zcerr; 
 
exp(c2zclag) = exp(c2zc(-1)); 
 
c2muc = c2rhomuc * c2muc(-1)+ c2scalemucerr*0.01*c2mucerr; 
 
c2thetapvar = c2rhothetapvar*c2thetapvar(-1)+c2scalethetapvarerr*c2thetapvarerr; 
 
end; 
 
 
//shocks; 
//var c1shockgyerr = 1; 
//var c1zcerr = 1; 
//var c1mucerr = 1; 
//var c2shockgyerr = 0; 
//var c2zcerr = 1; 
//var c2mucerr = 1; 
//var c2thetapvarerr = 0; 
//var c1thetapvarerr = 1; 
//end; 
 
steady; 
 
check; 
 
//stoch_simul(order=2,nocorr,noprint,irf=0); 
stoch_simul(order=1,nocorr,noprint,irf=0); 
