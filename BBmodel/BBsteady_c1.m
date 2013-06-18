%steadystate for nonlinear model

%parameters
c1omegaoc = c1shareocc; %given by def_parm_BB
c1omegacc = 1-c1omegaoc; 
c1omegamc = c1sharemccn; %given by def_parm_BB
c1omegac = 1-c1omegamc; 
c1omegami = c1sharemii;
c1omegai  = 1-c1omegami;

%quantities
c1l = c1less;
c1y = 1/(c1sharely/c1less); % given by def_parm_BB
c1muz = c1muzss;
c1rpopd = 1;

c1yd = c1y;
c1i = c1shareiy*c1yd;
c1k = 1/(1-(1-c1delta)/c1muz)*c1shareiy*c1yd;
c1c = c1sharecy*c1yd;
c1cne = c1omegacc*c1c;
c1oc = c1omegaoc*c1c;
c1cd = c1omegac*c1cne;
c1mc = c1omegamc*c1cne;
c1id = c1omegai*c1i;
c1mi = c1omegami*c1i;
c1omegaoy = c1shareoyy;
c1omegavy = 1-c1omegaoy;
c1oy = c1omegaoy*c1yd;
c1v = c1omegavy*c1yd;
c1o = c1oc+c1oy;
c1m = c1mi+c1mc;
c1g = c1sharegy*c1yd;
c1x = c1sharexy*c1yd;

c1ow = c1shareowy*c1yd;
c1op = c1shareopow*c1ow;
c1os = 1/c1shareopos*c1op; 
c1oi = c1shareoiow*c1ow;
c1rpwopd = c1pwoss;
c1gdp = c1sharengdpny*c1yd;

c1tbal = (c1x-c1m+c1rpwopd*(c1shareyoy*c1yd-c1ow))/c1yd;
c1gtbal = (c1x-c1m)/c1yd;

%prices
c1dpd = 0;
c1pitar = 0;
c1dw = 0;

c1lambdaq = (c1c-c1vkappa/c1muz*c1c)^(-1);

c1rk = c1muzss/c1beta-1+c1delta;
c1w = c1rk/((c1omegak*c1sharevy/c1shareky*c1muz)/(c1omegal*c1sharevy/c1sharely))^(c1rhov/(1+c1rhov));

c1rrs = 1/(c1beta/c1muz)-1;
c1rs = 1/(c1beta/c1muz)-1;
c1rpipd = 1;
c1rpcpd = 1;
c1rpnepd = 1;
c1rpmipd = 1;
c1rpmcpd = 1;
c1q = 1;
%c1tauw = c1thetaw;
c1taup = c1thetap;
c1wdes = c1w;
c1rmcpd = (1+c1taup)/(1+c1thetap);
c1chi0 = (c1wdes)*(c1lambdaq)/((1-(c1l))^(-c1chi));
c1rhoi = c1rhoc;

c1rer = 1;
c1b = 0;
c1phibparm = c1phib;  

c1zc = 0;
c1zclag = 0;
c1zi = 0;
c1yo = 0;
c1lagyo = 0;
c1muoc = 0;
c1lagmuoc = 0;
c1muc = 0;
c1omegacm = 0;
c1lagomegacm = 0;
c1omegaim = c1omegacm;
c1thetapvar = 0;
c1thetawvar = 0;
c1pitar = 0;
c1zw = 0;
c1z = c1zc + c1zw;
c1zwlag = c1zw;
c1muow = 0;
c1muowlag = c1muow;
c1muo = c1muoc + c1muow;
c1shockgy = 0;



c1grmuoss = c1muoss;

c1grmuzss = c1muzss;
c1grmuzoss = c1muzoss;

c1welf = (log(c1c-c1vkappa/c1grmuzss*c1c)+ c1chi0/(1-c1chi)*(1-c1l)^(1-c1chi))/(1-c1beta);

