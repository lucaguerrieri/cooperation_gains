%steadystate for nonlinear model

%parameters
c2omegaoc = c2shareocc; %given by def_parm_assembled
c2omegacc = 1-c2omegaoc; 
c2omegamc = c2sharemccn; %given by def_parm_assembled
c2omegac = 1-c2omegamc; 
c2omegami = c2sharemii;
c2omegai  = 1-c2omegami;

%quantities
c2l = c2less;
c2y = 1/(c2sharely/c2less); % given by def_parm_assembled
c2muz = c2muzss;
c2rpopd = 1;

c2yd = c2y;
c2i = c2shareiy*c2yd;
c2k = 1/(1-(1-c2delta)/c2muz)*c2shareiy*c2yd;
c2c = c2sharecy*c2yd;
c2cne = c2omegacc*c2c;
c2oc = c2omegaoc*c2c;
c2cd = c2omegac*c2cne;
c2mc = c2omegamc*c2cne;
c2id = c2omegai*c2i;
c2mi = c2omegami*c2i;
c2omegaoy = c2shareoyy;
c2omegavy = 1-c2omegaoy;
c2oy = c2omegaoy*c2yd;
c2v = c2omegavy*c2yd;
c2o = c2oc+c2oy;
c2m = c2mi+c2mc;
c2g = c2sharegy*c2yd;
c2x = c2sharexy*c2yd;

c2ow = c2shareowy*c2yd;
c2op = c2shareopow*c2ow;
c2os = 1/c2shareopos*c2op; 
c2oi = c2shareoiow*c2ow;
c2rpwopd = c2pwoss;
c2gdp = c2sharengdpny*c2yd;

c2tbal = (c2x-c2m+c2rpwopd*(c2shareyoy*c2yd-c2ow))/c2yd;
c2gtbal = (c2x-c2m)/c2yd;

%prices
c2dpd = 0;
c2pitar = 0;
c2dw = 0;

c2lambdaq = (c2c-c2vkappa/c2muz*c2c)^(-1);

c2rk = c2muzss/c2beta-1+c2delta;
c2w = c2rk/((c2omegak*c2sharevy/c2shareky*c2muz)/(c2omegal*c2sharevy/c2sharely))^(c2rhov/(1+c2rhov));

c2rrs = 1/(c2beta/c2muz)-1;
c2rs = 1/(c2beta/c2muz)-1;
c2rpipd = 1;
c2rpcpd = 1;
c2rpnepd = 1;
c2rpmipd = 1;
c2rpmcpd = 1;
c2q = 1;
c2tauw = c2thetaw;
c2taup = c2thetap;
c2wdes = (1+c2tauw)/(1+c2thetaw)*c2w;
c2rmcpd = (1+c2taup)/(1+c2thetap);
c2chi0 = (c2w)*(c2lambdaq)/((1-(c2l))^(-c2chi));
c2rhoi = c2rhoc;

c2rer = 1;
c2b = 0;

c2zc = 0;
c2zclag = 0;
c2zi = 0;
c2yo = 0;
c2lagyo = 0;
c2muoc = 0;
c2lagmuoc = 0;
c2muc = 0;
c2omegacm = 0;
c2lagomegacm = 0;
c2omegaim = c2omegacm;
c2thetapvar = 0;
c2thetawvar = 0;
c2pitar = 0;
c2zw = 0;
c2z = c2zc + c2zw;
c2zwlag = c2zw;
c2muow = 0;
c2muowlag = c2muow;
c2muo = c2muoc + c2muow;
c2shockgy = 0;

c2grmuoss = c2muoss;
c2grmuzoss = c2muzoss;
c2grmuzss = c2muzss;

c2pistar = c1pistar;

c2welf = (log(c2c-c2vkappa/c2grmuzss*c2c)+ c2chi0/(1-c2chi)*(1-c2l)^(1-c2chi))/(1-c2beta);
