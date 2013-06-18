function history = mymkirf(dr_,ys_,nperiods,shock,addss)

%  dr_ structure returned by dynare (AR form for the model)
%  lgy_ vector of variable names, returned by dynare
%  lgx_ vector of innovation names, returned by dynare
%  nperiods number of periods for IRFs
%  shock  vector to be used to generated irfs


% by default, make addss equal 1, so that the SS is added onto the IRFs
if nargin<5
    addss=1;
end

nvars = size(dr_.ghx,1);
nshocks = size(dr_.ghu,2);
%statevar_pos = (dr_.nstatic +1):(nvars-dr_.nfwrd);
statevar_pos = (dr_.nstatic +1):(dr_.nstatic+size(dr_.ghx,2));

if (max(size(shock)) > nshocks) | (max(size(shock))<1) 
    error('erroneous shock vector as argument')
end

if ( size(shock,1)<size(shock,2) )
    shock = shock';
end

history = zeros(nvars,nperiods+1);
shock_length = size(shock,1);

for i = 2:nperiods+1 
    if i-1 <= shock_length
        history(:,i) = dr_.ghx*history(statevar_pos,i-1) + dr_.ghu*shock(i-1,:);
    else 
        history(:,i) = dr_.ghx*history(statevar_pos,i-1);
    end;
end
   
if (addss~=0)
    
    history = history(:,2:end)+repmat(ys_(dr_.order_var),1,nperiods);
else
    % don't add ss if addss is set to 0;
    history = history(:,2:end);
end