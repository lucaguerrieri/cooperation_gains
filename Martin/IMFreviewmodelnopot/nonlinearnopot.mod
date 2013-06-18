// Same model as used for IMF Review paper, but removed unused features.

// Endogenous variables
var Util1,
Welf1,
Util2,
Welf2,
//Util,
//Welf,
rate1,
rate2,
c1lambdaq,
c1q,
c1i,
c1k,
c1c,
c1cne,
c1cd,
c1mc,
c1oc,
c1id,
c1rpipd,
c1mi,
c1v,
c1y,
c1rk,
c1l,
c1rrs,
c1m,
c1tbal,
c1gtbal,
c1g,
c1ow,
c2lambdaq,
c2q,
c2i,
c2k,
c2c,
c2cne,
c2cd,
c2mc,
c2oc,
c2id,
c2rpipd,
c2mi,
c2v,
c2y,
c2rk,
c2l,
c2rrs,
c2m,
c2tbal,
c2gtbal,
c2g,
c2ow,
c1rer,
c2rpwopd,
c1rpwopd,
c1b,
c1rpmcpd,
c2rpmcpd,
c1rpmipd,
c1x,
c2rpmipd,
c2x,
c2w,
c1w,
c2oy,
c1oy,
c2wdes,
c1wdes,
c2rmcpd,
c1rmcpd,
c2rpcpd,
c1rpcpd,
c2dpd,
c1dpd,
c2dcore,
c1dcore,
c1dhead,
c1dpwo
c2rpnepd,
c1rpnepd,
c1rs,
c2rs,
c1hw,
c1gw,
c1wstar,
c1omegabar,
c1omega,
c2hw,
c2gw,
c2wstar,
c2omegabar,
c2omega,
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
c1qlead, 
c2qlead, 
c1pidlead, 
c2pidlead, 
c1rpipdlead, 
c2rpipdlead, 
c1lambdaqlead, 
c2lambdaqlead, 
c1rklead, 
c2rklead, 
c1dpdlead, 
c2dpdlead, 
c1hplead, 
c2hplead, 
c1gplead, 
c2gplead, 
c1omegalead, 
c2omegalead, 
c1hwlead, 
c2hwlead, 
c1gwlead, 
c2gwlead;


// Exogenous variables 
var c1shockgy,
c1zc,
c1zclag,
c1zi,
c1yo,
c1lagyo,
c1muoc,
c1lagmuoc,
c1muc,
c1omegacm,
c1lagomegacm,
c1omegaim,
c1thetapvar,
c1thetawvar,
c2shockgy,
c2zc,
c2zclag,
c2zi,
c2yo,
c2lagyo,
c2muoc,
c2lagmuoc,
c2muc,
c2omegacm,
c2lagomegacm,
c2omegaim,
c2thetapvar,
c2thetawvar,
c1pitar,
c2pitar;

varexo  c1shockgyerr
c1zcerr
c1zierr
c1yoerr
c1muocerr
c1mucerr
c1omegacmerr
c2shockgyerr
c2zcerr
c2zierr
c2yoerr
c2muocerr
c2mucerr
c2omegacmerr
//c1zwerr
//c1muowerr
c2thetapvarerr
c1thetapvarerr
c2thetawvarerr
c1thetawvarerr
c1pitarerr
c2pitarerr;

parameters  c1sigma,
c1vkappa,
c1grmuzss,
c1psii,
c1beta,
c1delta            ,
c1shareocc         ,
c1sharemccn        ,
c1rhoc             ,
c1rhoo             ,
c1phimc            ,
c1phioc            ,
c1grmuoss          ,
c1sharemii         ,
c1omegak           ,
c1shareky          ,
c1sharevy          ,
c1rhov             ,
c1omegal           ,
c1sharely          ,
c1shareoyy         ,
c1sharecy          ,
c1shareiy          ,
c1sharegy          ,
c1sharexy          ,
c1ratiomimc        ,
c1sharemy          ,
c1shareowy         ,
c1shareyoy         ,
c1pwoss            ,
c1rhogy            ,
c1scaleshockgyerr  ,
c1mugdpss          ,
c1shareoy          ,
c1alphaop          ,
c1deltao           ,
c1shareopow        ,
c1shareoiow        ,
c1grmuzoss         ,
c1rhozc1           ,
c1rhozc2           ,
c1scalezcerr       ,
c1rhozi            ,
c1scalezierr       ,
c1rhoyo1           ,
c1rhoyo2           ,
c1scaleyoerr       ,
c1rhomuoc1         ,
c1rhomuoc2         ,
c1scalemuocerr     ,
c1rhomuc           ,
c1scalemucerr      ,
c1rhoomegacm1      ,
c1rhoomegacm2      ,
c1scaleomegacmerr  ,
c2sigma            ,
c2vkappa           ,
c2grmuzss          ,
c2psii             ,
c2beta             ,
c2delta            ,
c2shareocc         ,
c2sharemccn        ,
c2rhoc             ,
c2rhoo             ,
c2phimc            ,
c2phioc            ,
c2grmuoss          ,
c2sharemii         ,
c2omegak           ,
c2shareky          ,
c2sharevy          ,
c2rhov             ,
c2omegal           ,
c2sharely          ,
c2shareoyy         ,
c2sharecy          ,
c2shareiy          ,
c2sharegy          ,
c2sharexy          ,
c2ratiomimc        ,
c2sharemy          ,
c2shareowy         ,
c2shareyoy         ,
c2pwoss            ,
c2rhogy            ,
c2scaleshockgyerr  ,
c2mugdpss          ,
c2shareoy          ,
c2alphaop          ,
c2deltao           ,
c2shareopow        ,
c2shareoiow        ,
c2grmuzoss         ,
c2rhozc1           ,
c2rhozc2           ,
c2scalezcerr       ,
c2rhozi            ,
c2scalezierr       ,
c2rhoyo1           ,
c2rhoyo2           ,
c2scaleyoerr       ,
c2rhomuoc1         ,
c2rhomuoc2         ,
c2scalemuocerr     ,
c2rhomuc           ,
c2scalemucerr      ,
c2rhoomegacm1      ,
c2rhoomegacm2      ,
c2scaleomegacmerr  ,
c1phibparm         ,
c2shareoprod       ,
c2shareocon        ,
c1rhozw1           ,
c1rhozw2           ,
c1scalezwerr       ,
c1rhomuow1         ,
c1rhomuow2         ,
c1scalemuowerr     ,
c2phioy            ,
c1phioy            ,
c2rhothetapvar     ,
c2scalethetapvarerr,
c1rhothetapvar     ,
c1scalethetapvarerr,
c2labshare         ,
c2chi              ,
c1labshare         ,
c1chi              ,
c2rhothetawvar     ,
c2scalethetawvarerr,
c1rhothetawvar     ,
c1scalethetawvarerr,
c2thetap           ,
c1thetap           ,
c2thetaw           ,
c1thetaw           ,
c2iotap            ,
c2xip              ,
c1iotap            ,
c1xip              ,
c2iotaw            ,
c2xiw              ,
c1iotaw            ,
c1xiw              ,
c1gamrs            ,
c1gamrs2           ,
c1gamdpc           ,
c1gamdpc2          ,
c1gamgdpgap        ,
c1gamdpwo          ,
c2gamrs            ,
c2gamdpc           ,
c2gamrer           ,
c2gamgdpgap        ,
c1rhopitar         ,
c1scalepitarerr    ,
c2rhopitar         ,
c2scalepitarerr,
c1chi0,
c1omegaoc,
c1omegacc
c1omegac,
c1omegamc,
c1omegai,
c1omegami,
c1rhoi,
c1omegavy,
c1omegaoy,
c1relc2,
c1pistar,
c1tauw,
c1taup,
c2chi0,
c2omegaoc,
c2omegacc
c2omegac,
c2omegamc,
c2omegai,
c2omegami,
c2rhoi,
c2omegavy,
c2omegaoy,
c2pistar,
c2tauw,
c2taup,
c1yss,
c2yss,
c1rsss,
c2rsss,
omega_welf1,
omega_welf2,
nbeta;

model;

//////////////////////////////////
// Monetary policy bloc
//////////////////////////////////

//Util = omega_welf1*Util1 + omega_welf2*Util2;
//Welf = Util + nbeta*Welf(1);

// Utility, country 1
Util1 = 1/exp(c1muc)*log(exp(c1muc)*exp(c1c)-c1vkappa/c1grmuzss*exp(c1clag))+c1chi0/(1-c1chi)*(1-exp(c1l))^(1-c1chi);

// Welfare, country 1
Welf1 = Util1 + nbeta*Welf1(1);

// Utility, country 2
Util2 = 1/exp(c2muc)*log(exp(c2muc)*exp(c2c)-c2vkappa/c2grmuzss*exp(c2clag))+c2chi0/(1-c2chi)*(1-exp(c2l))^(1-c2chi);

// Welfare, country 2
Welf2 = Util2+ nbeta*Welf2(1);

// Policy Rule, country 1
//rate1 = c1dpd;
c1rs = (1+c1rsss)*(((1+(c1rs(-1)))/(1+c1rsss))^c1gamrs*(((1+(c1dcore))/(1+log(c1pistar)))*((1+(c1dcore))/(1+log(c1pistar)))^c1gamdpc)^(1-c1gamrs))-1;

// Policy Rule, country 2
//rate2 = c2dpd;
c2rs = (1+c2rsss)*(((1+(c2rs(-1)))/(1+c2rsss))^c2gamrs*(((1+(c2dcore))/(1+log(c2pistar)))*((1+(c2dcore))/(1+log(c2pistar)))^c2gamdpc)^(1-c2gamrs))-1;

rate1 = c1rs;
rate2 = c2rs;

//////////////////////////////////
// Home country bloc 
//////////////////////////////////

// fonc consumption
(exp(c1muc)*exp(c1c)-c1vkappa/c1grmuzss*exp(c1clag))^(-1) = exp(c1lambdaq)*exp(c1rpcpd);

// fonc labor
exp(c1wdes) =  c1chi0*(1-exp(c1l))^(-c1chi)/exp(c1lambdaq);

// fonc investment
1- exp(c1q)*exp(c1zi)*(1-c1psii/2*(exp(c1i)/exp(c1i(-1))*c1grmuzss-c1grmuzss)^2)
+exp(c1q)*exp(c1zi)*exp(c1i)*c1psii*(exp(c1i)/exp(c1i(-1))*c1grmuzss
-c1grmuzss)/exp(c1i(-1))*c1grmuzss-c1beta*exp(c1rpipdlead)/exp(c1rpipd)*exp(c1lambdaqlead)/exp(c1lambdaq)
*exp(c1qlead)*exp(c1zi(+1))*exp(c1i(+1))*c1psii*(exp(c1i(+1))/exp(c1i)*c1grmuzss
-c1grmuzss)*exp(c1i(+1))/exp(c1i)^2*c1grmuzss = 0;

// fonc capital
exp(c1q) = c1beta/c1grmuzss/exp(c1rpipd)*exp(c1lambdaqlead)/exp(c1lambdaq)*exp(c1rklead)+(1
-c1delta)*c1beta/c1grmuzss*exp(c1qlead)*exp(c1rpipdlead)/exp(c1rpipd)*exp(c1lambdaqlead)/exp(c1lambdaq);

// capital accumultion
exp(c1k)  = (1-c1delta)/c1grmuzss*exp(c1k(-1))+exp(c1zi)*exp(c1i)*(1-c1psii/2*(exp(c1i)/exp(c1i(-1))*c1grmuzss-c1grmuzss)^2);

// final consumption
exp(c1c) = ((c1omegacc)^(c1rhoo/(1+c1rhoo))*exp(c1cne)^(1/(1+c1rhoo))
+(c1omegaoc)^(c1rhoo/(1+c1rhoo))*(exp(c1muoc)*exp(c1oc))^(1/(1+c1rhoo)))^(1+c1rhoo);

// nonoil consumption
exp(c1cne) = ((c1omegac)^(c1rhoc/(1+c1rhoc))*exp(c1cd)^(1/(1+c1rhoc))+(c1omegamc*(exp(c1omegacm)))^(c1rhoc/(1+c1rhoc))*(exp(c1mc))^(1/(1+c1rhoc)))^(1+c1rhoc);

// fonc nonoil consumption
exp(c1rpcpd)*(c1omegacc*exp(c1c)/exp(c1cne))^(c1rhoo/(1+c1rhoo))*(c1omegac*exp(c1cne)/exp(c1cd))^(c1rhoc/(1+c1rhoc)) = 1;

// fonc imports
exp(c1rpmcpd) = exp(c1rpcpd)*(c1omegacc*exp(c1c)/exp(c1cne))^(c1rhoo/(1+c1rhoo))*(c1omegamc*(exp(c1omegacm))*exp(c1cne)/exp(c1mc))^(c1rhoc/(1+c1rhoc));

// fonc oil
exp(c1rpwopd) = exp(c1rpcpd) *(c1omegaoc*exp(c1c)/exp(c1muoc)/exp(c1oc))^(c1rhoo/(1+c1rhoo))*exp(c1muoc);

// investment
exp(c1i) = ((c1omegai)^(c1rhoi/(1+c1rhoi))*exp(c1id)^(1/(1+c1rhoi))+(c1omegami*exp(c1omegaim))^(c1rhoi/(1+c1rhoi))*(exp(c1mi))^(1/(1+c1rhoi)))^(1+c1rhoi);

// fonc domestic investment
exp(c1rpipd)*(c1omegai*exp(c1i)/exp(c1id))^(c1rhoi/(1+c1rhoi)) = 1;

// fonc imported investment
exp(c1rpmipd) = exp(c1rpipd)*(c1omegami*exp(c1omegaim)*exp(c1i)/exp(c1mi))^(c1rhoi/(1+c1rhoi));

// value added
exp(c1v) = ((c1omegak)^(c1rhov/(1+c1rhov))*(exp(c1k(-1))/c1grmuzss)^(1/(1+c1rhov))
+(c1omegal)^(c1rhov/(1+c1rhov))*(exp(c1zc)*exp(c1l))^(1/(1+c1rhov)))^(1+c1rhov);

// gross output
exp(c1y) = ((c1omegavy)^(c1rhoo/(1+c1rhoo))*(exp(c1v))^(1/(1+c1rhoo))+(c1omegaoy)^(c1rhoo/(1+c1rhoo))*(exp(c1muoc)*exp(c1oy))^(1/(1+c1rhoo)))^(1+c1rhoo);

// fonc capital in production
exp(c1rk) = exp(c1rmcpd)*(c1omegavy*exp(c1y)/exp(c1v))^(c1rhoo/(1+c1rhoo))*(c1omegak*exp(c1v)*c1grmuzss/exp(c1k(-1)))^(c1rhov/(1+c1rhov));

// fonc labor in production 
exp(c1w)/exp(c1zc) = exp(c1rmcpd)*(c1omegavy*exp(c1y)/exp(c1v))^(c1rhoo/(1+c1rhoo))*(c1omegal*exp(c1v)/exp(c1zc)/exp(c1l))^(c1rhov/(1+c1rhov));

// fonc oil in production 
exp(c1rpwopd) = exp(c1rmcpd)*(c1omegaoy*exp(c1y)/exp(c1muoc)/exp(c1oy))^(c1rhoo/(1+c1rhoo))*exp(c1muoc);

// resource constraint goods
exp(c1yd) = exp(c1cd)+exp(c1id)+exp(c1g)+exp(c1x);

// resource constraint oil 
exp(c1ow) = exp(c1oc) + exp(c1oy);

// real interest rate
1/(1+(c1rrs)) = c1beta/c1grmuzss*exp(c1lambdaqlead)/exp(c1lambdaq);

// imports
exp(c1m) = exp(c1rpmcpd)*exp(c1mc)+exp(c1rpmipd)*exp(c1mi);

// trade balance
(c1tbal) = (exp(c1x)-exp(c1m)+exp(c1rpwopd)*(c1shareyoy*c1yss*exp(c1yo)-exp(c1ow)))/exp(c1yd);

// goods trade balance
(c1gtbal) = (exp(c1x)-exp(c1m))/exp(c1yd);

// government spending
exp(c1g) = c1sharegy*exp(c1yd)*exp(c1shockgy);

// definition of nominal interest rate
1/(1+(c1rs)) = c1beta/c1grmuzss*(exp(c1lambdaqlead))/(exp(c1lambdaq))/(1+(c1dpdlead));

// definition of relative price nonoil good
(exp(c1rpnepd)) = (exp(c1rpcpd))*(c1omegacc*(exp(c1c))/(exp(c1cne)))^(c1rhoo/(1+c1rhoo));

// core inflation
(c1dcore) = log(exp(c1rpnepd)/exp(c1rpnepd(-1))*(c1pid));

// headline inflation
(c1dhead) = log(exp(c1rpcpd)/exp(c1rpcpd(-1))*(c1pid));

// oil price inflation
c1dpwo = log(exp(c1rpwopd)/exp(c1rpwopd(-1))*(c1pid))+log(c1grmuzoss);


//////////////////////////////////
// Foreign country bloc 
//////////////////////////////////

// fonc consumption
(exp(c2muc)*exp(c2c)-c2vkappa/c2grmuzss*exp(c2clag))^(-1) = exp(c2lambdaq)*exp(c2rpcpd);

// fonc labor 
exp(c2wdes) = c2chi0*(1-exp(c2l))^(-c2chi)/exp(c2lambdaq);

// fonc investment
1- exp(c2q)*exp(c2zi)*(1-c2psii/2*(exp(c2i)/exp(c2i(-1))*c2grmuzss-c2grmuzss)^2)
+exp(c2q)*exp(c2zi)*exp(c2i)*c2psii*(exp(c2i)/exp(c2i(-1))*c2grmuzss
-c2grmuzss)/exp(c2i(-1))*c2grmuzss-c2beta*exp(c2rpipdlead)/exp(c2rpipd)*exp(c2lambdaqlead)/exp(c2lambdaq)                                
*exp(c2qlead)*exp(c2zi(+1))*exp(c2i(+1))*c2psii*(exp(c2i(+1))/exp(c2i)*c2grmuzss
-c2grmuzss)*exp(c2i(+1))/exp(c2i)^2*c2grmuzss = 0;

// fonc capital
exp(c2q) = c2beta/c2grmuzss/exp(c2rpipd)*exp(c2lambdaqlead)/exp(c2lambdaq)*exp(c2rklead)+(1
-c2delta)*c2beta/c2grmuzss*exp(c2qlead)*exp(c2rpipdlead)/exp(c2rpipd)*exp(c2lambdaqlead)/exp(c2lambdaq);

// capital accumultion
(exp(c2k))  = (1-c2delta)/c2grmuzss*(exp(c2k(-1)))+(exp(c2zi))*(exp(c2i))*(1-c2psii/2*((exp(c2i))/(exp(c2i(-1)))*c2grmuzss-c2grmuzss)^2);

// final consumption
(exp(c2c)) = ((c2omegacc)^(c2rhoo/(1+c2rhoo))*(exp(c2cne))^(1/(1+c2rhoo))
+(c2omegaoc)^(c2rhoo/(1+c2rhoo))*((exp(c2muoc))*(exp(c2oc)))^(1/(1+c2rhoo)))^(1+c2rhoo);

// nonoil consumption
(exp(c2cne)) = ((c2omegac)^(c2rhoc/(1+c2rhoc))*(exp(c2cd))^(1/(1+c2rhoc))
+(c2omegamc*(exp(c2omegacm)))^(c2rhoc/(1+c2rhoc))*((exp(c2mc)))^(1/(1+c2rhoc)))^(1+c2rhoc);

// fonc nonoil consumption
(exp(c2rpcpd))*(c2omegacc*(exp(c2c))/(exp(c2cne)))^(c2rhoo/(1+c2rhoo))*(c2omegac*(exp(c2cne))/(exp(c2cd)))^(c2rhoc/(1
+c2rhoc)) = 1;

// fonc imports
(exp(c2rpmcpd)) = (exp(c2rpcpd))*(c2omegacc*(exp(c2c))/(exp(c2cne)))^(c2rhoo/(1+c2rhoo))*(c2omegamc*(exp(c2omegacm))*(exp(c2cne))/(exp(c2mc)))^(c2rhoc/(1
+c2rhoc));

// fonc oil
(exp(c2rpwopd)) = (exp(c2rpcpd)) *(c2omegaoc*(exp(c2c))/(exp(c2muoc))/(exp(c2oc)))^(c2rhoo/(1+c2rhoo))*(exp(c2muoc));

// investment
(exp(c2i)) = ((c2omegai)^(c2rhoi/(1+c2rhoi))*(exp(c2id))^(1/(1+c2rhoi))+(c2omegami*(exp(c2omegaim)))^(c2rhoi/(1
+c2rhoi))*((exp(c2mi)))^(1/(1+c2rhoi)))^(1+c2rhoi);

// fonc domestic investment
(exp(c2rpipd))*(c2omegai*(exp(c2i))/(exp(c2id)))^(c2rhoi/(1+c2rhoi)) = 1;

// fonc imported investment
(exp(c2rpmipd)) = (exp(c2rpipd))*(c2omegami*(exp(c2omegaim))*(exp(c2i))/(exp(c2mi)))^(c2rhoi/(1+c2rhoi));

// value added
(exp(c2v)) = ((c2omegak)^(c2rhov/(1+c2rhov))*((exp(c2k(-1)))/c2grmuzss)^(1/(1+c2rhov))
+(c2omegal)^(c2rhov/(1+c2rhov))*((exp(c2zc))*(exp(c2l)))^(1/(1+c2rhov)))^(1+c2rhov);

// gross output
(exp(c2y)) = ((c2omegavy)^(c2rhoo/(1+c2rhoo))*((exp(c2v)))^(1/(1+c2rhoo))+(c2omegaoy)^(c2rhoo/(1
+c2rhoo))*((exp(c2muoc))*(exp(c2oy)))^(1/(1+c2rhoo)))^(1+c2rhoo);

// fonc capital in production 
(exp(c2rk)) = (exp(c2rmcpd))*(c2omegavy*(exp(c2y))/(exp(c2v)))^(c2rhoo/(1+c2rhoo))*(c2omegak*(exp(c2v))*c2grmuzss/(exp(c2k(-1))))^(c2rhov/(1
+c2rhov));

// fonc labor in production  
(exp(c2w))/(exp(c2zc)) = (exp(c2rmcpd))*(c2omegavy*(exp(c2y))/(exp(c2v)))^(c2rhoo/(1+c2rhoo))*(c2omegal*(exp(c2v))/(exp(c2zc))/(exp(c2l)))^(c2rhov/(1+c2rhov));

// fonc oil in production 
(exp(c2rpwopd)) = (exp(c2rmcpd))*(c2omegaoy*(exp(c2y))/(exp(c2muoc))/(exp(c2oy)))^(c2rhoo/(1+c2rhoo))*(exp(c2muoc));

// resource constraint goods
(exp(c2yd)) = (exp(c2cd))+(exp(c2id))+(exp(c2g))+(exp(c2x));

// resource constraint oil 
(exp(c2ow)) = (exp(c2oc)) + (exp(c2oy));

// real interest rate
1/(1+(c2rrs)) = c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq));

// imports
(exp(c2m)) = (exp(c2rpmcpd))*(exp(c2mc))+(exp(c2rpmipd))*(exp(c2mi));

// trade balance
(c2tbal) = ((exp(c2x))-(exp(c2m))+(exp(c2rpwopd))*(c2shareyoy*c2yss*(exp(c2yo))-(exp(c2ow))))/(exp(c2yd));

// goods trade balance
(c2gtbal) = ((exp(c2x))-(exp(c2m)))/(exp(c2yd));

// government spending
(exp(c2g)) = c2sharegy*(exp(c2yd))*(exp(c2shockgy));

// definition of nominal interest rate
1/(1+(c2rs)) = c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(1+(c2dpdlead));

// definition of relative price nonoil good
(exp(c2rpnepd)) = (exp(c2rpcpd))*(c2omegacc*(exp(c2c))/(exp(c2cne)))^(c2rhoo/(1+c2rhoo));

// core inflation
(c2dcore) = log(exp(c2rpnepd)/exp(c2rpnepd(-1))*(c2pid));


////////////////////////
// international links
////////////////////////

// risk sharing
(exp(c2lambdaqlead))/(exp(c2lambdaq))*(exp(c2rpcpdlead))/(exp(c2rpcpd)) = (exp(-c1phibparm*(c1b)))*(exp(c1rerlead))/(exp(c1rer))*(exp(c1lambdaqlead))/(exp(c1lambdaq))*(exp(c1rpcpdlead))/(exp(c1rpcpd));

// international oil market
c2shareyoy*c2yss*(exp(c2yo))+c1shareyoy*c1yss*(exp(c1yo))*c1relc2  = (exp(c2ow)) + (exp(c1ow))*c1relc2;

// pice of oil abroad
(exp(c1rpwopd)) = (exp(c1rer))*(exp(c1rpcpd))/(exp(c2rpcpd))*(exp(c2rpwopd));

// international asset positions
(exp(c1rer))/(exp(c1rerlead))*(exp(c1rpcpd))/(exp(c1rpcpdlead))*(exp(c2rpcpdlead))/(exp(c2rpcpd))*c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(exp(
-c1phibparm*(c1blag)))*(exp(c1ydlead))/(exp(c1yd))*c1grmuzss*(c1b) = (c1blag)+(c1tbal);

// producer currency pricing home
(exp(c1rpmcpd)) = (exp(c1rer))*(exp(c1rpcpd))/(exp(c2rpcpd));

// producer currency pricing forein
(exp(c2rpmcpd)) = 1/(exp(c1rer))*(exp(c2rpcpd))/(exp(c1rpcpd));

// import prices home 
(exp(c1rpmipd)) = (exp(c1rpmcpd));


// import prices foreign
(exp(c2rpmipd)) = (exp(c2rpmcpd));

// home exports
(exp(c1x))  = 1/c1relc2*(exp(c2mc)+exp(c2mi));

// foreign exports
(exp(c2x))  = c1relc2*(exp(c1mc)+exp(c1mi));


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


//////////////////
// sticky wages
//////////////////

// definition of hw
(exp(c1hw)) = (1+(c1thetaw*(exp(c1thetawvar))))/(c1thetaw*(exp(c1thetawvar)))*(exp(c1wdes))/(exp(c1w))*(exp(c1l))
+ c1xiw*c1beta/c1grmuzss*(exp(c1lambdaqlead))/(exp(c1lambdaq))/(c1pidlead)*(c1omegalead)*((c1omegabar)/(c1omegalead))^(
-(1+(c1thetaw*(exp(c1thetawvar(+1)))))/(c1thetaw*(exp(c1thetawvar(+1)))))*(exp(c1hwlead));

// definition of gw
(exp(c1gw)) = (1+c1tauw)/(c1thetaw*(exp(c1thetawvar)))*(exp(c1l)) + c1xiw*c1beta/c1grmuzss*(exp(c1lambdaqlead))/(exp(c1lambdaq))/(c1pidlead)*(c1omegalead)*((c1omegabar)/(c1omegalead))^(1
-(1+(c1thetaw*(exp(c1thetawvar(+1)))))/(c1thetaw*(exp(c1thetawvar(+1)))))*(exp(c1gwlead));

// definition of wstar
(exp(c1wstar))/(exp(c1w)) = (exp(c1hw))/(exp(c1gw));

// wage evolution
(1-c1xiw)*((exp(c1wstar))/(exp(c1w)))^(-1/(c1thetaw*(exp(c1thetawvar))))+c1xiw*((c1omegabar(-1))/(c1omega))^(-1/(c1thetaw*(exp(c1thetawvar)))) = 1;

// wage indexation
(c1omegabar) = (c1omega)^c1iotaw*(c1pistar*c1grmuzss)^(1-c1iotaw);

// wage inflation definition
(c1omega) = (exp(c1w))/(exp(c1w(-1)))*c1grmuzss*(c1pid);

// definition of hw
(exp(c2hw)) = (1+(c2thetaw*(exp(c2thetawvar))))/(c2thetaw*(exp(c2thetawvar)))*(exp(c2wdes))/(exp(c2w))*(exp(c2l))
+ c2xiw*c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(c2pidlead)*(c2omegalead)*((c2omegabar)/(c2omegalead))^(
-(1+(c2thetaw*(exp(c2thetawvar(+1)))))/(c2thetaw*(exp(c2thetawvar(+1)))))*(exp(c2hwlead));

// definition of gw
(exp(c2gw)) = (1+c2tauw)/(c2thetaw*(exp(c2thetawvar)))*(exp(c2l)) + c2xiw*c2beta/c2grmuzss*(exp(c2lambdaqlead))/(exp(c2lambdaq))/(c2pidlead)*(c2omegalead)*((c2omegabar)/(c2omegalead))^(1
-(1+(c2thetaw*(exp(c2thetawvar(+1)))))/(c2thetaw*(exp(c2thetawvar(+1)))))*(exp(c2gwlead));

// definition of wstar
(exp(c2wstar))/(exp(c2w)) = (exp(c2hw))/(exp(c2gw));

// wage evolution
(1-c2xiw)*((exp(c2wstar))/(exp(c2w)))^(-1/(c2thetaw*(exp(c2thetawvar))))+c2xiw*((c2omegabar(-1))/(c2omega))^(
-1/(c2thetaw*(exp(c2thetawvar)))) = 1;

// wage indexation
(c2omegabar) = (c2omega)^c2iotaw*(c2pistar*c2grmuzss)^(1-c2iotaw);

// wage inflation definition
(c2omega) = (exp(c2w))/(exp(c2w(-1)))*c2grmuzss*(c2pid);

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
c1qlead = c1q(+1); 
c2qlead = c2q(+1); 
c1pidlead = c1pid(+1); 
c2pidlead = c2pid(+1); 
c1rpipdlead = c1rpipd(+1); 
c2rpipdlead = c2rpipd(+1); 
c1lambdaqlead = c1lambdaq(+1); 
c2lambdaqlead = c2lambdaq(+1); 
c1rklead = c1rk(+1); 
c2rklead = c2rk(+1); 
c1dpdlead = c1dpd(+1); 
c2dpdlead = c2dpd(+1); 
c1hplead = c1hp(+1); 
c2hplead = c2hp(+1); 
c1gplead = c1gp(+1); 
c2gplead = c2gp(+1); 
c1omegalead = c1omega(+1); 
c2omegalead = c2omega(+1); 
c1hwlead = c1hw(+1); 
c2hwlead = c2hw(+1); 
c1gwlead = c1gw(+1); 
c2gwlead = c2gw(+1); 


/////////////////////////
// exogenous variables
/////////////////////////

c1shockgy = c1rhogy*c1shockgy(-1) + c1scaleshockgyerr*c1shockgyerr;

c1zc = (1+c1rhozc1-c1rhozc2)*c1zc(-1) - c1rhozc1*c1zclag(-1) + c1scalezcerr*c1zcerr;

exp(c1zclag) = exp(c1zc(-1));

c1zi = c1rhozi*c1zi(-1) + c1scalezierr*c1zierr;

c1yo = (1+c1rhoyo1-c1rhoyo2)*c1yo(-1) - c1rhoyo1*c1lagyo(-1) + c1scaleyoerr*c1yoerr;

exp(c1lagyo) = exp(c1yo(-1));
    
c1muoc = (1+c1rhomuoc1-c1rhomuoc2)*c1muoc(-1) - c1rhomuoc1*c1lagmuoc(-1)+ c1scalemuocerr*c1muocerr;

exp(c1lagmuoc) = exp(c1muoc(-1));

c1muc = c1rhomuc * c1muc(-1)+ c1scalemucerr*0.01*c1mucerr;

c1omegacm = (1+c1rhoomegacm1-c1rhoomegacm2)*c1omegacm(-1) - c1rhoomegacm1*c1lagomegacm(-1)+ c1scaleomegacmerr*c1omegacmerr;

exp(c1lagomegacm) = exp(c1omegacm(-1));

exp(c1omegaim) = exp(c1omegacm);

c1thetapvar = c1rhothetapvar*c1thetapvar(-1)+c1scalethetapvarerr*c1thetapvarerr;

c1thetawvar = c1rhothetawvar*c1thetawvar(-1)+c1scalethetawvarerr*c1thetawvarerr;

c2shockgy = c2rhogy*c2shockgy(-1) + c2scaleshockgyerr*c2shockgyerr;

c2zc = (1+c2rhozc1-c2rhozc2)*c2zc(-1) - c2rhozc1*c2zclag(-1) + c2scalezcerr*c2zcerr;

exp(c2zclag) = exp(c2zc(-1));

c2zi = c2rhozi*c2zi(-1) + c2scalezierr*c2zierr;

c2yo = (1+c2rhoyo1-c2rhoyo2)*c2yo(-1) - c2rhoyo1*c2lagyo(-1) + c2scaleyoerr*c2yoerr;

exp(c2lagyo) = exp(c2yo(-1));

c2muoc = (1+c2rhomuoc1-c2rhomuoc2)*c2muoc(-1) - c2rhomuoc1*c2lagmuoc(-1)+ c2scalemuocerr*c2muocerr;

exp(c2lagmuoc) = exp(c2muoc(-1));

c2muc = c2rhomuc * c2muc(-1)+ c2scalemucerr*0.01*c2mucerr;

c2omegacm = (1+c2rhoomegacm1-c2rhoomegacm2)*c2omegacm(-1) - c2rhoomegacm1*c2lagomegacm(-1)+ c2scaleomegacmerr*c2omegacmerr;

exp(c2lagomegacm) = exp(c2omegacm(-1));

exp(c2omegaim) = exp(c2omegacm);

c2thetapvar = c2rhothetapvar*c2thetapvar(-1)+c2scalethetapvarerr*c2thetapvarerr;

c2thetawvar = c2rhothetawvar*c2thetawvar(-1)+c2scalethetawvarerr*c2thetawvarerr;

c1pitar = c1rhopitar*c1pitar(-1) + c1scalepitarerr*c1pitarerr;

c2pitar = c2rhopitar*c2pitar(-1) + c2scalepitarerr*c2pitarerr;

end;


shocks;
var c1shockgyerr = 1;
var c1zcerr = 1;
var c1zierr = 1;
var c1yoerr = 1;
var c1muocerr = 1;
var c1mucerr = 1;
var c1omegacmerr = 1;
var c2shockgyerr = 0;
var c2zcerr = 1;
var c2zierr = 0;
var c2yoerr = 1;
var c2muocerr = 1;
var c2mucerr = 1;
var c2omegacmerr = 1;
var c2thetapvarerr = 0;
var c1thetapvarerr = 1;
var c2thetawvarerr = 0;
var c1thetawvarerr = 1;
var c1pitarerr = 1;
var c2pitarerr = 0;
end;

steady;

check;

stoch_simul(order=2,nocorr,noprint,irf=0);
//stoch_simul(order=2,nomoments,nocorr,noprint,irf=0);
