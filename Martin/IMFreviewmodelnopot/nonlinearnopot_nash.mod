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
 
var c1lmult1,  c1lmult2,  c1lmult3,  c1lmult4,  c1lmult5,  c1lmult6,   
    c1lmult7,  c1lmult8,  c1lmult9,  c1lmult10,  c1lmult11,  c1lmult12,   
    c1lmult13,  c1lmult14,  c1lmult15,  c1lmult16,  c1lmult17,  c1lmult18,   
    c1lmult19,  c1lmult20,  c1lmult21,  c1lmult22,  c1lmult23,  c1lmult24,   
    c1lmult25,  c1lmult26,  c1lmult27,  c1lmult28,  c1lmult29,  c1lmult30,   
    c1lmult31,  c1lmult32,  c1lmult33,  c1lmult34,  c1lmult35,  c1lmult36,   
    c1lmult37,  c1lmult38,  c1lmult39,  c1lmult40,  c1lmult41,  c1lmult42,   
    c1lmult43,  c1lmult44,  c1lmult45,  c1lmult46,  c1lmult47,  c1lmult48,   
    c1lmult49,  c1lmult50,  c1lmult51,  c1lmult52,  c1lmult53,  c1lmult54,   
    c1lmult55,  c1lmult56,  c1lmult57,  c1lmult58,  c1lmult59,  c1lmult60,   
    c1lmult61,  c1lmult62,  c1lmult63,  c1lmult64,  c1lmult65,  c1lmult66,   
    c1lmult67,  c1lmult68,  c1lmult69,  c1lmult70,  c1lmult71,  c1lmult72,   
    c1lmult73,  c1lmult74,  c1lmult75,  c1lmult76,  c1lmult77,  c1lmult78,   
    c1lmult79,  c1lmult80,  c1lmult81,  c1lmult82,  c1lmult83,  c1lmult84,   
    c1lmult85,  c1lmult86,  c1lmult87,  c1lmult88,  c1lmult89,  c1lmult90,   
    c1lmult91,  c1lmult92,  c1lmult93,  c1lmult94,  c1lmult95,  c1lmult96,   
    c1lmult97,  c1lmult98,  c1lmult99,  c1lmult100,  c1lmult101,  c1lmult102,   
    c1lmult103,  c1lmult104,  c1lmult105,  c1lmult106,  c1lmult107,   
    c1lmult108,  c1lmult109,  c1lmult110,  c1lmult111,  c1lmult112,   
    c1lmult113,  c1lmult114,  c1lmult115,  c1lmult116,  c1lmult117,   
    c1lmult118,  c1lmult119,  c1lmult120,  c1lmult121,  c1lmult122,   
    c1lmult123,  c1lmult124,  c1lmult125,  c1lmult126,  c1lmult127,   
    c2lmult1,  c2lmult2,  c2lmult3,  c2lmult4,  c2lmult5,  c2lmult6,   
    c2lmult7,  c2lmult8,  c2lmult9,  c2lmult10,  c2lmult11,  c2lmult12,   
    c2lmult13,  c2lmult14,  c2lmult15,  c2lmult16,  c2lmult17,  c2lmult18,   
    c2lmult19,  c2lmult20,  c2lmult21,  c2lmult22,  c2lmult23,  c2lmult24,   
    c2lmult25,  c2lmult26,  c2lmult27,  c2lmult28,  c2lmult29,  c2lmult30,   
    c2lmult31,  c2lmult32,  c2lmult33,  c2lmult34,  c2lmult35,  c2lmult36,   
    c2lmult37,  c2lmult38,  c2lmult39,  c2lmult40,  c2lmult41,  c2lmult42,   
    c2lmult43,  c2lmult44,  c2lmult45,  c2lmult46,  c2lmult47,  c2lmult48,   
    c2lmult49,  c2lmult50,  c2lmult51,  c2lmult52,  c2lmult53,  c2lmult54,   
    c2lmult55,  c2lmult56,  c2lmult57,  c2lmult58,  c2lmult59,  c2lmult60,   
    c2lmult61,  c2lmult62,  c2lmult63,  c2lmult64,  c2lmult65,  c2lmult66,   
    c2lmult67,  c2lmult68,  c2lmult69,  c2lmult70,  c2lmult71,  c2lmult72,   
    c2lmult73,  c2lmult74,  c2lmult75,  c2lmult76,  c2lmult77,  c2lmult78,   
    c2lmult79,  c2lmult80,  c2lmult81,  c2lmult82,  c2lmult83,  c2lmult84,   
    c2lmult85,  c2lmult86,  c2lmult87,  c2lmult88,  c2lmult89,  c2lmult90,   
    c2lmult91,  c2lmult92,  c2lmult93,  c2lmult94,  c2lmult95,  c2lmult96,   
    c2lmult97,  c2lmult98,  c2lmult99,  c2lmult100,  c2lmult101,  c2lmult102,   
    c2lmult103,  c2lmult104,  c2lmult105,  c2lmult106,  c2lmult107,   
    c2lmult108,  c2lmult109,  c2lmult110,  c2lmult111,  c2lmult112,   
    c2lmult113,  c2lmult114,  c2lmult115,  c2lmult116,  c2lmult117,   
    c2lmult118,  c2lmult119,  c2lmult120,  c2lmult121,  c2lmult122,   
    c2lmult123,  c2lmult124,  c2lmult125,  c2lmult126,  c2lmult127; 
  
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
 
// Policymaker's First-Order Conditions for Country 1 
c1phibparm*c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - c1lmult101(+1)*nbeta + (c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult101 + c1lmult64*((c1b*c2beta*c1grmuzss*c1phibparm*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss - 1); 
exp(c1c)/(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss) - c1lmult99(+1)*nbeta + c1lmult8*exp(c1c) - (c1lmult3*exp(c1c)*exp(c1muc))/(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2 - (c1omegacc*c1lmult29*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegaoc*c1lmult12*c1rhoo*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegacc*c1lmult11*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) + (c1omegacc*c1lmult10*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1); 
- c1lmult21*exp(c1cd) - c1lmult9*c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)*exp(c1cd)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc - (c1omegac*c1lmult10*c1rhoc*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
c1lmult99 - (c1vkappa*exp(-c1muc)*exp(c1clag))/(c1grmuzss*(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)) + (c1lmult3*c1vkappa*exp(c1clag))/(c1grmuzss*(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2); 
c1lmult11*((c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) - (c1omegamc*c1rhoc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1)) + c1lmult9*exp(c1cne) + c1lmult10*((c1omegac*c1rhoc*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - (c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1)) - c1lmult8*c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)*exp(c1cne)^(1/(c1rhoo + 1) - 1)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo + (c1omegacc*c1lmult29*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1); 
c1lmult30; 
c1lmult77*exp(c1deltad) - c1lmult76*exp(c1deltad)*exp(c1yd) - (c1lmult77(+1)*c1xip*nbeta*exp(c1deltad))/(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c1lmult31; 
- c1lmult1 - c1lmult78 - c1lmult116(-1)/nbeta; 
c1lmult116 + (c1beta*c1lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)^2); 
c1lmult32; 
c1lmult27*exp(c1g) - c1lmult21*exp(c1g); 
c1lmult72*exp(c1gp) - c1lmult120(-1)/nbeta + c1lmult73*exp(-c1gp)*exp(c1hp); 
c1lmult120 - c1beta*c1lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c1lmult26; 
c1lmult88*exp(c1gw) - c1lmult126(-1)/nbeta + c1lmult89*exp(-c1gw)*exp(c1hw); 
c1lmult126 - (c1beta*c1omegalead*c1lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead); 
c1lmult71*exp(c1hp) - c1lmult118(-1)/nbeta - c1lmult73*exp(-c1gp)*exp(c1hp); 
c1lmult118 - (c1beta*c1lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c1lmult87*exp(c1hw) - c1lmult124(-1)/nbeta - c1lmult89*exp(-c1gw)*exp(c1hw); 
c1lmult124 - (c1beta*c1omegalead*c1lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)); 
c1lmult5*(c1grmuzss^2*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(c1q)*exp(c1zi) - 2*c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i)) + c1beta*c1grmuzss^2*c1psii*exp(-3*c1i)*exp(3*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1)) - 2*c1beta*c1grmuzss*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) + c1lmult13*exp(c1i) + c1lmult7*(exp(c1i)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(2*c1i)*exp(-c1i(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) - c1lmult5(+1)*nbeta*(c1grmuzss^2*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(c1q(+1))*exp(c1zi(+1)) - 2*c1grmuzss*c1psii*exp(-c1i)*exp(c1i(+1))*exp(c1q(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) - (c1lmult5(-1)*(c1beta*c1grmuzss^2*c1psii*exp(3*c1i)*exp(-3*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi) - 2*c1beta*c1grmuzss*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))))/nbeta + c1grmuzss*c1lmult7(+1)*c1psii*nbeta*exp(-c1i)*exp(2*c1i(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))) + (c1omegai*c1lmult14*c1rhoi*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - (c1omegami*c1lmult15*c1rhoi*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
- c1lmult21*exp(c1id) - c1omegai^(c1rhoi/(c1rhoi + 1))*c1lmult13*exp(c1id)*exp(c1id)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi - (c1omegai*c1lmult14*c1rhoi*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
c1lmult7*exp(c1k) + (c1lmult7(+1)*nbeta*exp(c1k)*(c1delta - 1))/c1grmuzss - (c1omegak^(c1rhov/(c1rhov + 1))*c1lmult16(+1)*nbeta*exp(c1k)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l(+1))*exp(c1zc(+1)))^(1/(c1rhov + 1)))^c1rhov*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1) - 1))/c1grmuzss + (c1grmuzss*c1omegak*c1lmult18(+1)*c1rhov*nbeta*exp(-c1k)*exp(c1rmcpd(+1))*exp(c1v(+1))*(c1omegavy*exp(-c1v(+1))*exp(c1y(+1)))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k)*exp(c1v(+1)))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1); 
(c1omegal*c1lmult19*c1rhov*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1) - (c1lmult88*exp(-c1thetawvar)*exp(c1l)*(c1tauw + 1))/c1thetaw - (c1chi*c1chi0*c1lmult4*exp(-c1lambdaq)*exp(c1l))/(1 - exp(c1l))^(c1chi + 1) - c1omegal^(c1rhov/(c1rhov + 1))*c1lmult16*exp(c1l)*exp(c1zc)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k(-1))/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1)))^c1rhov*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1) - 1) - (c1lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw - (c1chi0*exp(c1l))/(1 - exp(c1l))^c1chi; 
c1lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - c1lmult112(-1)/nbeta - c1lmult3*exp(c1lambdaq)*exp(c1rpcpd) + (c1chi0*c1lmult4*exp(-c1lambdaq))/(1 - exp(c1l))^c1chi + (c1beta*c1lmult23*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss + (c1beta*c1lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) + (c1beta*c1lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c1beta*c1lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1beta*c1omegalead*c1lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c1lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) - c1beta*c1grmuzss*c1lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c1lmult112 - c1lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - (c1beta*c1lmult23*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss - (c1beta*c1lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) - (c1beta*c1lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c1beta*c1lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1beta*c1omegalead*c1lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) - (c1beta*c1omegalead*c1lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + c1beta*c1grmuzss*c1lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c1lmult24*exp(c1m) + c1lmult25*exp(-c1yd)*exp(c1m) + c1lmult26*exp(-c1yd)*exp(c1m); 
(c1omegamc*c1lmult11*c1rhoc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - c1relc2*c1lmult70*exp(c1mc) - c1lmult9*exp(c1mc)*exp(c1mc)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - c1lmult24*exp(c1mc)*exp(c1rpmcpd); 
(c1omegami*c1lmult15*c1rhoi*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - c1relc2*c1lmult70*exp(c1mi) - c1lmult13*exp(c1mi)*exp(c1mi)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) - c1lmult24*exp(c1mi)*exp(c1rpmipd); 
(c1omegaoc*c1lmult12*c1rhoo*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c1lmult8*c1omegaoc^(c1rhoo/(c1rhoo + 1))*exp(c1muoc)*exp(c1oc)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1) - 1) - c1lmult22*exp(c1oc); 
c1lmult92 - c1lmult122(-1)/nbeta - c1iotaw*c1omega^(c1iotaw - 1)*c1lmult91*(c1grmuzss*c1pistar)^(1 - c1iotaw) + (c1omegabar(-1)*c1lmult90*c1xiw*exp(-c1thetawvar))/(c1omega^2*c1thetaw*(c1omegabar(-1)/c1omega)^(exp(-c1thetawvar)/c1thetaw + 1)); 
c1lmult91 - (c1lmult90(+1)*c1xiw*nbeta*exp(-c1thetawvar(+1)))/(c1omega(+1)*c1thetaw*(c1omegabar/c1omega(+1))^(exp(-c1thetawvar(+1))/c1thetaw + 1)) + (c1beta*c1lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1lmult87*c1xiw*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1)); 
c1lmult122 - c1lmult88*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1omegalead*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))) - c1lmult87*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1omegalead*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1))); 
c1lmult22*exp(c1ow) - c1relc2*c1lmult62*exp(c1ow) + c1lmult25*exp(-c1yd)*exp(c1ow)*exp(c1rpwopd); 
(c1omegaoy*c1lmult20*c1rhoo*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c1omegaoy^(c1rhoo/(c1rhoo + 1))*c1lmult17*exp(c1muoc)*exp(c1oy)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1) - 1) - c1lmult22*exp(c1oy); 
c1lmult78/c1pid - c1lmult31/c1pid - c1lmult32/c1pid - c1lmult30/c1pid - c1lmult108(-1)/nbeta - c1grmuzss*c1lmult92*exp(-c1w(-1))*exp(c1w) - c1iotap*c1pid^(c1iotap - 1)*c1pistar^(1 - c1iotap)*c1lmult75 + (c1pidbar(-1)*c1lmult74*c1xip*exp(-c1thetapvar))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^(exp(-c1thetapvar)/c1thetap + 1)) - (c1pidbar(-1)*c1lmult77*c1xip*exp(-c1thetapvar)*exp(c1deltad(-1))*(c1thetap*exp(c1thetapvar) + 1))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
c1lmult75 - (c1lmult74(+1)*c1xip*nbeta*exp(-c1thetapvar(+1)))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^(exp(-c1thetapvar(+1))/c1thetap + 1)) + (c1lmult77(+1)*c1xip*nbeta*exp(-c1thetapvar(+1))*exp(c1deltad)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)) + (c1beta*c1lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1lmult71*c1xip*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
c1lmult108 - (c1beta*c1pidbar*c1lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead^2*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1omegalead*c1lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead^2*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c1lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead^2) - (c1beta*c1pidbar*c1lmult71*c1xip*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead^2*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
c1lmult73*exp(c1pstar) + (c1lmult74*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1))/(c1thetap*exp(c1pstar)^(exp(-c1thetapvar)/c1thetap + 1)) - (c1lmult77*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1)*(c1thetap*exp(c1thetapvar) + 1))/(c1thetap*exp(c1pstar)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
c1lmult5*(exp(c1q)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) + c1lmult6*exp(c1q) - c1lmult106(-1)/nbeta; 
c1lmult106 + (c1beta*c1lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c1lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c1lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - c1lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - c1lmult103(-1)/nbeta - c1lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult103 - c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult18*exp(c1rk) - c1lmult114(-1)/nbeta; 
c1lmult114 - (c1beta*c1lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss; 
- c1lmult20*exp(c1muoc)*exp(c1rmcpd)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1)) - c1lmult19*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)) - c1lmult18*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)) - (c1lmult71*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap; 
c1lmult31(+1)*nbeta - c1lmult31 - c1lmult104(-1)/nbeta - c1lmult3*exp(c1lambdaq)*exp(c1rpcpd) - c1lmult29*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) - c1lmult11*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - c1lmult12*exp(c1muoc)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) + c1lmult10*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)) - c1lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) + c1lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - c1lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult104 - c1lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - c1lmult110(-1)/nbeta - c1lmult15*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) + c1lmult14*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1)) - c1beta*c1grmuzss*c1lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c1lmult110 + (c1beta*c1lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c1lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c1lmult11*exp(c1rpmcpd) + c1lmult65*exp(c1rpmcpd) - c1lmult67*exp(c1rpmcpd) - c1lmult24*exp(c1mc)*exp(c1rpmcpd); 
c1lmult15*exp(c1rpmipd) + c1lmult67*exp(c1rpmipd) - c1lmult24*exp(c1mi)*exp(c1rpmipd); 
c1lmult30(+1)*nbeta - c1lmult30 + c1lmult29*exp(c1rpnepd); 
c1lmult32(+1)*nbeta - c1lmult32 + c1lmult12*exp(c1rpwopd) + c1lmult20*exp(c1rpwopd) + c1lmult63*exp(c1rpwopd) + c1lmult25*exp(-c1yd)*exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo)); 
-c1lmult23/(c1rrs + 1)^2; 
-c1lmult28/(c1rs + 1)^2; 
c1lmult25 - c1lmult64; 
c1lmult19*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegal*c1rhov*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) + c1lmult16*exp(c1v) + c1lmult18*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1grmuzss*c1omegak*c1rhov*exp(-c1k(-1))*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) - c1omegavy^(c1rhoo/(c1rhoo + 1))*c1lmult17*exp(c1v)*exp(c1v)^(1/(c1rhoo + 1) - 1)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo; 
c1lmult19*exp(-c1zc)*exp(c1w) - c1lmult89*exp(-c1w)*exp(c1wstar) - c1grmuzss*c1pid*c1lmult92*exp(-c1w(-1))*exp(c1w) + c1grmuzss*c1pid(+1)*c1lmult92(+1)*nbeta*exp(-c1w)*exp(c1w(+1)) + (c1lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw - (c1lmult90*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
c1lmult4*exp(c1wdes) - (c1lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw; 
c1lmult89*exp(-c1w)*exp(c1wstar) + (c1lmult90*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
c1lmult69*exp(c1x) - c1lmult21*exp(c1x) - c1lmult25*exp(-c1yd)*exp(c1x) - c1lmult26*exp(-c1yd)*exp(c1x); 
c1lmult17*exp(c1y) + c1lmult76*exp(c1y) - (c1omegaoy*c1lmult20*c1rhoo*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegavy*c1lmult18*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegavy*c1lmult19*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1); 
c1lmult21*exp(c1yd) - c1lmult102(-1)/nbeta - c1lmult26*exp(-c1yd)*(exp(c1m) - exp(c1x)) - c1lmult76*exp(c1deltad)*exp(c1yd) - c1lmult25*exp(-c1yd)*(exp(c1m) - exp(c1x) + exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo))) - c1lmult27*c1sharegy*exp(c1shockgy)*exp(c1yd) - (c1lmult72*exp(-c1thetapvar)*exp(c1yd)*(c1taup + 1))/c1thetap - (c1lmult71*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap - (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult102 + (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult38*exp(c2c) - c1lmult100(+1)*nbeta - (c1lmult33*exp(c2c)*exp(c2muc))/(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2 - (c2omegacc*c2rhoo*c1lmult59*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegaoc*c1lmult42*c2rhoo*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegacc*c1lmult41*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) + (c2omegacc*c1lmult40*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1); 
- c1lmult51*exp(c2cd) - c2omegac^(c2rhoc/(c2rhoc + 1))*c1lmult39*exp(c2cd)*exp(c2cd)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc - (c2omegac*c1lmult40*c2rhoc*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1); 
c1lmult100 + (c1lmult33*c2vkappa*exp(c2clag))/(c2grmuzss*(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2); 
c1lmult41*((c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) - (c2omegamc*c2rhoc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1)) + c1lmult39*exp(c2cne) + c1lmult40*((c2omegac*c2rhoc*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - (c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1)) - c2omegacc^(c2rhoo/(c2rhoo + 1))*c1lmult38*exp(c2cne)*exp(c2cne)^(1/(c2rhoo + 1) - 1)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo + (c2omegacc*c2rhoo*c1lmult59*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1); 
c1lmult60; 
c1lmult85*exp(c2deltad) - c1lmult84*exp(c2deltad)*exp(c2yd) - (c1lmult85(+1)*c2xip*nbeta*exp(c2deltad))/(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
- c1lmult2 - c1lmult86 - c1lmult117(-1)/nbeta; 
c1lmult117 + (c2beta*c1lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)^2); 
c1lmult57*exp(c2g) - c1lmult51*exp(c2g); 
c1lmult80*exp(c2gp) - c1lmult121(-1)/nbeta + c1lmult81*exp(-c2gp)*exp(c2hp); 
c1lmult121 - c2beta*c1lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
c1lmult56; 
c1lmult94*exp(c2gw) - c1lmult127(-1)/nbeta + c1lmult95*exp(-c2gw)*exp(c2hw); 
c1lmult127 - (c2beta*c2omegalead*c1lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead); 
c1lmult79*exp(c2hp) - c1lmult119(-1)/nbeta - c1lmult81*exp(-c2gp)*exp(c2hp); 
c1lmult119 - (c2beta*c1lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
c1lmult93*exp(c2hw) - c1lmult125(-1)/nbeta - c1lmult95*exp(-c2gw)*exp(c2hw); 
c1lmult125 - (c2beta*c2omegalead*c1lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)); 
c1lmult35*(c2grmuzss^2*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(c2q)*exp(c2zi) - 2*c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i)) + c2beta*c2grmuzss^2*c2psii*exp(-3*c2i)*exp(3*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1)) - 2*c2beta*c2grmuzss*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) + c1lmult43*exp(c2i) + c1lmult37*(exp(c2i)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(2*c2i)*exp(-c2i(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) - c1lmult35(+1)*nbeta*(c2grmuzss^2*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(c2q(+1))*exp(c2zi(+1)) - 2*c2grmuzss*c2psii*exp(-c2i)*exp(c2i(+1))*exp(c2q(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) - (c1lmult35(-1)*(c2beta*c2grmuzss^2*c2psii*exp(3*c2i)*exp(-3*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi) - 2*c2beta*c2grmuzss*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))))/nbeta + c2grmuzss*c2psii*c1lmult37(+1)*nbeta*exp(-c2i)*exp(2*c2i(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c2omegai*c1lmult44*c2rhoi*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - (c2omegami*c1lmult45*c2rhoi*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
- c1lmult51*exp(c2id) - c2omegai^(c2rhoi/(c2rhoi + 1))*c1lmult43*exp(c2id)*exp(c2id)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi - (c2omegai*c1lmult44*c2rhoi*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
c1lmult37*exp(c2k) + (c1lmult37(+1)*nbeta*exp(c2k)*(c2delta - 1))/c2grmuzss - (c2omegak^(c2rhov/(c2rhov + 1))*c1lmult46(+1)*nbeta*exp(c2k)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l(+1))*exp(c2zc(+1)))^(1/(c2rhov + 1)))^c2rhov*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1) - 1))/c2grmuzss + (c2grmuzss*c2omegak*c2rhov*c1lmult48(+1)*nbeta*exp(-c2k)*exp(c2rmcpd(+1))*exp(c2v(+1))*(c2omegavy*exp(-c2v(+1))*exp(c2y(+1)))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k)*exp(c2v(+1)))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1); 
(c2omegal*c1lmult49*c2rhov*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1) - (c2chi*c2chi0*c1lmult34*exp(-c2lambdaq)*exp(c2l))/(1 - exp(c2l))^(c2chi + 1) - c2omegal^(c2rhov/(c2rhov + 1))*c1lmult46*exp(c2l)*exp(c2zc)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k(-1))/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1)))^c2rhov*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1) - 1) - (c1lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw - (c1lmult94*exp(-c2thetawvar)*exp(c2l)*(c2tauw + 1))/c2thetaw; 
c1lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - c1lmult113(-1)/nbeta - c1lmult33*exp(c2lambdaq)*exp(c2rpcpd) + (c2chi0*c1lmult34*exp(-c2lambdaq))/(1 - exp(c2l))^c2chi - c1lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c2beta*c1lmult53*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss + (c2beta*c1lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) + (c2beta*c1lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + c2beta*c1lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + (c2beta*c2omegalead*c1lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c1lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) - c2beta*c2grmuzss*c2psii*c1lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) - (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult113 - c1lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) + c1lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c2beta*c1lmult53*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss - (c2beta*c1lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) - (c2beta*c1lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - c2beta*c1lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - (c2beta*c2omegalead*c1lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) - (c2beta*c2omegalead*c1lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + c2beta*c2grmuzss*c2psii*c1lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult54*exp(c2m) + c1lmult55*exp(-c2yd)*exp(c2m) + c1lmult56*exp(-c2yd)*exp(c2m); 
(c2omegamc*c1lmult41*c2rhoc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - c1lmult54*exp(c2mc)*exp(c2rpmcpd) - c1lmult39*exp(c2mc)*exp(c2mc)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - (c1lmult69*exp(c2mc))/c1relc2; 
(c2omegami*c1lmult45*c2rhoi*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - c1lmult54*exp(c2mi)*exp(c2rpmipd) - c1lmult43*exp(c2mi)*exp(c2mi)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) - (c1lmult69*exp(c2mi))/c1relc2; 
(c2omegaoc*c1lmult42*c2rhoo*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoc^(c2rhoo/(c2rhoo + 1))*c1lmult38*exp(c2muoc)*exp(c2oc)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1) - 1) - c1lmult52*exp(c2oc); 
c1lmult98 - c1lmult123(-1)/nbeta - c2iotaw*c2omega^(c2iotaw - 1)*c1lmult97*(c2grmuzss*c2pistar)^(1 - c2iotaw) + (c2omegabar(-1)*c1lmult96*c2xiw*exp(-c2thetawvar))/(c2omega^2*c2thetaw*(c2omegabar(-1)/c2omega)^(exp(-c2thetawvar)/c2thetaw + 1)); 
c1lmult97 - (c1lmult96(+1)*c2xiw*nbeta*exp(-c2thetawvar(+1)))/(c2omega(+1)*c2thetaw*(c2omegabar/c2omega(+1))^(exp(-c2thetawvar(+1))/c2thetaw + 1)) + (c2beta*c1lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c1lmult93*c2xiw*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1)); 
c1lmult123 - c1lmult94*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2omegalead*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))) - c1lmult93*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2omegalead*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1))); 
c1lmult52*exp(c2ow) - c1lmult62*exp(c2ow) + c1lmult55*exp(-c2yd)*exp(c2ow)*exp(c2rpwopd); 
(c2omegaoy*c1lmult50*c2rhoo*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoy^(c2rhoo/(c2rhoo + 1))*c1lmult47*exp(c2muoc)*exp(c2oy)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1) - 1) - c1lmult52*exp(c2oy); 
c1lmult86/c2pid - c1lmult60/c2pid - c1lmult109(-1)/nbeta - c2grmuzss*c1lmult98*exp(-c2w(-1))*exp(c2w) - c2iotap*c2pid^(c2iotap - 1)*c2pistar^(1 - c2iotap)*c1lmult83 + (c2pidbar(-1)*c1lmult82*c2xip*exp(-c2thetapvar))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^(exp(-c2thetapvar)/c2thetap + 1)) - (c2pidbar(-1)*c1lmult85*c2xip*exp(-c2thetapvar)*exp(c2deltad(-1))*(c2thetap*exp(c2thetapvar) + 1))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
c1lmult83 - (c1lmult82(+1)*c2xip*nbeta*exp(-c2thetapvar(+1)))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^(exp(-c2thetapvar(+1))/c2thetap + 1)) + (c1lmult85(+1)*c2xip*nbeta*exp(-c2thetapvar(+1))*exp(c2deltad)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)) + (c2beta*c1lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c1lmult79*c2xip*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
c1lmult109 - (c2beta*c2pidbar*c1lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead^2*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2omegalead*c1lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead^2*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c1lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead^2) - (c2beta*c2pidbar*c1lmult79*c2xip*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead^2*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
c1lmult81*exp(c2pstar) + (c1lmult82*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1))/(c2thetap*exp(c2pstar)^(exp(-c2thetapvar)/c2thetap + 1)) - (c1lmult85*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1)*(c2thetap*exp(c2thetapvar) + 1))/(c2thetap*exp(c2pstar)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
c1lmult35*(exp(c2q)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) + c1lmult36*exp(c2q) - c1lmult107(-1)/nbeta; 
c1lmult107 + (c2beta*c1lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*c1lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c1lmult48*exp(c2rk) - c1lmult115(-1)/nbeta; 
c1lmult115 - (c2beta*c1lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss; 
- c1lmult50*exp(c2muoc)*exp(c2rmcpd)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1)) - c1lmult49*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)) - c1lmult48*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)) - (c1lmult79*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
c1lmult40*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)) - c1lmult33*exp(c2lambdaq)*exp(c2rpcpd) - c1lmult59*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - c1lmult41*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - c1lmult42*exp(c2muoc)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - c1lmult105(-1)/nbeta + c1lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - c1lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) + c1lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) - c1lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult105 + c1lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c1b*c2beta*c1grmuzss*c1lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c1lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - c1lmult111(-1)/nbeta - c1lmult45*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) + c1lmult44*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1)) - c2beta*c2grmuzss*c2psii*c1lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c1lmult111 + (c2beta*c1lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*c1lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c1lmult41*exp(c2rpmcpd) + c1lmult66*exp(c2rpmcpd) - c1lmult68*exp(c2rpmcpd) - c1lmult54*exp(c2mc)*exp(c2rpmcpd); 
c1lmult45*exp(c2rpmipd) + c1lmult68*exp(c2rpmipd) - c1lmult54*exp(c2mi)*exp(c2rpmipd); 
c1lmult60(+1)*nbeta - c1lmult60 + c1lmult59*exp(c2rpnepd); 
c1lmult42*exp(c2rpwopd) + c1lmult50*exp(c2rpwopd) + c1lmult55*exp(-c2yd)*exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo)) - c1lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd); 
-c1lmult53/(c2rrs + 1)^2; 
-c1lmult58/(c2rs + 1)^2; 
c1lmult55; 
c1lmult49*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegal*c2rhov*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) + c1lmult46*exp(c2v) + c1lmult48*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2grmuzss*c2omegak*c2rhov*exp(-c2k(-1))*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) - c2omegavy^(c2rhoo/(c2rhoo + 1))*c1lmult47*exp(c2v)*exp(c2v)^(1/(c2rhoo + 1) - 1)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo; 
c1lmult49*exp(-c2zc)*exp(c2w) - c1lmult95*exp(-c2w)*exp(c2wstar) - c2grmuzss*c2pid*c1lmult98*exp(-c2w(-1))*exp(c2w) + c2grmuzss*c2pid(+1)*c1lmult98(+1)*nbeta*exp(-c2w)*exp(c2w(+1)) + (c1lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw - (c1lmult96*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
c1lmult34*exp(c2wdes) - (c1lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw; 
c1lmult95*exp(-c2w)*exp(c2wstar) + (c1lmult96*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
c1lmult70*exp(c2x) - c1lmult51*exp(c2x) - c1lmult55*exp(-c2yd)*exp(c2x) - c1lmult56*exp(-c2yd)*exp(c2x); 
c1lmult47*exp(c2y) + c1lmult84*exp(c2y) - (c2omegaoy*c1lmult50*c2rhoo*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegavy*c1lmult48*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegavy*c1lmult49*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1); 
c1lmult51*exp(c2yd) - c1lmult56*exp(-c2yd)*(exp(c2m) - exp(c2x)) - c1lmult84*exp(c2deltad)*exp(c2yd) - c1lmult55*exp(-c2yd)*(exp(c2m) - exp(c2x) + exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo))) - c1lmult57*c2sharegy*exp(c2shockgy)*exp(c2yd) - (c1lmult80*exp(-c2thetapvar)*exp(c2yd)*(c2taup + 1))/c2thetap - (c1lmult79*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
c1lmult1; 
//c1rs = (1+c1rsss)*(((1+(c1rs(-1)))/(1+c1rsss))^c1gamrs*(((1+(c1dcore))/(1+log(c1pistar)))*((1+(c1dcore))/(1+log(c1pistar)))^c1gamdpc)^(1-c1gamrs))-1; 
 
// Policymaker's First-Order Conditions for Country 2 
c1phibparm*c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - c2lmult101(+1)*nbeta + (c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult101 + c2lmult64*((c1b*c2beta*c1grmuzss*c1phibparm*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss - 1); 
c2lmult8*exp(c1c) - c2lmult99(+1)*nbeta - (c2lmult3*exp(c1c)*exp(c1muc))/(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2 - (c1omegacc*c1rhoo*c2lmult29*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegaoc*c1rhoo*c2lmult12*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegacc*c1rhoo*c2lmult11*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) + (c1omegacc*c1rhoo*c2lmult10*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1); 
- c2lmult21*exp(c1cd) - c2lmult9*c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)*exp(c1cd)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc - (c1omegac*c1rhoc*c2lmult10*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1); 
c2lmult99 + (c2lmult3*c1vkappa*exp(c1clag))/(c1grmuzss*(exp(c1c)*exp(c1muc) - (c1vkappa*exp(c1clag))/c1grmuzss)^2); 
c2lmult11*((c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1) - (c1omegamc*c1rhoc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1)) + c2lmult9*exp(c1cne) + c2lmult10*((c1omegac*c1rhoc*exp(-c1cd)*exp(c1cne)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - (c1omegacc*c1rhoo*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)))/(c1rhoo + 1)) - c2lmult8*c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)*exp(c1cne)^(1/(c1rhoo + 1) - 1)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo + (c1omegacc*c1rhoo*c2lmult29*exp(-c1cne)*exp(c1c)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1); 
c2lmult30; 
c2lmult77*exp(c1deltad) - c2lmult76*exp(c1deltad)*exp(c1yd) - (c2lmult77(+1)*c1xip*nbeta*exp(c1deltad))/(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c2lmult31; 
- c2lmult1 - c2lmult78 - c2lmult116(-1)/nbeta; 
c2lmult116 + (c1beta*c2lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)^2); 
c2lmult32; 
c2lmult27*exp(c1g) - c2lmult21*exp(c1g); 
c2lmult72*exp(c1gp) - c2lmult120(-1)/nbeta + c2lmult73*exp(-c1gp)*exp(c1hp); 
c2lmult120 - c1beta*c2lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c2lmult26; 
c2lmult88*exp(c1gw) - c2lmult126(-1)/nbeta + c2lmult89*exp(-c1gw)*exp(c1hw); 
c2lmult126 - (c1beta*c1omegalead*c2lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead); 
c2lmult71*exp(c1hp) - c2lmult118(-1)/nbeta - c2lmult73*exp(-c1gp)*exp(c1hp); 
c2lmult118 - (c1beta*c2lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap); 
c2lmult87*exp(c1hw) - c2lmult124(-1)/nbeta - c2lmult89*exp(-c1gw)*exp(c1hw); 
c2lmult124 - (c1beta*c1omegalead*c2lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)); 
c2lmult5*(c1grmuzss^2*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(c1q)*exp(c1zi) - 2*c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i)) + c1beta*c1grmuzss^2*c1psii*exp(-3*c1i)*exp(3*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1)) - 2*c1beta*c1grmuzss*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) + c2lmult13*exp(c1i) + c2lmult7*(exp(c1i)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(2*c1i)*exp(-c1i(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) - c2lmult5(+1)*nbeta*(c1grmuzss^2*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(c1q(+1))*exp(c1zi(+1)) - 2*c1grmuzss*c1psii*exp(-c1i)*exp(c1i(+1))*exp(c1q(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1)))) - (c2lmult5(-1)*(c1beta*c1grmuzss^2*c1psii*exp(3*c1i)*exp(-3*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi) - 2*c1beta*c1grmuzss*c1psii*exp(2*c1i)*exp(-2*c1i(-1))*exp(-c1lambdaq(-1))*exp(-c1rpipd(-1))*exp(c1lambdaqlead(-1))*exp(c1qlead(-1))*exp(c1rpipdlead(-1))*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))))/nbeta + c1grmuzss*c2lmult7(+1)*c1psii*nbeta*exp(-c1i)*exp(2*c1i(+1))*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))) + (c1omegai*c1rhoi*c2lmult14*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - (c1omegami*c1rhoi*c2lmult15*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
- c2lmult21*exp(c1id) - c1omegai^(c1rhoi/(c1rhoi + 1))*c2lmult13*exp(c1id)*exp(c1id)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi - (c1omegai*c1rhoi*c2lmult14*exp(-c1id)*exp(c1i)*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1); 
c2lmult7*exp(c1k) + (c2lmult7(+1)*nbeta*exp(c1k)*(c1delta - 1))/c1grmuzss - (c1omegak^(c1rhov/(c1rhov + 1))*c2lmult16(+1)*nbeta*exp(c1k)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l(+1))*exp(c1zc(+1)))^(1/(c1rhov + 1)))^c1rhov*(exp(c1k)/c1grmuzss)^(1/(c1rhov + 1) - 1))/c1grmuzss + (c1grmuzss*c1omegak*c1rhov*c2lmult18(+1)*nbeta*exp(-c1k)*exp(c1rmcpd(+1))*exp(c1v(+1))*(c1omegavy*exp(-c1v(+1))*exp(c1y(+1)))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k)*exp(c1v(+1)))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1); 
(c1omegal*c1rhov*c2lmult19*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1) - (c1chi*c1chi0*c2lmult4*exp(-c1lambdaq)*exp(c1l))/(1 - exp(c1l))^(c1chi + 1) - c1omegal^(c1rhov/(c1rhov + 1))*c2lmult16*exp(c1l)*exp(c1zc)*(c1omegak^(c1rhov/(c1rhov + 1))*(exp(c1k(-1))/c1grmuzss)^(1/(c1rhov + 1)) + c1omegal^(c1rhov/(c1rhov + 1))*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1)))^c1rhov*(exp(c1l)*exp(c1zc))^(1/(c1rhov + 1) - 1) - (c2lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw - (c2lmult88*exp(-c1thetawvar)*exp(c1l)*(c1tauw + 1))/c1thetaw; 
c2lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - c2lmult112(-1)/nbeta - c2lmult3*exp(c1lambdaq)*exp(c1rpcpd) + (c1chi0*c2lmult4*exp(-c1lambdaq))/(1 - exp(c1l))^c1chi + (c1beta*c2lmult23*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss + (c1beta*c2lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) + (c1beta*c2lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c1beta*c2lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) + c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1beta*c1omegalead*c2lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c2lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) - c1beta*c1grmuzss*c2lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c2lmult112 - c2lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - (c1beta*c2lmult23*exp(-c1lambdaq)*exp(c1lambdaqlead))/c1grmuzss - (c1beta*c2lmult28*exp(-c1lambdaq)*exp(c1lambdaqlead))/(c1grmuzss*(c1dpdlead + 1)) - (c1beta*c2lmult71*c1xip*exp(-c1lambdaq)*exp(c1hplead)*exp(c1lambdaqlead))/(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c1beta*c2lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*(c1pidbar/c1pidlead)^(1 - (exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap) - c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1beta*c1omegalead*c2lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) - (c1beta*c1omegalead*c2lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + c1beta*c1grmuzss*c2lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c2lmult24*exp(c1m) + c2lmult25*exp(-c1yd)*exp(c1m) + c2lmult26*exp(-c1yd)*exp(c1m); 
(c1omegamc*c1rhoc*c2lmult11*exp(-c1mc)*exp(c1cne)*exp(c1omegacm)*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1) - 1))/(c1rhoc + 1) - c1relc2*c2lmult70*exp(c1mc) - c2lmult9*exp(c1mc)*exp(c1mc)^(1/(c1rhoc + 1) - 1)*(c1omegac^(c1rhoc/(c1rhoc + 1))*exp(c1cd)^(1/(c1rhoc + 1)) + exp(c1mc)^(1/(c1rhoc + 1))*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)))^c1rhoc*(c1omegamc*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - c2lmult24*exp(c1mc)*exp(c1rpmcpd); 
(c1omegami*c1rhoi*c2lmult15*exp(-c1mi)*exp(c1i)*exp(c1omegaim)*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1) - 1))/(c1rhoi + 1) - c1relc2*c2lmult70*exp(c1mi) - c2lmult13*exp(c1mi)*exp(c1mi)^(1/(c1rhoi + 1) - 1)*(c1omegai^(c1rhoi/(c1rhoi + 1))*exp(c1id)^(1/(c1rhoi + 1)) + exp(c1mi)^(1/(c1rhoi + 1))*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)))^c1rhoi*(c1omegami*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) - c2lmult24*exp(c1mi)*exp(c1rpmipd); 
(c1omegaoc*c1rhoo*c2lmult12*exp(-c1oc)*exp(c1c)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c2lmult8*c1omegaoc^(c1rhoo/(c1rhoo + 1))*exp(c1muoc)*exp(c1oc)*(c1omegacc^(c1rhoo/(c1rhoo + 1))*exp(c1cne)^(1/(c1rhoo + 1)) + c1omegaoc^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oc))^(1/(c1rhoo + 1) - 1) - c2lmult22*exp(c1oc); 
c2lmult92 - c2lmult122(-1)/nbeta - c1iotaw*c1omega^(c1iotaw - 1)*c2lmult91*(c1grmuzss*c1pistar)^(1 - c1iotaw) + (c1omegabar(-1)*c2lmult90*c1xiw*exp(-c1thetawvar))/(c1omega^2*c1thetaw*(c1omegabar(-1)/c1omega)^(exp(-c1thetawvar)/c1thetaw + 1)); 
c2lmult91 - (c1xiw*c2lmult90(+1)*nbeta*exp(-c1thetawvar(+1)))/(c1omega(+1)*c1thetaw*(c1omegabar/c1omega(+1))^(exp(-c1thetawvar(+1))/c1thetaw + 1)) + (c1beta*c2lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c2lmult87*c1xiw*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1)); 
c2lmult122 - c2lmult88*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw - 1))/(c1grmuzss*c1omegalead*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))) - c2lmult87*((c1beta*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegabar*c1xiw*exp(-c1lambdaq)*exp(-c1thetawvar(+1))*exp(c1hwlead)*exp(c1lambdaqlead)*(c1thetaw*exp(c1thetawvar(+1)) + 1))/(c1grmuzss*c1omegalead*c1pidlead*c1thetaw*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw + 1))); 
c2lmult22*exp(c1ow) - c1relc2*c2lmult62*exp(c1ow) + c2lmult25*exp(-c1yd)*exp(c1ow)*exp(c1rpwopd); 
(c1omegaoy*c1rhoo*c2lmult20*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - c1omegaoy^(c1rhoo/(c1rhoo + 1))*c2lmult17*exp(c1muoc)*exp(c1oy)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1) - 1) - c2lmult22*exp(c1oy); 
c2lmult78/c1pid - c2lmult31/c1pid - c2lmult32/c1pid - c2lmult30/c1pid - c2lmult108(-1)/nbeta - c1grmuzss*c2lmult92*exp(-c1w(-1))*exp(c1w) - c1iotap*c1pid^(c1iotap - 1)*c1pistar^(1 - c1iotap)*c2lmult75 + (c1pidbar(-1)*c2lmult74*c1xip*exp(-c1thetapvar))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^(exp(-c1thetapvar)/c1thetap + 1)) - (c1pidbar(-1)*c2lmult77*c1xip*exp(-c1thetapvar)*exp(c1deltad(-1))*(c1thetap*exp(c1thetapvar) + 1))/(c1pid^2*c1thetap*(c1pidbar(-1)/c1pid)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
c2lmult75 - (c2lmult74(+1)*c1xip*nbeta*exp(-c1thetapvar(+1)))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^(exp(-c1thetapvar(+1))/c1thetap + 1)) + (c2lmult77(+1)*c1xip*nbeta*exp(-c1thetapvar(+1))*exp(c1deltad)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pid(+1)*c1thetap*(c1pidbar/c1pid(+1))^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)) + (c1beta*c2lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c2lmult71*c1xip*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
c2lmult108 - (c1beta*c1pidbar*c2lmult72*c1xip*exp(-c1lambdaq)*exp(c1gplead)*exp(c1lambdaqlead)*((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap - 1))/(c1pidlead^2*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap)) + (c1beta*c1omegalead*c2lmult87*c1xiw*exp(-c1lambdaq)*exp(c1hwlead)*exp(c1lambdaqlead))/(c1grmuzss*c1pidlead^2*(c1omegabar/c1omegalead)^((exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw)) + (c1beta*c1omegalead*c2lmult88*c1xiw*exp(-c1lambdaq)*exp(c1gwlead)*exp(c1lambdaqlead)*(c1omegabar/c1omegalead)^(1 - (exp(-c1thetawvar(+1))*(c1thetaw*exp(c1thetawvar(+1)) + 1))/c1thetaw))/(c1grmuzss*c1pidlead^2) - (c1beta*c1pidbar*c2lmult71*c1xip*exp(-c1lambdaq)*exp(-c1thetapvar(+1))*exp(c1hplead)*exp(c1lambdaqlead)*(c1thetap*exp(c1thetapvar(+1)) + 1))/(c1pidlead^2*c1thetap*(c1pidbar/c1pidlead)^((exp(-c1thetapvar(+1))*(c1thetap*exp(c1thetapvar(+1)) + 1))/c1thetap + 1)); 
c2lmult73*exp(c1pstar) + (c2lmult74*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1))/(c1thetap*exp(c1pstar)^(exp(-c1thetapvar)/c1thetap + 1)) - (c2lmult77*exp(-c1thetapvar)*exp(c1pstar)*(c1xip - 1)*(c1thetap*exp(c1thetapvar) + 1))/(c1thetap*exp(c1pstar)^((exp(-c1thetapvar)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap + 1)); 
c2lmult5*(exp(c1q)*exp(c1zi)*((c1psii*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))^2)/2 - 1) - c1grmuzss*c1psii*exp(-c1i(-1))*exp(c1i)*exp(c1q)*exp(c1zi)*(c1grmuzss - c1grmuzss*exp(-c1i(-1))*exp(c1i))) + c2lmult6*exp(c1q) - c2lmult106(-1)/nbeta; 
c2lmult106 + (c1beta*c2lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c2lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c2lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - c2lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - c2lmult103(-1)/nbeta - c2lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult103 - c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult18*exp(c1rk) - c2lmult114(-1)/nbeta; 
c2lmult114 - (c1beta*c2lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss; 
- c2lmult20*exp(c1muoc)*exp(c1rmcpd)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1)) - c2lmult19*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)) - c2lmult18*exp(c1rmcpd)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)) - (c2lmult71*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap; 
c2lmult31(+1)*nbeta - c2lmult31 - c2lmult104(-1)/nbeta - c2lmult3*exp(c1lambdaq)*exp(c1rpcpd) - c2lmult29*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) - c2lmult11*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegamc*exp(-c1mc)*exp(c1cne)*exp(c1omegacm))^(c1rhoc/(c1rhoc + 1)) - c2lmult12*exp(c1muoc)*exp(c1rpcpd)*(c1omegaoc*exp(-c1muoc)*exp(-c1oc)*exp(c1c))^(c1rhoo/(c1rhoo + 1)) + c2lmult10*exp(c1rpcpd)*(c1omegacc*exp(-c1cne)*exp(c1c))^(c1rhoo/(c1rhoo + 1))*(c1omegac*exp(-c1cd)*exp(c1cne))^(c1rhoc/(c1rhoc + 1)) - c2lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) + c2lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) - c2lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) + c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) + (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult104 - c2lmult61*exp(-c1lambdaq)*exp(-c1rer)*exp(-c1rpcpd)*exp(-c1b*c1phibparm)*exp(c1lambdaqlead)*exp(c1rerlead)*exp(c1rpcpdlead) - (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult6*((c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1rklead))/c1grmuzss - (c1beta*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss) - c2lmult110(-1)/nbeta - c2lmult15*exp(c1rpipd)*(c1omegami*exp(-c1mi)*exp(c1i)*exp(c1omegaim))^(c1rhoi/(c1rhoi + 1)) + c2lmult14*exp(c1rpipd)*(c1omegai*exp(-c1id)*exp(c1i))^(c1rhoi/(c1rhoi + 1)) - c1beta*c1grmuzss*c2lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c2lmult110 + (c1beta*c2lmult6*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*(c1delta - 1))/c1grmuzss + c1beta*c1grmuzss*c2lmult5*c1psii*exp(-2*c1i)*exp(2*c1i(+1))*exp(-c1lambdaq)*exp(-c1rpipd)*exp(c1lambdaqlead)*exp(c1qlead)*exp(c1rpipdlead)*exp(c1zi(+1))*(c1grmuzss - c1grmuzss*exp(-c1i)*exp(c1i(+1))); 
c2lmult11*exp(c1rpmcpd) + c2lmult65*exp(c1rpmcpd) - c2lmult67*exp(c1rpmcpd) - c2lmult24*exp(c1mc)*exp(c1rpmcpd); 
c2lmult15*exp(c1rpmipd) + c2lmult67*exp(c1rpmipd) - c2lmult24*exp(c1mi)*exp(c1rpmipd); 
c2lmult30(+1)*nbeta - c2lmult30 + c2lmult29*exp(c1rpnepd); 
c2lmult32(+1)*nbeta - c2lmult32 + c2lmult12*exp(c1rpwopd) + c2lmult20*exp(c1rpwopd) + c2lmult63*exp(c1rpwopd) + c2lmult25*exp(-c1yd)*exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo)); 
-c2lmult23/(c1rrs + 1)^2; 
-c2lmult28/(c1rs + 1)^2; 
c2lmult25 - c2lmult64; 
c2lmult19*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegal*c1rhov*exp(-c1l)*exp(-c1zc)*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) + c2lmult16*exp(c1v) + c2lmult18*((c1omegavy*c1rhoo*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1grmuzss*c1omegak*c1rhov*exp(-c1k(-1))*exp(c1rmcpd)*exp(c1v)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1))*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1) - 1))/(c1rhov + 1)) - c1omegavy^(c1rhoo/(c1rhoo + 1))*c2lmult17*exp(c1v)*exp(c1v)^(1/(c1rhoo + 1) - 1)*(c1omegavy^(c1rhoo/(c1rhoo + 1))*exp(c1v)^(1/(c1rhoo + 1)) + c1omegaoy^(c1rhoo/(c1rhoo + 1))*(exp(c1muoc)*exp(c1oy))^(1/(c1rhoo + 1)))^c1rhoo; 
c2lmult19*exp(-c1zc)*exp(c1w) - c2lmult89*exp(-c1w)*exp(c1wstar) - c1grmuzss*c1pid*c2lmult92*exp(-c1w(-1))*exp(c1w) + c1grmuzss*c1pid(+1)*c2lmult92(+1)*nbeta*exp(-c1w)*exp(c1w(+1)) + (c2lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw - (c2lmult90*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
c2lmult4*exp(c1wdes) - (c2lmult87*exp(-c1w)*exp(-c1thetawvar)*exp(c1l)*exp(c1wdes)*(c1thetaw*exp(c1thetawvar) + 1))/c1thetaw; 
c2lmult89*exp(-c1w)*exp(c1wstar) + (c2lmult90*exp(-c1w)*exp(-c1thetawvar)*exp(c1wstar)*(c1xiw - 1))/(c1thetaw*(exp(-c1w)*exp(c1wstar))^(exp(-c1thetawvar)/c1thetaw + 1)); 
c2lmult69*exp(c1x) - c2lmult21*exp(c1x) - c2lmult25*exp(-c1yd)*exp(c1x) - c2lmult26*exp(-c1yd)*exp(c1x); 
c2lmult17*exp(c1y) + c2lmult76*exp(c1y) - (c1omegaoy*c1rhoo*c2lmult20*exp(-c1oy)*exp(c1rmcpd)*exp(c1y)*(c1omegaoy*exp(-c1muoc)*exp(-c1oy)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1))/(c1rhoo + 1) - (c1omegavy*c1rhoo*c2lmult18*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1grmuzss*c1omegak*exp(-c1k(-1))*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1) - (c1omegavy*c1rhoo*c2lmult19*exp(-c1v)*exp(c1rmcpd)*exp(c1y)*(c1omegavy*exp(-c1v)*exp(c1y))^(c1rhoo/(c1rhoo + 1) - 1)*(c1omegal*exp(-c1l)*exp(-c1zc)*exp(c1v))^(c1rhov/(c1rhov + 1)))/(c1rhoo + 1); 
c2lmult21*exp(c1yd) - c2lmult102(-1)/nbeta - c2lmult26*exp(-c1yd)*(exp(c1m) - exp(c1x)) - c2lmult76*exp(c1deltad)*exp(c1yd) - c2lmult25*exp(-c1yd)*(exp(c1m) - exp(c1x) + exp(c1rpwopd)*(exp(c1ow) - c1shareyoy*c1yss*exp(c1yo))) - c1sharegy*c2lmult27*exp(c1shockgy)*exp(c1yd) - (c2lmult72*exp(-c1thetapvar)*exp(c1yd)*(c1taup + 1))/c1thetap - (c2lmult71*exp(-c1thetapvar)*exp(c1rmcpd)*exp(c1yd)*(c1thetap*exp(c1thetapvar) + 1))/c1thetap - (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult102 + (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
exp(c2c)/(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss) - c2lmult100(+1)*nbeta + c2lmult38*exp(c2c) - (c2lmult33*exp(c2c)*exp(c2muc))/(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2 - (c2omegacc*c2rhoo*c2lmult59*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegaoc*c2rhoo*c2lmult42*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegacc*c2rhoo*c2lmult41*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) + (c2omegacc*c2rhoo*c2lmult40*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1); 
- c2lmult51*exp(c2cd) - c2omegac^(c2rhoc/(c2rhoc + 1))*c2lmult39*exp(c2cd)*exp(c2cd)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc - (c2omegac*c2rhoc*c2lmult40*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1); 
c2lmult100 - (c2vkappa*exp(-c2muc)*exp(c2clag))/(c2grmuzss*(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)) + (c2lmult33*c2vkappa*exp(c2clag))/(c2grmuzss*(exp(c2c)*exp(c2muc) - (c2vkappa*exp(c2clag))/c2grmuzss)^2); 
c2lmult41*((c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1) - (c2omegamc*c2rhoc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1)) + c2lmult39*exp(c2cne) + c2lmult40*((c2omegac*c2rhoc*exp(-c2cd)*exp(c2cne)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - (c2omegacc*c2rhoo*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)))/(c2rhoo + 1)) - c2omegacc^(c2rhoo/(c2rhoo + 1))*c2lmult38*exp(c2cne)*exp(c2cne)^(1/(c2rhoo + 1) - 1)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo + (c2omegacc*c2rhoo*c2lmult59*exp(-c2cne)*exp(c2c)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1); 
c2lmult60; 
c2lmult85*exp(c2deltad) - c2lmult84*exp(c2deltad)*exp(c2yd) - (c2lmult85(+1)*c2xip*nbeta*exp(c2deltad))/(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
- c2lmult2 - c2lmult86 - c2lmult117(-1)/nbeta; 
c2lmult117 + (c2beta*c2lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)^2); 
c2lmult57*exp(c2g) - c2lmult51*exp(c2g); 
c2lmult80*exp(c2gp) - c2lmult121(-1)/nbeta + c2lmult81*exp(-c2gp)*exp(c2hp); 
c2lmult121 - c2beta*c2lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
c2lmult56; 
c2lmult94*exp(c2gw) - c2lmult127(-1)/nbeta + c2lmult95*exp(-c2gw)*exp(c2hw); 
c2lmult127 - (c2beta*c2omegalead*c2lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead); 
c2lmult79*exp(c2hp) - c2lmult119(-1)/nbeta - c2lmult81*exp(-c2gp)*exp(c2hp); 
c2lmult119 - (c2beta*c2lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap); 
c2lmult93*exp(c2hw) - c2lmult125(-1)/nbeta - c2lmult95*exp(-c2gw)*exp(c2hw); 
c2lmult125 - (c2beta*c2omegalead*c2lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)); 
c2lmult35*(c2grmuzss^2*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(c2q)*exp(c2zi) - 2*c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i)) + c2beta*c2grmuzss^2*c2psii*exp(-3*c2i)*exp(3*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1)) - 2*c2beta*c2grmuzss*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) + c2lmult43*exp(c2i) + c2lmult37*(exp(c2i)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(2*c2i)*exp(-c2i(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) - c2lmult35(+1)*nbeta*(c2grmuzss^2*c2psii*exp(-2*c2i)*exp(2*c2i(+1))*exp(c2q(+1))*exp(c2zi(+1)) - 2*c2grmuzss*c2psii*exp(-c2i)*exp(c2i(+1))*exp(c2q(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1)))) - (c2lmult35(-1)*(c2beta*c2grmuzss^2*c2psii*exp(3*c2i)*exp(-3*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi) - 2*c2beta*c2grmuzss*c2psii*exp(2*c2i)*exp(-2*c2i(-1))*exp(-c2lambdaq(-1))*exp(-c2rpipd(-1))*exp(c2lambdaqlead(-1))*exp(c2qlead(-1))*exp(c2rpipdlead(-1))*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))))/nbeta + c2grmuzss*c2psii*c2lmult37(+1)*nbeta*exp(-c2i)*exp(2*c2i(+1))*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c2omegai*c2rhoi*c2lmult44*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - (c2omegami*c2rhoi*c2lmult45*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
- c2lmult51*exp(c2id) - c2omegai^(c2rhoi/(c2rhoi + 1))*c2lmult43*exp(c2id)*exp(c2id)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi - (c2omegai*c2rhoi*c2lmult44*exp(-c2id)*exp(c2i)*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1); 
c2lmult37*exp(c2k) + (c2lmult37(+1)*nbeta*exp(c2k)*(c2delta - 1))/c2grmuzss - (c2omegak^(c2rhov/(c2rhov + 1))*c2lmult46(+1)*nbeta*exp(c2k)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l(+1))*exp(c2zc(+1)))^(1/(c2rhov + 1)))^c2rhov*(exp(c2k)/c2grmuzss)^(1/(c2rhov + 1) - 1))/c2grmuzss + (c2grmuzss*c2omegak*c2rhov*c2lmult48(+1)*nbeta*exp(-c2k)*exp(c2rmcpd(+1))*exp(c2v(+1))*(c2omegavy*exp(-c2v(+1))*exp(c2y(+1)))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k)*exp(c2v(+1)))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1); 
(c2omegal*c2rhov*c2lmult49*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1) - (c2lmult94*exp(-c2thetawvar)*exp(c2l)*(c2tauw + 1))/c2thetaw - (c2chi*c2chi0*c2lmult34*exp(-c2lambdaq)*exp(c2l))/(1 - exp(c2l))^(c2chi + 1) - c2omegal^(c2rhov/(c2rhov + 1))*c2lmult46*exp(c2l)*exp(c2zc)*(c2omegak^(c2rhov/(c2rhov + 1))*(exp(c2k(-1))/c2grmuzss)^(1/(c2rhov + 1)) + c2omegal^(c2rhov/(c2rhov + 1))*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1)))^c2rhov*(exp(c2l)*exp(c2zc))^(1/(c2rhov + 1) - 1) - (c2lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw - (c2chi0*exp(c2l))/(1 - exp(c2l))^c2chi; 
c2lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - c2lmult113(-1)/nbeta - c2lmult33*exp(c2lambdaq)*exp(c2rpcpd) + (c2chi0*c2lmult34*exp(-c2lambdaq))/(1 - exp(c2l))^c2chi - c2lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c2beta*c2lmult53*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss + (c2beta*c2lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) + (c2beta*c2lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + c2beta*c2lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) + (c2beta*c2omegalead*c2lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c2lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) - c2beta*c2grmuzss*c2psii*c2lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) - (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult113 - c2lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) + c2lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c2beta*c2lmult53*exp(-c2lambdaq)*exp(c2lambdaqlead))/c2grmuzss - (c2beta*c2lmult58*exp(-c2lambdaq)*exp(c2lambdaqlead))/(c2grmuzss*(c2dpdlead + 1)) - (c2beta*c2lmult79*c2xip*exp(-c2lambdaq)*exp(c2hplead)*exp(c2lambdaqlead))/(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - c2beta*c2lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*(c2pidbar/c2pidlead)^(1 - (exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap) - (c2beta*c2omegalead*c2lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) - (c2beta*c2omegalead*c2lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + c2beta*c2grmuzss*c2psii*c2lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))) + (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult54*exp(c2m) + c2lmult55*exp(-c2yd)*exp(c2m) + c2lmult56*exp(-c2yd)*exp(c2m); 
(c2omegamc*c2rhoc*c2lmult41*exp(-c2mc)*exp(c2cne)*exp(c2omegacm)*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1) - 1))/(c2rhoc + 1) - c2lmult54*exp(c2mc)*exp(c2rpmcpd) - c2lmult39*exp(c2mc)*exp(c2mc)^(1/(c2rhoc + 1) - 1)*(c2omegac^(c2rhoc/(c2rhoc + 1))*exp(c2cd)^(1/(c2rhoc + 1)) + exp(c2mc)^(1/(c2rhoc + 1))*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)))^c2rhoc*(c2omegamc*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - (c2lmult69*exp(c2mc))/c1relc2; 
(c2omegami*c2rhoi*c2lmult45*exp(-c2mi)*exp(c2i)*exp(c2omegaim)*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1) - 1))/(c2rhoi + 1) - c2lmult54*exp(c2mi)*exp(c2rpmipd) - c2lmult43*exp(c2mi)*exp(c2mi)^(1/(c2rhoi + 1) - 1)*(c2omegai^(c2rhoi/(c2rhoi + 1))*exp(c2id)^(1/(c2rhoi + 1)) + exp(c2mi)^(1/(c2rhoi + 1))*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)))^c2rhoi*(c2omegami*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) - (c2lmult69*exp(c2mi))/c1relc2; 
(c2omegaoc*c2rhoo*c2lmult42*exp(-c2oc)*exp(c2c)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoc^(c2rhoo/(c2rhoo + 1))*c2lmult38*exp(c2muoc)*exp(c2oc)*(c2omegacc^(c2rhoo/(c2rhoo + 1))*exp(c2cne)^(1/(c2rhoo + 1)) + c2omegaoc^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oc))^(1/(c2rhoo + 1) - 1) - c2lmult52*exp(c2oc); 
c2lmult98 - c2lmult123(-1)/nbeta - c2iotaw*c2omega^(c2iotaw - 1)*c2lmult97*(c2grmuzss*c2pistar)^(1 - c2iotaw) + (c2omegabar(-1)*c2xiw*c2lmult96*exp(-c2thetawvar))/(c2omega^2*c2thetaw*(c2omegabar(-1)/c2omega)^(exp(-c2thetawvar)/c2thetaw + 1)); 
c2lmult97 - (c2xiw*c2lmult96(+1)*nbeta*exp(-c2thetawvar(+1)))/(c2omega(+1)*c2thetaw*(c2omegabar/c2omega(+1))^(exp(-c2thetawvar(+1))/c2thetaw + 1)) + (c2beta*c2lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2lmult93*c2xiw*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1)); 
c2lmult123 - c2lmult94*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw - 1))/(c2grmuzss*c2omegalead*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))) - c2lmult93*((c2beta*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegabar*c2xiw*exp(-c2lambdaq)*exp(-c2thetawvar(+1))*exp(c2hwlead)*exp(c2lambdaqlead)*(c2thetaw*exp(c2thetawvar(+1)) + 1))/(c2grmuzss*c2omegalead*c2pidlead*c2thetaw*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw + 1))); 
c2lmult52*exp(c2ow) - c2lmult62*exp(c2ow) + c2lmult55*exp(-c2yd)*exp(c2ow)*exp(c2rpwopd); 
(c2omegaoy*c2rhoo*c2lmult50*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - c2omegaoy^(c2rhoo/(c2rhoo + 1))*c2lmult47*exp(c2muoc)*exp(c2oy)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1) - 1) - c2lmult52*exp(c2oy); 
c2lmult86/c2pid - c2lmult60/c2pid - c2lmult109(-1)/nbeta - c2grmuzss*c2lmult98*exp(-c2w(-1))*exp(c2w) - c2iotap*c2pid^(c2iotap - 1)*c2pistar^(1 - c2iotap)*c2lmult83 + (c2pidbar(-1)*c2lmult82*c2xip*exp(-c2thetapvar))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^(exp(-c2thetapvar)/c2thetap + 1)) - (c2pidbar(-1)*c2lmult85*c2xip*exp(-c2thetapvar)*exp(c2deltad(-1))*(c2thetap*exp(c2thetapvar) + 1))/(c2pid^2*c2thetap*(c2pidbar(-1)/c2pid)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
c2lmult83 - (c2lmult82(+1)*c2xip*nbeta*exp(-c2thetapvar(+1)))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^(exp(-c2thetapvar(+1))/c2thetap + 1)) + (c2lmult85(+1)*c2xip*nbeta*exp(-c2thetapvar(+1))*exp(c2deltad)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pid(+1)*c2thetap*(c2pidbar/c2pid(+1))^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)) + (c2beta*c2lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2lmult79*c2xip*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
c2lmult109 - (c2beta*c2pidbar*c2lmult80*c2xip*exp(-c2lambdaq)*exp(c2gplead)*exp(c2lambdaqlead)*((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap - 1))/(c2pidlead^2*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap)) + (c2beta*c2omegalead*c2lmult93*c2xiw*exp(-c2lambdaq)*exp(c2hwlead)*exp(c2lambdaqlead))/(c2grmuzss*c2pidlead^2*(c2omegabar/c2omegalead)^((exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw)) + (c2beta*c2omegalead*c2lmult94*c2xiw*exp(-c2lambdaq)*exp(c2gwlead)*exp(c2lambdaqlead)*(c2omegabar/c2omegalead)^(1 - (exp(-c2thetawvar(+1))*(c2thetaw*exp(c2thetawvar(+1)) + 1))/c2thetaw))/(c2grmuzss*c2pidlead^2) - (c2beta*c2pidbar*c2lmult79*c2xip*exp(-c2lambdaq)*exp(-c2thetapvar(+1))*exp(c2hplead)*exp(c2lambdaqlead)*(c2thetap*exp(c2thetapvar(+1)) + 1))/(c2pidlead^2*c2thetap*(c2pidbar/c2pidlead)^((exp(-c2thetapvar(+1))*(c2thetap*exp(c2thetapvar(+1)) + 1))/c2thetap + 1)); 
c2lmult81*exp(c2pstar) + (c2lmult82*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1))/(c2thetap*exp(c2pstar)^(exp(-c2thetapvar)/c2thetap + 1)) - (c2lmult85*exp(-c2thetapvar)*exp(c2pstar)*(c2xip - 1)*(c2thetap*exp(c2thetapvar) + 1))/(c2thetap*exp(c2pstar)^((exp(-c2thetapvar)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap + 1)); 
c2lmult35*(exp(c2q)*exp(c2zi)*((c2psii*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))^2)/2 - 1) - c2grmuzss*c2psii*exp(-c2i(-1))*exp(c2i)*exp(c2q)*exp(c2zi)*(c2grmuzss - c2grmuzss*exp(-c2i(-1))*exp(c2i))) + c2lmult36*exp(c2q) - c2lmult107(-1)/nbeta; 
c2lmult107 + (c2beta*c2lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*c2lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c2lmult48*exp(c2rk) - c2lmult115(-1)/nbeta; 
c2lmult115 - (c2beta*c2lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss; 
- c2lmult50*exp(c2muoc)*exp(c2rmcpd)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1)) - c2lmult49*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)) - c2lmult48*exp(c2rmcpd)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)) - (c2lmult79*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
c2lmult40*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegac*exp(-c2cd)*exp(c2cne))^(c2rhoc/(c2rhoc + 1)) - c2lmult33*exp(c2lambdaq)*exp(c2rpcpd) - c2lmult59*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - c2lmult41*exp(c2rpcpd)*(c2omegacc*exp(-c2cne)*exp(c2c))^(c2rhoo/(c2rhoo + 1))*(c2omegamc*exp(-c2mc)*exp(c2cne)*exp(c2omegacm))^(c2rhoc/(c2rhoc + 1)) - c2lmult42*exp(c2muoc)*exp(c2rpcpd)*(c2omegaoc*exp(-c2muoc)*exp(-c2oc)*exp(c2c))^(c2rhoo/(c2rhoo + 1)) - c2lmult105(-1)/nbeta + c2lmult65*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd) - c2lmult66*exp(-c1rer)*exp(-c1rpcpd)*exp(c2rpcpd) + c2lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd) - c2lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) - (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult105 + c2lmult61*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(c2lambdaqlead)*exp(c2rpcpdlead) + (c1b*c2beta*c1grmuzss*c2lmult64*exp(-c2lambdaq)*exp(-c2rpcpd)*exp(-c1rerlead)*exp(-c1rpcpdlead)*exp(-c1yd)*exp(c1blag*c1phibparm)*exp(c2lambdaqlead)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpcpdlead)*exp(c1ydlead))/c2grmuzss; 
c2lmult36*((c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2rklead))/c2grmuzss - (c2beta*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss) - c2lmult111(-1)/nbeta - c2lmult45*exp(c2rpipd)*(c2omegami*exp(-c2mi)*exp(c2i)*exp(c2omegaim))^(c2rhoi/(c2rhoi + 1)) + c2lmult44*exp(c2rpipd)*(c2omegai*exp(-c2id)*exp(c2i))^(c2rhoi/(c2rhoi + 1)) - c2beta*c2grmuzss*c2psii*c2lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c2lmult111 + (c2beta*c2lmult36*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*(c2delta - 1))/c2grmuzss + c2beta*c2grmuzss*c2psii*c2lmult35*exp(-2*c2i)*exp(2*c2i(+1))*exp(-c2lambdaq)*exp(-c2rpipd)*exp(c2lambdaqlead)*exp(c2qlead)*exp(c2rpipdlead)*exp(c2zi(+1))*(c2grmuzss - c2grmuzss*exp(-c2i)*exp(c2i(+1))); 
c2lmult41*exp(c2rpmcpd) + c2lmult66*exp(c2rpmcpd) - c2lmult68*exp(c2rpmcpd) - c2lmult54*exp(c2mc)*exp(c2rpmcpd); 
c2lmult45*exp(c2rpmipd) + c2lmult68*exp(c2rpmipd) - c2lmult54*exp(c2mi)*exp(c2rpmipd); 
c2lmult60(+1)*nbeta - c2lmult60 + c2lmult59*exp(c2rpnepd); 
c2lmult42*exp(c2rpwopd) + c2lmult50*exp(c2rpwopd) + c2lmult55*exp(-c2yd)*exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo)) - c2lmult63*exp(-c2rpcpd)*exp(c1rer)*exp(c1rpcpd)*exp(c2rpwopd); 
-c2lmult53/(c2rrs + 1)^2; 
-c2lmult58/(c2rs + 1)^2; 
c2lmult55; 
c2lmult49*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegal*c2rhov*exp(-c2l)*exp(-c2zc)*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) + c2lmult46*exp(c2v) + c2lmult48*((c2omegavy*c2rhoo*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2grmuzss*c2omegak*c2rhov*exp(-c2k(-1))*exp(c2rmcpd)*exp(c2v)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1))*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1) - 1))/(c2rhov + 1)) - c2omegavy^(c2rhoo/(c2rhoo + 1))*c2lmult47*exp(c2v)*exp(c2v)^(1/(c2rhoo + 1) - 1)*(c2omegavy^(c2rhoo/(c2rhoo + 1))*exp(c2v)^(1/(c2rhoo + 1)) + c2omegaoy^(c2rhoo/(c2rhoo + 1))*(exp(c2muoc)*exp(c2oy))^(1/(c2rhoo + 1)))^c2rhoo; 
c2lmult49*exp(-c2zc)*exp(c2w) - c2lmult95*exp(-c2w)*exp(c2wstar) - c2grmuzss*c2pid*c2lmult98*exp(-c2w(-1))*exp(c2w) + c2grmuzss*c2pid(+1)*c2lmult98(+1)*nbeta*exp(-c2w)*exp(c2w(+1)) + (c2lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw - (c2lmult96*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
c2lmult34*exp(c2wdes) - (c2lmult93*exp(-c2w)*exp(-c2thetawvar)*exp(c2l)*exp(c2wdes)*(c2thetaw*exp(c2thetawvar) + 1))/c2thetaw; 
c2lmult95*exp(-c2w)*exp(c2wstar) + (c2lmult96*exp(-c2w)*exp(-c2thetawvar)*exp(c2wstar)*(c2xiw - 1))/(c2thetaw*(exp(-c2w)*exp(c2wstar))^(exp(-c2thetawvar)/c2thetaw + 1)); 
c2lmult70*exp(c2x) - c2lmult51*exp(c2x) - c2lmult55*exp(-c2yd)*exp(c2x) - c2lmult56*exp(-c2yd)*exp(c2x); 
c2lmult47*exp(c2y) + c2lmult84*exp(c2y) - (c2omegaoy*c2rhoo*c2lmult50*exp(-c2oy)*exp(c2rmcpd)*exp(c2y)*(c2omegaoy*exp(-c2muoc)*exp(-c2oy)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1))/(c2rhoo + 1) - (c2omegavy*c2rhoo*c2lmult48*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2grmuzss*c2omegak*exp(-c2k(-1))*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1) - (c2omegavy*c2rhoo*c2lmult49*exp(-c2v)*exp(c2rmcpd)*exp(c2y)*(c2omegavy*exp(-c2v)*exp(c2y))^(c2rhoo/(c2rhoo + 1) - 1)*(c2omegal*exp(-c2l)*exp(-c2zc)*exp(c2v))^(c2rhov/(c2rhov + 1)))/(c2rhoo + 1); 
c2lmult51*exp(c2yd) - c2lmult56*exp(-c2yd)*(exp(c2m) - exp(c2x)) - c2lmult84*exp(c2deltad)*exp(c2yd) - c2lmult55*exp(-c2yd)*(exp(c2m) - exp(c2x) + exp(c2rpwopd)*(exp(c2ow) - c2shareyoy*c2yss*exp(c2yo))) - c2sharegy*c2lmult57*exp(c2shockgy)*exp(c2yd) - (c2lmult80*exp(-c2thetapvar)*exp(c2yd)*(c2taup + 1))/c2thetap - (c2lmult79*exp(-c2thetapvar)*exp(c2rmcpd)*exp(c2yd)*(c2thetap*exp(c2thetapvar) + 1))/c2thetap; 
c2lmult2; 
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
