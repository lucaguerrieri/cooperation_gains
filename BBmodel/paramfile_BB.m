

c1oelast =    0.42249644216872;           
c1shareowy_nominal = 0; %0.0406;     %ratio of total wholesale oil use to gross output
c2shareowy_nominal = 0; %0.088;      %ratio of total wholesale oil use  to gross output


c1sharemy = 0.1 %0.5;
c1sharegy = 0.000001;      %government spending share of gross output
c1muzss = 1;          

c1telast = 4.5         
c1sigma = 1.0;       % only set different from 1 in the absence of trend growth
c1vkappa = 0;      
c1beta = c1muzss/1.01;       % discount factor that yields a 4% interest rate
c1chi = 0.94;    
c1less = 1/3;        % share of time spent working

c1thetap = 1/9;
c1xip = 0.66;            
c1iotap = 0;             

c1phib = 0 ;0.0001;          % stationarity-inducing parameter for NFA

%% Policy rule
c1gamrs = 0.7; 
c1gamdpc = 1; 
c2gamrs = c1gamrs;
c2gamdpc = c1gamdpc;
c1pistar = 1;    

%% Shocks
%technology
c1rhozc1 = 0;    % 0.2162985427838;           
c1rhozc2 = 0.05; %0.00010000024577987;           
c1scalezcerr =  1; %0.0065559859524876;       
c2scalezcerr =  1; %  0.01077006446931;       
%government spending
c1rhogy =    0.99899999803367;            
c1scaleshockgyerr =   0.024627248911243;  
%marginal utility
c1rhomuc =    0.91884316757498;           
c1scalemucerr =    0.64843349359594;      
c2scalemucerr =    0.71744864960161;      
%price mark up
c1rhothetapvar =    0 %0.74013690353831;     
c1scalethetapvarerr = 1;    0.47737277434637;