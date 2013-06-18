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
 
var lmult1,  lmult2,  lmult3,  lmult4,  lmult5,  lmult6,  lmult7,   
    lmult8,  lmult9,  lmult10,  lmult11,  lmult12,  lmult13,  lmult14,   
    lmult15,  lmult16,  lmult17,  lmult18,  lmult19,  lmult20,  lmult21,   
    lmult22,  lmult23,  lmult24,  lmult25,  lmult26,  lmult27,  lmult28,   
    lmult29,  lmult30,  lmult31,  lmult32,  lmult33,  lmult34,  lmult35,   
    lmult36,  lmult37,  lmult38,  lmult39,  lmult40,  lmult41,  lmult42,   
    lmult43,  lmult44,  lmult45,  lmult46,  lmult47,  lmult48,  lmult49,   
    lmult50,  lmult51,  lmult52,  lmult53,  lmult54,  lmult55,  lmult56,   
    lmult57,  lmult58,  lmult59,  lmult60,  lmult61,  lmult62,  lmult63,   
    lmult64,  lmult65,  lmult66,  lmult67,  lmult68,  lmult69,  lmult70,   
    lmult71,  lmult72,  lmult73,  lmult74,  lmult75,  lmult76,  lmult77,   
    lmult78,  lmult79,  lmult80,  lmult81,  lmult82,  lmult83,  lmult84,   
    lmult85,  lmult86,  lmult87,  lmult88,  lmult89,  lmult90,  lmult91,   
    lmult92,  lmult93,  lmult94,  lmult95,  lmult96,  lmult97,  lmult98,   
    lmult99,  lmult100,  lmult101,  lmult102,  lmult103,  lmult104,   
    lmult105,  lmult106,  lmult107,  lmult108,  lmult109,  lmult110,   
    lmult111,  lmult112,  lmult113,  lmult114,  lmult115,  lmult116,   
    lmult117,  lmult118,  lmult119,  lmult120,  lmult121,  lmult122,   
    lmult123,  lmult124,  lmult125,  lmult126,  lmult127,  lmult128,   
    lmult129; 
  
model; 
 
////////////////////////////////// 
// Monetary policy bloc 
////////////////////////////////// 
 
Util = omega_welf1*Util1 + omega_welf2*Util2; 
Welf = Util + nbeta*Welf(1); 
 
// Utility, country 1 
Util1 = 1/exp(c1muc)*log(exp(c1muc)*exp(c1c)-c1vkappa/c1grmuzss*exp(c1clag))+c1chi0/(1-c1chi)*(1-exp(c1l))^(1-c1chi); 
 
// Welfare, country 1 
//Welf1 = Util1 + nbeta*Welf1(1); 
 
// Utility, country 2 
Util2 = 1/exp(c2muc)*log(exp(c2muc)*exp(c2c)-c2vkappa/c2grmuzss*exp(c2clag))+c2chi0/(1-c2chi)*(1-exp(c2l))^(1-c2chi); 
 
// Welfare, country 2 
//Welf2 = Util2+ nbeta*Welf2(1); 
 
// Policymaker's First-Order Conditions 
c1phibparm*lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - lmult103(+1)*nbeta + (c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult103 + lmult66*((c1b*c2beta*c1grmuzss*c1phibparm*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss - 1); 
lmult10*exp(c1c) - lmult101(+1)*nbeta - (lmult1*exp(c1c))/(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss) - (lmult5*exp(c1c)*exp(c1muc))/(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2 - (c1omegacc*c1rhoo*lmult31*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegaoc*c1rhoo*lmult14*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegacc*c1rhoo*lmult13*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) + (c1omegacc*c1rhoo*lmult12*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1); 
- lmult23*exp(c1cd) - c1omegac^(c1rhoc/(c1rhoc + 1))*lmult11*exp(c1cd)*exp(c1cd)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc - (c1omegac*c1rhoc*lmult12*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
lmult101 + (c1vkappa*lmult5*exp(c1clag))/(c1grmuzss*(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2) + (c1vkappa*lmult1*exp(-c1muc)*exp(c1clag))/(c1grmuzss*(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)); 
lmult13*((c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) - (c1omegamc*c1rhoc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1)) + lmult11*exp(c1cne) + lmult12*((c1omegac*c1rhoc*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - (c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1)) - c1omegacc^(c1rhoo/(c1rhoo + 1))*lmult10*exp(c1cne)*exp(c1cne)^(1/(c1rhoo + 1) - 1)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo + (c1omegacc*c1rhoo*lmult31*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1); 
lmult32; 
lmult79*exp(c1deltad) - lmult78*exp(c1deltad)*exp(c1yd) - (c1xip*lmult79(+1)*nbeta*exp(c1deltad))/(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
lmult33; 
- lmult3 - lmult80 - lmult118(-1)/nbeta; 
lmult118 + (c1beta*lmult30*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)^2); 
lmult34; 
lmult29*exp(c1g) - lmult23*exp(c1g); 
lmult74*exp(c1gp) - lmult122(-1)/nbeta + lmult75*exp(-c1gp)*exp(c1hp); 
lmult122 - c1beta*c1xip*lmult74*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
lmult28; 
lmult90*exp(c1gw) - lmult128(-1)/nbeta + lmult91*exp(-c1gw)*exp(c1hw); 
lmult128 - (c1beta*c1omegalead*c1xiw*lmult90*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead); 
lmult73*exp(c1hp) - lmult120(-1)/nbeta - lmult75*exp(-c1gp)*exp(c1hp); 
lmult120 - (c1beta*c1xip*lmult73*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
lmult89*exp(c1hw) - lmult126(-1)/nbeta - lmult91*exp(-c1gw)*exp(c1hw); 
lmult126 - (c1beta*c1omegalead*c1xiw*lmult89*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)); 
lmult7*(c1grmuzss^2*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(c1q)*exp(c1zi) - 2*c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i)) + c1beta*c1grmuzss^2*c1psii*exp(-3*c1i)*exp(3*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1)) - 2*c1beta*c1grmuzss*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) + lmult15*exp(c1i) + lmult9*(exp(c1i)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(2*c1i)*exp(-c1i(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) - lmult7(+1)*nbeta*(c1grmuzss^2*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(c1q(+1))*exp(c1zi(+1)) - 2*c1grmuzss*c1psii*exp(-c1i)*exp(c1i(+1))*exp(c1q(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) - (lmult7(-1)*(c1beta*c1grmuzss^2*c1psii*exp(3*c1i)*exp(-3*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi) - 2*c1beta*c1grmuzss*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))))/nbeta + c1grmuzss*c1psii*lmult9(+1)*nbeta*exp(-c1i)*exp(2*c1i(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))) + (c1omegai*c1rhoi*lmult16*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - (c1omegami*c1rhoi*lmult17*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
- lmult23*exp(c1id) - c1omegai^(c1rhoi/(c1rhoi + 1))*lmult15*exp(c1id)*exp(c1id)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi - (c1omegai*c1rhoi*lmult16*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
lmult9*exp(c1k) + (lmult9(+1)*nbeta*exp(c1k)*(c1delta - 1))/c1grmuzss - (c1omegak^(c1rhov/(c1rhov + 1))*lmult18(+1)*nbeta*exp(c1k)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l(+1))*exp(c1zc(+1)))^(1/(c1rhov + 1)))^c1rhov*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1) - 1))/c1grmuzss + (c1grmuzss*c1omegak*c1rhov*lmult20(+1)*nbeta*exp(-c1k)*exp(c1rmcpd(+1))*exp(c1v(+1))*(c1omegavy*exp(-c1v(+1))*exp(c1y(+1)))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k)*exp(c1v(+1)))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1); 
(c1chi0*lmult1*exp(c1l))/(1 - exp(c1l))^c1chi - (lmult90*exp(-c1thetawvar)*exp(c1l)*(c1tauw + 1))/c1thetaw - (c1chi*c1chi0*lmult6*exp(-c1lambdaq)*exp(c1l))/(1 - exp(c1l))^(c1chi + 1) - c1omegal^(c1rhov/(c1rhov + 1))*lmult18*exp(c1l)*exp(c1zc)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k(-1))/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1)))^c1rhov*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1) - 1) - (lmult89*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw + (c1omegal*c1rhov*lmult21*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1); 
lmult8*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - lmult114(-1)/nbeta - lmult5*exp(c1lambdaq)*exp(c1rpcpd) + (c1chi0*lmult6*exp(-c1lambdaq))/(1 - exp(c1l))^c1chi + (c1beta*lmult25*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss + (c1beta*lmult30*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) + (c1beta*c1xip*lmult73*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c1beta*c1xip*lmult74*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1beta*c1omegalead*c1xiw*lmult89*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c1xiw*lmult90*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) - c1beta*c1grmuzss*c1psii*lmult7*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
lmult114 - lmult8*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - (c1beta*lmult25*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss - (c1beta*lmult30*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) - (c1beta*c1xip*lmult73*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c1beta*c1xip*lmult74*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1beta*c1omegalead*c1xiw*lmult89*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) - (c1beta*c1omegalead*c1xiw*lmult90*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + c1beta*c1grmuzss*c1psii*lmult7*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
lmult26*exp(c1m) + lmult27*exp(-c1yd)*exp(c1m) + lmult28*exp(-c1yd)*exp(c1m); 
(c1omegamc*c1rhoc*lmult13*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - c1relc2*lmult72*exp(c1mc) - lmult11*exp(c1mc)*exp(c1mc)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - lmult26*exp(c1mc)*exp(c1rpmcpd); 
(c1omegami*c1rhoi*lmult17*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - c1relc2*lmult72*exp(c1mi) - lmult15*exp(c1mi)*exp(c1mi)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) - lmult26*exp(c1mi)*exp(c1rpmipd); 
(c1omegaoc*c1rhoo*lmult14*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c1omegaoc^(c1rhoo/(c1rhoo + 1))*lmult10*exp(c1muoc)*exp(c1oc)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1) - 1) - lmult24*exp(c1oc); 
lmult94 - lmult124(-1)/nbeta - c1iotaw*c1omega^(c1iotaw - 1)*lmult93*(c1grmuzss*c1pistar)^(1 - c1iotaw) + (c1omegabar(-1)*c1xiw*lmult92*exp(-c1thetawvar))/(c1omega^2*c1thetaw*(c1omegabar(-1)/c1omega)^(exp(-c1thetawvar)/c1thetaw + 1)); 
lmult93 - (c1xiw*lmult92(+1)*nbeta*exp(-c1thetawvar(+1)))/(c1omega(+1)*c1thetaw*(c1omegabar/c1omega(+1))^(exp(-c1thetawvar(+1))/c1thetaw + 1)) + (c1beta*c1xiw*lmult90*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1xiw*lmult89*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1)); 
lmult124 - lmult90*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1omegalead*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))) - lmult89*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1omegalead*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1))); 
lmult24*exp(c1ow) - c1relc2*lmult64*exp(c1ow) + lmult27*exp(-c1yd)*exp(c1ow)*exp(c1rpwopd); 
(c1omegaoy*c1rhoo*lmult22*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c1omegaoy^(c1rhoo/(c1rhoo + 1))*lmult19*exp(c1muoc)*exp(c1oy)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1) - 1) - lmult24*exp(c1oy); 
lmult80/c1pid - lmult33/c1pid - lmult34/c1pid - lmult32/c1pid - lmult110(-1)/nbeta - c1grmuzss*lmult94*exp(-c1w(-1))*exp(c1w) - c1iotap*c1pid^(c1iotap - 1)*c1pistar^(1 - c1iotap)*lmult77 + (c1pidbar(-1)*c1xip*lmult76*exp(-c1thetapvar))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^(exp(-c1thetapvar)/c1thetap + 1)) - (c1pidbar(-1)*c1xip*lmult79*exp(-c1thetapvar)*exp(c1deltad(-1))*(c1thetap*exp(c1thetapvar) + 1))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
lmult77 - (c1xip*lmult76(+1)*nbeta*exp(-c1thetapvar(+1)))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^(exp(-c1thetapvar(+1))/c1thetap + 1)) + (c1xip*lmult79(+1)*nbeta*exp(-c1thetapvar(+1))*exp(c1deltad)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)) + (c1beta*c1xip*lmult74*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1xip*lmult73*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
lmult110 - (c1beta*c1pidbar*c1xip*lmult74*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead^2*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1omegalead*c1xiw*lmult89*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead^2*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c1xiw*lmult90*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead^2) - (c1beta*c1pidbar*c1xip*lmult73*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead^2*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
lmult75*exp(c1pstar) + (lmult76*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1))/(c1thetap*exp(c1pstar)^(exp(-c1thetapvar)/c1thetap + 1)) - (lmult79*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1)*(c1thetap*exp(c1thetapvar) + 1))/(c1thetap*exp(c1pstar)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
lmult7*(exp(c1q)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) + lmult8*exp(c1q) - lmult108(-1)/nbeta; 
lmult108 + (c1beta*lmult8*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c1psii*lmult7*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
lmult68*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - lmult67*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - lmult105(-1)/nbeta - lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult105 - lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult20*exp(c1rk) - lmult116(-1)/nbeta; 
lmult116 - (c1beta*lmult8*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss; 
- lmult22*exp(c1muoc)*exp(c1rmcpd)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1)) - lmult21*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)) - lmult20*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)) - (lmult73*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap; 
lmult33(+1)*nbeta - lmult33 - lmult106(-1)/nbeta - lmult5*exp(c1lambdaq)*exp(c1rpcpd) - lmult31*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) - lmult13*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - lmult14*exp(c1muoc)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) + lmult12*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)) - lmult67*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) + lmult68*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult106 - lmult63*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult8*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - lmult112(-1)/nbeta - lmult17*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) + lmult16*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1)) - c1beta*c1grmuzss*c1psii*lmult7*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
lmult112 + (c1beta*lmult8*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c1psii*lmult7*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
lmult13*exp(c1rpmcpd) + lmult67*exp(c1rpmcpd) - lmult69*exp(c1rpmcpd) - lmult26*exp(c1mc)*exp(c1rpmcpd); 
lmult17*exp(c1rpmipd) + lmult69*exp(c1rpmipd) - lmult26*exp(c1mi)*exp(c1rpmipd); 
lmult32(+1)*nbeta - lmult32 + lmult31*exp(c1rpnepd); 
lmult34(+1)*nbeta - lmult34 + lmult14*exp(c1rpwopd) + lmult22*exp(c1rpwopd) + lmult65*exp(c1rpwopd) + lmult27*exp(-c1yd)*exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo)); 
-lmult25/(c1rrs + 1)^2; 
-lmult30/(c1rs + 1)^2; 
lmult27 - lmult66; 
lmult21*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegal*c1rhov*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) + lmult18*exp(c1v) + lmult20*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1grmuzss*c1omegak*c1rhov*exp(-c1k(-1))*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) - c1omegavy^(c1rhoo/(c1rhoo + 1))*lmult19*exp(c1v)*exp(c1v)^(1/(c1rhoo + 1) - 1)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo; 
lmult21*exp(-c1zc)*exp(c1w) - lmult91*exp(-c1w)*exp(c1wstar) - c1grmuzss*c1pid*lmult94*exp(-c1w(-1))*exp(c1w) + c1grmuzss*c1pid(+1)*lmult94(+1)*nbeta*exp(-c1w)*exp(c1w(+1)) + (lmult89*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw - (lmult92*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
lmult6*exp(c1wdes) - (lmult89*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw; 
lmult91*exp(-c1w)*exp(c1wstar) + (lmult92*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
lmult71*exp(c1x) - lmult23*exp(c1x) - lmult27*exp(-c1yd)*exp(c1x) - lmult28*exp(-c1yd)*exp(c1x); 
lmult19*exp(c1y) + lmult78*exp(c1y) - (c1omegaoy*c1rhoo*lmult22*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegavy*c1rhoo*lmult20*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegavy*c1rhoo*lmult21*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1); 
lmult23*exp(c1yd) - lmult104(-1)/nbeta - lmult28*exp(-c1yd)*(exp(c1m) - exp(c1x)) - lmult78*exp(c1deltad)*exp(c1yd) - lmult27*exp(-c1yd)*(exp(c1m) - exp(c1x) + exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo))) - c1sharegy*lmult29*exp(c1shockgy)*exp(c1yd) - (lmult74*exp(-c1thetapvar)*exp(c1yd)*(c1taup + 1))/c1thetap - (lmult73*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap - (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult104 + (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult40*exp(c2c) - lmult102(+1)*nbeta - (lmult2*exp(c2c))/(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss) - (lmult35*exp(c2c)*exp(c2muc))/(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2 - (c2omegacc*c2rhoo*lmult61*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegaoc*c2rhoo*lmult44*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegacc*c2rhoo*lmult43*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) + (c2omegacc*c2rhoo*lmult42*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1); 
- lmult53*exp(c2cd) - c2omegac^(c2rhoc/(c2rhoc + 1))*lmult41*exp(c2cd)*exp(c2cd)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc - (c2omegac*c2rhoc*lmult42*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1); 
lmult102 + (c2vkappa*lmult35*exp(c2clag))/(c2grmuzss*(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2) + (c2vkappa*lmult2*exp(-c2muc)*exp(c2clag))/(c2grmuzss*(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)); 
lmult43*((c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) - (c2omegamc*c2rhoc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1)) + lmult41*exp(c2cne) + lmult42*((c2omegac*c2rhoc*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - (c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1)) - c2omegacc^(c2rhoo/(c2rhoo + 1))*lmult40*exp(c2cne)*exp(c2cne)^(1/(c2rhoo + 1) - 1)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo + (c2omegacc*c2rhoo*lmult61*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1); 
lmult62; 
lmult87*exp(c2deltad) - lmult86*exp(c2deltad)*exp(c2yd) - (c2xip*lmult87(+1)*nbeta*exp(c2deltad))/(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
- lmult4 - lmult88 - lmult119(-1)/nbeta; 
lmult119 + (c2beta*lmult60*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)^2); 
lmult59*exp(c2g) - lmult53*exp(c2g); 
lmult82*exp(c2gp) - lmult123(-1)/nbeta + lmult83*exp(-c2gp)*exp(c2hp); 
lmult123 - c2beta*c2xip*lmult82*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
lmult58; 
lmult96*exp(c2gw) - lmult129(-1)/nbeta + lmult97*exp(-c2gw)*exp(c2hw); 
lmult129 - (c2beta*c2omegalead*c2xiw*lmult96*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead); 
lmult81*exp(c2hp) - lmult121(-1)/nbeta - lmult83*exp(-c2gp)*exp(c2hp); 
lmult121 - (c2beta*c2xip*lmult81*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
lmult95*exp(c2hw) - lmult127(-1)/nbeta - lmult97*exp(-c2gw)*exp(c2hw); 
lmult127 - (c2beta*c2omegalead*c2xiw*lmult95*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)); 
lmult37*(c2grmuzss^2*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(c2q)*exp(c2zi) - 2*c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i)) + c2beta*c2grmuzss^2*c2psii*exp(-3*c2i)*exp(3*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1)) - 2*c2beta*c2grmuzss*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) + lmult45*exp(c2i) + lmult39*(exp(c2i)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(2*c2i)*exp(-c2i(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) - lmult37(+1)*nbeta*(c2grmuzss^2*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(c2q(+1))*exp(c2zi(+1)) - 2*c2grmuzss*c2psii*exp(-c2i)*exp(c2i(+1))*exp(c2q(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) - (lmult37(-1)*(c2beta*c2grmuzss^2*c2psii*exp(3*c2i)*exp(-3*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi) - 2*c2beta*c2grmuzss*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))))/nbeta + c2grmuzss*c2psii*lmult39(+1)*nbeta*exp(-c2i)*exp(2*c2i(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c2omegai*c2rhoi*lmult46*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - (c2omegami*c2rhoi*lmult47*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
- lmult53*exp(c2id) - c2omegai^(c2rhoi/(c2rhoi + 1))*lmult45*exp(c2id)*exp(c2id)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi - (c2omegai*c2rhoi*lmult46*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
lmult39*exp(c2k) + (lmult39(+1)*nbeta*exp(c2k)*(c2delta - 1))/c2grmuzss - (c2omegak^(c2rhov/(c2rhov + 1))*lmult48(+1)*nbeta*exp(c2k)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l(+1))*exp(c2zc(+1)))^(1/(c2rhov + 1)))^c2rhov*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1) - 1))/c2grmuzss + (c2grmuzss*c2omegak*c2rhov*lmult50(+1)*nbeta*exp(-c2k)*exp(c2rmcpd(+1))*exp(c2v(+1))*(c2omegavy*exp(-c2v(+1))*exp(c2y(+1)))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k)*exp(c2v(+1)))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1); 
(c2chi0*lmult2*exp(c2l))/(1 - exp(c2l))^c2chi - (lmult96*exp(-c2thetawvar)*exp(c2l)*(c2tauw + 1))/c2thetaw - (c2chi*c2chi0*lmult36*exp(-c2lambdaq)*exp(c2l))/(1 - exp(c2l))^(c2chi + 1) - c2omegal^(c2rhov/(c2rhov + 1))*lmult48*exp(c2l)*exp(c2zc)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k(-1))/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1)))^c2rhov*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1) - 1) - (lmult95*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw + (c2omegal*c2rhov*lmult51*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1); 
lmult38*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - lmult115(-1)/nbeta - lmult35*exp(c2lambdaq)*exp(c2rpcpd) + (c2chi0*lmult36*exp(-c2lambdaq))/(1 - exp(c2l))^c2chi - lmult63*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c2beta*lmult55*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss + (c2beta*lmult60*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) + (c2beta*c2xip*lmult81*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + c2beta*c2xip*lmult82*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + (c2beta*c2omegalead*c2xiw*lmult95*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c2xiw*lmult96*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) - c2beta*c2grmuzss*c2psii*lmult37*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) - (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult115 - lmult38*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) + lmult63*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c2beta*lmult55*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss - (c2beta*lmult60*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) - (c2beta*c2xip*lmult81*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - c2beta*c2xip*lmult82*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - (c2beta*c2omegalead*c2xiw*lmult95*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) - (c2beta*c2omegalead*c2xiw*lmult96*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + c2beta*c2grmuzss*c2psii*lmult37*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult56*exp(c2m) + lmult57*exp(-c2yd)*exp(c2m) + lmult58*exp(-c2yd)*exp(c2m); 
(c2omegamc*c2rhoc*lmult43*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - lmult56*exp(c2mc)*exp(c2rpmcpd) - lmult41*exp(c2mc)*exp(c2mc)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - (lmult71*exp(c2mc))/c1relc2; 
(c2omegami*c2rhoi*lmult47*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - lmult56*exp(c2mi)*exp(c2rpmipd) - lmult45*exp(c2mi)*exp(c2mi)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) - (lmult71*exp(c2mi))/c1relc2; 
(c2omegaoc*c2rhoo*lmult44*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoc^(c2rhoo/(c2rhoo + 1))*lmult40*exp(c2muoc)*exp(c2oc)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1) - 1) - lmult54*exp(c2oc); 
lmult100 - lmult125(-1)/nbeta - c2iotaw*c2omega^(c2iotaw - 1)*lmult99*(c2grmuzss*c2pistar)^(1 - c2iotaw) + (c2omegabar(-1)*c2xiw*lmult98*exp(-c2thetawvar))/(c2omega^2*c2thetaw*(c2omegabar(-1)/c2omega)^(exp(-c2thetawvar)/c2thetaw + 1)); 
lmult99 - (c2xiw*lmult98(+1)*nbeta*exp(-c2thetawvar(+1)))/(c2omega(+1)*c2thetaw*(c2omegabar/c2omega(+1))^(exp(-c2thetawvar(+1))/c2thetaw + 1)) + (c2beta*c2xiw*lmult96*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2xiw*lmult95*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1)); 
lmult125 - lmult96*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2omegalead*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))) - lmult95*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2omegalead*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1))); 
lmult54*exp(c2ow) - lmult64*exp(c2ow) + lmult57*exp(-c2yd)*exp(c2ow)*exp(c2rpwopd); 
(c2omegaoy*c2rhoo*lmult52*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoy^(c2rhoo/(c2rhoo + 1))*lmult49*exp(c2muoc)*exp(c2oy)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1) - 1) - lmult54*exp(c2oy); 
lmult88/c2pid - lmult62/c2pid - lmult111(-1)/nbeta - c2grmuzss*lmult100*exp(-c2w(-1))*exp(c2w) - c2iotap*c2pid^(c2iotap - 1)*c2pistar^(1 - c2iotap)*lmult85 + (c2pidbar(-1)*c2xip*lmult84*exp(-c2thetapvar))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^(exp(-c2thetapvar)/c2thetap + 1)) - (c2pidbar(-1)*c2xip*lmult87*exp(-c2thetapvar)*exp(c2deltad(-1))*(c2thetap*exp(c2thetapvar) + 1))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
lmult85 - (c2xip*lmult84(+1)*nbeta*exp(-c2thetapvar(+1)))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^(exp(-c2thetapvar(+1))/c2thetap + 1)) + (c2xip*lmult87(+1)*nbeta*exp(-c2thetapvar(+1))*exp(c2deltad)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)) + (c2beta*c2xip*lmult82*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2xip*lmult81*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
lmult111 - (c2beta*c2pidbar*c2xip*lmult82*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead^2*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2omegalead*c2xiw*lmult95*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead^2*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c2xiw*lmult96*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead^2) - (c2beta*c2pidbar*c2xip*lmult81*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead^2*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
lmult83*exp(c2pstar) + (lmult84*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1))/(c2thetap*exp(c2pstar)^(exp(-c2thetapvar)/c2thetap + 1)) - (lmult87*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1)*(c2thetap*exp(c2thetapvar) + 1))/(c2thetap*exp(c2pstar)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
lmult37*(exp(c2q)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) + lmult38*exp(c2q) - lmult109(-1)/nbeta; 
lmult109 + (c2beta*lmult38*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*lmult37*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
lmult50*exp(c2rk) - lmult117(-1)/nbeta; 
lmult117 - (c2beta*lmult38*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss; 
- lmult52*exp(c2muoc)*exp(c2rmcpd)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1)) - lmult51*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)) - lmult50*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)) - (lmult81*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
lmult42*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)) - lmult35*exp(c2lambdaq)*exp(c2rpcpd) - lmult61*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - lmult43*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - lmult44*exp(c2muoc)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - lmult107(-1)/nbeta + lmult67*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - lmult68*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) + lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) - lmult63*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult107 + lmult63*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c1b*c2beta*c1grmuzss*lmult66*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
lmult38*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - lmult113(-1)/nbeta - lmult47*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) + lmult46*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1)) - c2beta*c2grmuzss*c2psii*lmult37*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
lmult113 + (c2beta*lmult38*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*lmult37*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
lmult43*exp(c2rpmcpd) + lmult68*exp(c2rpmcpd) - lmult70*exp(c2rpmcpd) - lmult56*exp(c2mc)*exp(c2rpmcpd); 
lmult47*exp(c2rpmipd) + lmult70*exp(c2rpmipd) - lmult56*exp(c2mi)*exp(c2rpmipd); 
lmult62(+1)*nbeta - lmult62 + lmult61*exp(c2rpnepd); 
lmult44*exp(c2rpwopd) + lmult52*exp(c2rpwopd) + lmult57*exp(-c2yd)*exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo)) - lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd); 
-lmult55/(c2rrs + 1)^2; 
-lmult60/(c2rs + 1)^2; 
lmult57; 
lmult51*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegal*c2rhov*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) + lmult48*exp(c2v) + lmult50*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2grmuzss*c2omegak*c2rhov*exp(-c2k(-1))*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) - c2omegavy^(c2rhoo/(c2rhoo + 1))*lmult49*exp(c2v)*exp(c2v)^(1/(c2rhoo + 1) - 1)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo; 
lmult51*exp(-c2zc)*exp(c2w) - lmult97*exp(-c2w)*exp(c2wstar) - c2grmuzss*c2pid*lmult100*exp(-c2w(-1))*exp(c2w) + c2grmuzss*c2pid(+1)*lmult100(+1)*nbeta*exp(-c2w)*exp(c2w(+1)) + (lmult95*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw - (lmult98*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
lmult36*exp(c2wdes) - (lmult95*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw; 
lmult97*exp(-c2w)*exp(c2wstar) + (lmult98*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
lmult72*exp(c2x) - lmult53*exp(c2x) - lmult57*exp(-c2yd)*exp(c2x) - lmult58*exp(-c2yd)*exp(c2x); 
lmult49*exp(c2y) + lmult86*exp(c2y) - (c2omegaoy*c2rhoo*lmult52*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegavy*c2rhoo*lmult50*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegavy*c2rhoo*lmult51*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1); 
lmult53*exp(c2yd) - lmult58*exp(-c2yd)*(exp(c2m) - exp(c2x)) - lmult86*exp(c2deltad)*exp(c2yd) - lmult57*exp(-c2yd)*(exp(c2m) - exp(c2x) + exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo))) - c2sharegy*lmult59*exp(c2shockgy)*exp(c2yd) - (lmult82*exp(-c2thetapvar)*exp(c2yd)*(c2taup + 1))/c2thetap - (lmult81*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
lmult3; 
lmult4; 
lmult1 + omega_welf1; 
lmult2 + omega_welf2; 
//c1rs = (1+c1rsss)*(((1+(c1rs(-1)))/(1+c1rsss))^c1gamrs*(((1+(c1dcore))/(1+log(c1pistar)))*((1+(c1dcore))/(1+log(c1pistar)))^c1gamdpc)^(1-c1gamrs))-1; 
 
//c2rs = (1+c2rsss)*(((1+(c2rs(-1)))/(1+c2rsss))^c2gamrs*(((1+(c2dcore))/(1+log(c2pistar)))*((1+(c2dcore))/(1+log(c2pistar)))^c2gamdpc)^(1-c2gamrs))-1; 
 
rate1 = c1dpd; 
rate2 = c2dpd; 
 
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
 
//stoch_simul(order=1,nocorr,noprint,irf=0); 
stoch_simul(order=2,nocorr,noprint,irf=0); 
