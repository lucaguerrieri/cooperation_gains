function history2 = mymkdata2_nopruning(dr_,nperiods,order)

%  dr_ structure returned by dynare (AR form for the model)
%  lgy_ vector of variable names, returned by dynare
%  lgx_ vector of innovation names, returned by dynare
%  nperiods number of periods for IRFs
%  shock  vector to be used to generated irfs


nvars = size(dr_.ghx,1);
nshocks = size(dr_.ghu,2);
%statevar_pos = (dr_.nstatic +1):(nvars-dr_.nfwrd);
statevar_pos = (dr_.nstatic +1):(dr_.nstatic+size(dr_.ghx,2));

shocks = randn(nshocks,nperiods+1);
   
if order>1
   history2 = zeros(nvars,nperiods+1);
     for i = 2:nperiods+1
     history2(:,i) = 0.5*dr_.ghs2 + dr_.ghx*history2(statevar_pos,i-1) + dr_.ghu*shocks(:,i) + ... 
                     0.5*dr_.ghxx*kron(history2(statevar_pos,i-1),history2(statevar_pos,i-1)) + ...
                     0.5*dr_.ghuu*kron(shocks(:,i),shocks(:,i)) + ...
                     dr_.ghxu*kron(history2(statevar_pos,i-1),shocks(:,i));
     end
     
     
 end