global alph bet tau chi chi0 sig epp epw nkappa xip neta nbeta; 
global xiw gamp gamw MUw theta mps_flag exthabit; 
global nrhoa nrhob nrhog nrhoi nrhol nrhoTp nrhoTw nirc nuflag na0 lTaxpBar lTaxwBar inflBar;
global winflBar intBar ABar BBar GBar IBar LBar NBar YBar Sigma_e_ options_;
global TaxBar TaxBarw CapPhi;
global mpr1 mpp0 mpp1 mpdp0 mpw0 mpygap0 mpygap1 mpdygap0 mpy0 mpdy0 mpdi0 mppf1 mpest;
global sigpm chipm chipm0 thetapm netapm xippm xiwpm gamppm gamwpm nkappapm;

dynare_path ='c:\dynare_v3.03\matlab\';

parvector = [0.5950, ...
 0.1172, 0.1251, 0.2872, 2.3529, 1.0451, 0.0002, 4.0473, 0.2050, 0.2945,...
 0.9629, 0.9959, 0.9462, 0.9453, 0.9836, 0.7347, 0.5413, 2.1673, 0.2930,...
 1.3592, 1.0843, 0.2127, 0.7648, 0.8344, 0.8200, 0.0787, 2.7497, 0.2951,...
 0.8305, 0.0559, 0.5059];

% model parameters
siga    = parvector(1);
sigb    = parvector(3);
sigg    = parvector(4);
sigl    = parvector(5);
sigi    = parvector(6);
sigq    = parvector(8);
sigp    = parvector(9);
sigw    = parvector(10);
rhoa = parvector(11);
rhob = parvector(13);
rhog = parvector(14);
rhol = parvector(15);
rhoi = parvector(16);
zet     = parvector(17);
sig     = parvector(18);
theta   = parvector(19);
chi     = parvector(20);
phi     = parvector(21);
mypsi   = parvector(22);
xiw     = parvector(23);
xip     = parvector(24);
gamw    = parvector(25);
gamp    = parvector(26);

% imposed parameters
alph = 0.36;      % OK (alpha)
bet  = 0.99;       % OK (beta)
tau  = 0.025;      % OK (tau)
lamw = 0.2;
nbeta=bet;
exthabit=0;


% policymaker values
thetapm = theta;
sigpm  = sig;
chipm  = chi;
chipm0 = chi0;
gamppm = gamp;
gamwpm = gamw;
xippm  = xip;
xiwpm  = xiw;
netapm = neta;
nkappapm = nkappa;



% estimated structural parameters
nkappa = 1/zet;         % OK (inverse zeta)
chi0 = 1;          % OK (nuisance scale)
epp =  6;           % OK
epw =  6;        % OK
neta = 1/mypsi;        % OK (inverse psi)
nirc = 0;           % OK (interest rate channel)

gsh = 0.20;

a0=1.;
%llss=log(lsssave);

klss = (1/(alph*bet))*(1-bet*(1-tau));
klss=a0*klss^(-1/(1-alph));
ilss=klss*tau;
ylss= (a0^(1-alph))*klss^alph/phi;
wss=(1-alph)*ylss*phi;
glss=gsh*ylss;
clss=ylss-ilss-glss;
llss= (log(wss)-log(chi0)- sig*log(clss*(1-theta))+log(1-(1-exthabit)*bet*theta) )/(chi+sig);

%lchi0= -(chi+sig)*llss+(log(wss)- sig*log(clss*(1-theta))+log(1-(1-exthabit)*bet*theta) );
%chi0=exp(lchi0);

lss=exp(llss);
gss=glss*lss;
kss=klss*lss;
css=clss*lss;
yss=(a0^(1-alph))*(kss^alph)*(lss^(1-alph))/(phi);
iss=ilss*lss;

csh=css/yss;
ksh=kss/yss;
YBar = yss;
GBar = gss;     
YBarf = YBar;       
CapPhi = (phi-1)*yss;
na0 =bet^(-1)-1.0+tau; % OK (this makes u=1 the steady state)

nuflag = 1;         % OK (allow for variable cu)
mps_flag = 1;       % OK

ABar=1;             % OK 
BBar=1;             % OK 
IBar=1;             % OK 
LBar=1;             % OK 
 
%lTaxpBar =log((epp-1)/epp); % OK
%lTaxwBar =log((epw-1)/epw); % OK

lTaxpBar = 0;
lTaxwBar = 0;

inflBar  = 1.0;                % OK
winflBar = 1.0;               % OK
intBar = inflBar/bet;     % OK

nrhoa = rhoa;                 % OK
nrhob = rhob;               % OK
nrhog = rhog;                 % OK
nrhoi = rhoi;               % OK
nrhol = rhol;               % OK

nrhoTp = 0;                  % OK
nrhoTw = 0;                  % OK

% covariance matrix of innovations

Sigma_e_ = zeros(10,10);    % 
Sigma_e_(1,1)=siga^2;
Sigma_e_(2,2)=(((1-theta+bet*theta*(1+theta))/((1-theta)*(1-nrhob*(1+bet*theta)+(nrhob^2)*bet*theta)  ))*sigb)^2;
Sigma_e_(3,3)=(sigg)^2;
Sigma_e_(4,4)=((bet*(1+bet)/(bet*nrhoi-1) )*sigi)^2;
Sigma_e_(5,5)=sigl^2;
Sigma_e_(6,6)=0;
Sigma_e_(7,7)=0;
Sigma_e_(8,8)=((((1+bet*gamp)*xip)/((1-bet*xip)*(1-xip)))*sigp)^2;
Sigma_e_(9,9)=sigq^2;
Sigma_e_(10,10)=(( (1+bet)*(lamw+(1+lamw)*chi)*xiw/(lamw*(1-bet*xiw)*(1-xiw)))*sigw)^2;
Sigma_e_=Sigma_e_/10000;

% policy rule coefficents

mpest=0;

mpr1 = 0;
mpp0 = 1;
mppf1 = 0;
mpw0 = 0;
mpygap0 = 0;
mpygap1 = 0;
mpy0 = 1;
mpdy0 = 0;
mpdi0 = 0;
mpp1=0;
mpdygap0=0;
mpdp0=0;

if mpest==1,
mpr1 = parvector(29);
mpp1 = parvector(27);
mpy1 = parvector(30);
mpdp0 = parvector(28);
mpdygap0 = parvector(31);
mpp0=0;
mpy0=0;
mpygap0=0;
mpygap1=0;
mpf1=0;
mpw0=0;
end


if ~exist('options_.dispflag'),
  options_.dispflag = 0;
end;
