function [zdata]=mkdata(nperiods,decrulea,decruleb,endog_,exog_,wishlist,irfshock,scalefactormod,init)
% number of periods, decision rule matrix for state variables, decision
% rule matrix for shock variables, list of endogenous variable names, list
% of exogenous variable names, list of variables to output,
% name(s) of shock(s), intensity of shock(s), initial values.

%[nsim, ksim, ysim, isim, csim] = mkdata(nperiods,cofb,endog_)

% given decision rule 
neqs = size(endog_,1);

if  nargin<9 % i.e., if init is not supplied in the function call.
   init = zeros(neqs,1);
end

if  nargin<8 % i.e., if scalefactormod is also not supplied in the function call.
    scalefactormod=1;
end

if nargin<7 % i.e., if more inputs are not supplied in the function call.
    error('Not enough inputs')
end

%creates a zero matrix with a row for each endogenous variable and a column
%for each time period, including time 0.

history = zeros(neqs,nperiods+1); 

nshocks = size(irfshock,1);
    
% remove shocks listed in irfshock that are not actually exogenous var's.
% also matches up order of shocks given in irfshock to the list of
% exogenous var's.



    for i = 1:nshocks
        shockpos = strmatch(irfshock(i,:),exog_,'exact');
        if ~isempty(shockpos)
            irfshockpos(i) = shockpos;
        else
            %irfshockpos(i) = 0;
            error(['Shock ',irfshock(i,:),' is not in the model']);
        end
    end


% generate data
% history will contain data, the state vector at each period in time will
% be stored columnwise.
history(:,1)= init;

lengthshock = size(scalefactormod,1);

errvec = zeros(size(exog_,1),1); %initializes error vector as zeroes

for i = 2:nperiods+1
    if i<=(lengthshock+1)
        for j = 1:nshocks
            errvec(irfshockpos(j)) = scalefactormod(j); 
        end
        history(:,i) = decrulea * history(:,i-1)+ decruleb * errvec;
    else
    % update endogenous variables
    history(:,i) = decrulea * history(:,i-1);
    end
end

% extract desired variables
nwish=size(wishlist,1);
wishpos = zeros(nwish,1);

history=history';
for i=1:nwish
    wishpos(i) = strmatch(wishlist(i,:),endog_,'exact');
end
zdata = history(2:end,wishpos);

%the output has periods as rows and variables as columns.