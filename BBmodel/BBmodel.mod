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

// Policy Rule, country 1
//rate1 = c1dpd;
c1rs = (1+c1rsss)*(((1+c1rs(-1))/(1+c1rsss))^c1gamrs*(((1+(c1dpd))/(1+log(c1pistar)))*((1+(c1dpd))/(1+log(c1pistar)))^c1gamdpc)^(1-c1gamrs))-1;

// Policy Rule, country 2
//rate2 = c2dpd;
c2rs = (1+c2rsss)*(((1+(c2rs(-1)))/(1+c2rsss))^c2gamrs*(((1+(c2dpd))/(1+log(c2pistar)))*((1+(c2dpd))/(1+log(c2pistar)))^c2gamdpc)^(1-c2gamrs))-1;

rate1 = c1rs;
rate2 = c2rs;
//rate1 = c1dpd;
//rate2 = c2dpd;

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
