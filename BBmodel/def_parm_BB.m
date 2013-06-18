% country one simple parameters kept fixed



c1muoss = 1.0026;

c1deltao = 0.4;
c1alphaop = 1; %1-0.001;
c1phimc = 0;
c1delta = 1; %0.025;     % depreciation rate
%c1chi = 10.00;       % determines labor supply elasticity
c1rhov = -2.00;      % determines elasticity of sub between capital and labor


c1adjswitch = 1;     % switch that allows import preference shocks in the trade adjustment costs
c1ziswitch = 0;      % switch that allows investment shocks in the investment adjustment costs

c1omegal = 1;        % weight of labor in CES aggregator


c1muzoss = c1muzss/c1muoss;

c1shareopos = (1-c1beta/c1muzss*c1muzoss*(1-c1deltao))/(c1beta*(1-c1alphaop)/c1alphaop);
c1shareoop = (c1beta*(1-c1alphaop)/c1alphaop/(c1muoss-c1beta*(1-c1deltao)))^(1-c1alphaop);
c1pwoss = c1alphaop * c1shareoop;    % steady state value of wholesale price


c1shareowy = c1shareowy_nominal/c1pwoss;
c1shareowo = 1/c1shareoop+(1-(1-c1deltao)/c1muoss)*c1muoss*(c1muoss*c1shareopos)^-c1alphaop;
c1shareopow = (1/(c1shareoop))/c1shareowo;

c1shareoiow = 1-1/c1shareoop/c1shareowo;
c1shareoy = c1shareowy/c1shareowo;

c1ratiooyoc = 1.86;         %ratio of oil inputs in production to inputs in consumption
c1shareiy = 0.000001; %0.15;      %investment share of gross output

% c1vkappa = 0.8;

% c1psii = 3;
% c1scalezierr = 0.001;
% c1rhozi = .5;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% country two simple parameters kept fixed


c2sigma = c1sigma;
c2beta = c1beta;   % discount factor
c2delta = 1; %0.025;  % depreciation rate

c2adjswitch = 1;
c2ziswitch = 1;
c2chi = c1chi;  % determines labor supply elasticity
c2rhov = -2.00;  % determines elasticity of sub between capital and labor

c2less = 1/3;    % share of time spent working
c2phib = 0;

c2omegal = 1;

c2muzoss = c1muzoss;
c2muzss = c1muzss;
c2muoss = c1muoss;


c2pwoss = c1pwoss; 
c2alphaop = c1alphaop;
c2deltao = c1deltao;

c2shareopos = (1-c2beta/c2muzss*c2muzoss*(1-c2deltao))/(c2beta*(1-c2alphaop)/c2alphaop);
c2shareoop = (c2beta*(1-c2alphaop)/c2alphaop/(c2muoss-c2beta*(1-c2deltao)))^(1-c2alphaop);
c2pwoss = c2alphaop * c2shareoop;    % steady state value of wholesale price


% Expenditure shares

c2shareowy  = c2shareowy_nominal/c2pwoss;
c2shareowo  = 1/c2shareoop+(1-(1-c2deltao)/c2muoss)*c2muoss*(c2muoss*c2shareopos)^-c2alphaop;
c2shareopow = (1/(c2shareoop))/c2shareowo;
c2shareoiow = 1-1/c2shareoop/c2shareowo;
c2shareoy   = c2shareowy/c2shareowo;
c2ratiooyoc = c1ratiooyoc;       %ratio of oil inputs in production to inputs in consumption

c2shareiy = c1shareiy;      %investment share of gross output
c2sharegy = c1sharegy;      %government spending share of gross output

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% country two paremeters set equal to country one's

c2phimc = c1phimc;           % trade adjustment costs
c2rhozc1 = c1rhozc1;
c2rhozc2 = c1rhozc2;


c2rhogy = c1rhogy;
c2scaleshockgyerr = c1scaleshockgyerr;


c2rhomuc = c1rhomuc;

c2vkappa = c1vkappa;      % consumption habits


% size of c1 relative to c2
c1relc2 = 1; %1/2;
c1rhoo = 1/(c1oelast-1);
c1rhoc = 1/(c1telast-1);
% ratio of oil production to gross output
c1shareyoy = c1shareowy*.3;


c1rkstar = c1muzss/c1beta-1+c1delta;        % steady state rentar rate on capital
c2rkstar = c2muzss/c2beta-1+c2delta;        % steady state rentar rate on capital

c1shareoyy = c1shareoy*(1-1/(1+c1ratiooyoc));     % ratio of oil input to gross output
c2shareoyy = c2shareoy*(1-1/(1+c2ratiooyoc));     % ratio of oil input to gross output

c1sharevy = 1-c1shareoyy;
c2sharevy = 1-c2shareoyy;

c1shareky = 1/(1-(1-c1delta)/c1muzss)*c1shareiy;
c2shareky = 1/(1-(1-c2delta)/c2muzss)*c2shareiy;      % capital to output ratio

c1omegak = 1/(1-(1-c1delta)/c1muzss)*(c1rkstar)^((1+c1rhov)/c1rhov)/c1muzss*c1shareiy/c1sharevy;
c2omegak = 1/(1-(1-c2delta)/c2muzss)*(c2rkstar)^((1+c2rhov)/c2rhov)/c2muzss*c2shareiy/c2sharevy;

c1sharely = c1sharevy*(1-c1omegak*c1rkstar^(-1/c1rhov))^(1+c1rhov);
c2sharely = c2sharevy*(1-c2omegak*c2rkstar^(-1/c2rhov))^(1+c2rhov);

c1yss = 1/(c1sharely/c1less);
c2yss = 1/(c2sharely/c2less);


c2shareyoy = c2shareowy + (c1shareowy-c1shareyoy)*c1relc2*c1yss/c2yss;

% c2 share of total oil production
c2shareoprod = c2shareyoy/(c2shareyoy+c1shareyoy*c1relc2*c1yss/c2yss);

% c2 share of total oil consumption
c2shareocon = c2shareowy/(c2shareowy + c1shareowy*c1relc2*c1yss/c2yss);

% Goods import shares

c2sharemy = c1sharemy*c1relc2*c1yss/c2yss + (c1shareowy-c1shareyoy)*c1pwoss*c1relc2*c1yss/c2yss;

c1sharexy = c1sharemy+(c1shareowy-c1shareyoy)*c1pwoss;
c2sharexy = c2sharemy-(c1shareowy-c1shareyoy)*c1pwoss*c1relc2*c1yss/c2yss;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% country one def parameters
c1labshare = c1less/(1-c1less);

%c1phioc   = 0.5^(1/(c1halflife+2))/((1+c1rhoo)/c1rhoo*(1-0.5^(1/(c1halflife+2))));
c1phioc = 0;

c1phioy   = c1phioc;



%%%% continue from here

c1sharecy = 1+c1shareoy-c1shareowy*c1pwoss+c1pwoss*c1shareyoy-c1shareoyy-c1shareiy-c1sharegy;  % consumption share of gross output
c1shareocc = (c1shareoy-c1shareoyy)/c1sharecy;
c1sharecnc = 1-c1shareocc;
c1sharemcm = c1sharecnc*c1sharecy/(c1sharecnc*c1sharecy+c1shareiy);
c1sharemim = 1-c1sharemcm;
c1sharemccn= c1sharemy*c1sharemcm/(c1sharecy)/c1sharecnc;
c1sharemii = c1sharemy*c1sharemim/c1shareiy;
c1ratiomimc = c1sharemim/c1sharemcm;

%c1sharengdpny = 1 - c1shareoyy + c1shareoy- c1pwoss*c1shareowy + c1pwoss*c1shareyoy ;
c1sharengdpny = 1 - c1shareoyy  + c1pwoss*c1shareyoy ;

c1mugdpss = (c1muzss+ ( -c1shareoyy+c1shareoy - c1pwoss*c1shareowy + c1pwoss*c1shareyoy)*c1muoss )...
           /( 1 + ( -c1shareoyy+c1shareoy - c1pwoss*c1shareowy + c1pwoss*c1shareyoy) );


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% country 2 def parameters
c2rhoo = c1rhoo;
c2rhoc = c1rhoc;
c2labshare = c2less/(1-c2less);
%c2phioc   = 0.5^(1/(c2halflife+2))/((1+c2rhoo)/c2rhoo*(1-0.5^(1/(c2halflife+2)))); 
c2phioc = 0;
c2phioy   = c2phioc;

c2sharecy = 1+c2shareoy-c2shareowy*c2pwoss+c2pwoss*c2shareyoy-c2shareoyy-c2shareiy-c2sharegy;  % consumption share of gross output
c2shareocc = (c2shareoy-c2shareoyy)/c2sharecy;
c2sharecnc = 1-c2shareocc;
c2sharemcm = c2sharecnc*c2sharecy/(c2sharecnc*c2sharecy+c2shareiy);
c2sharemim = 1-c2sharemcm;

c2sharemccn= c2sharemy*c2sharemcm/(c2sharecy)/c2sharecnc;
c2sharemii = c2sharemy*c2sharemim/c2shareiy;
c2ratiomimc = c2sharemim/c2sharemcm;

c2sharengdpny = 1 - c2shareoyy + c2shareoy- c2pwoss*c2shareowy + c2pwoss*c2shareyoy ;
c2mugdpss = (c2muzss+ ( -c2shareoyy+c2shareoy - c2pwoss*c2shareowy + c2pwoss*c2shareyoy)*c2muoss )...
           /( 1 + ( -c2shareoyy+c2shareoy - c2pwoss*c2shareowy + c2pwoss*c2shareyoy) );


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% additional parameters in sticky price model 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

c2iotap = c1iotap;
c2xip = c1xip;
c2thetap = c1thetap;
c2rhothetapvar = c1rhothetapvar;
c2scalethetapvarerr = c1scalethetapvarerr;

