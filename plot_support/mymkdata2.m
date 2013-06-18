function s = mymkdata2(M_,oo_,nperiods,order,shocks)

dr_ = oo_.dr;

%  dr_ structure returned by dynare with model's decision rule
%  nperiods number of periods for simulated data
%  order of the decision rule to be used.


nvars = size(dr_.ghx,1);
nshocks = size(dr_.ghu,2);
statevar_pos = (dr_.nstatic +1):(nvars-dr_.nfwrd);
%statevar_pos = (dr_.nstatic +1):(dr_.nstatic+size(dr_.ghx,2));

if ~exist('shocks')
s1 = RandStream('mt19937ar','seed',1);
shocks = randn(s1,nshocks,nperiods+1);
end

nshockvecs = size(shocks,2);

history = zeros(nvars,nperiods+1);

for i = 2:nperiods+1
    if i-1<=nshockvecs
    history(:,i) = dr_.ghx*history(statevar_pos,i-1)+ dr_.ghu*shocks(:,i-1);
    else
    history(:,i) = dr_.ghx*history(statevar_pos,i-1); 
    end
end
   
if order>1
   history2 = zeros(nvars,nperiods+1);
     for i = 2:nperiods+1
     if i-1 <=nshockvecs
     history2(:,i) = 0.5*dr_.ghs2 + dr_.ghx*history2(statevar_pos,i-1) + dr_.ghu*shocks(:,i-1) + ... 
                     0.5*dr_.ghxx*kron(history(statevar_pos,i-1),history(statevar_pos,i-1)) + ...
                     0.5*dr_.ghuu*kron(shocks(:,i-1),shocks(:,i-1)) + ...
                     dr_.ghxu*kron(history(statevar_pos,i-1),shocks(:,i-1));
     else
     history2(:,i) = 0.5*dr_.ghs2 + dr_.ghx*history2(statevar_pos,i-1) + ... 
                     0.5*dr_.ghxx*kron(history(statevar_pos,i-1),history(statevar_pos,i-1));
         
     end
     end
     
     history = history2;
end
 

reordered = M_.endo_names(oo_.dr.order_var,:);          % the vector reordered contains names of variables
                                            % corresponding to rows of
                                            % history

% this loop assigns each row of history to its variable
% it also assigns steady state values
% IRFs are stored under varname_irf  where varname is the variable name
% SS values are stored under varname
% NB: SS values are scalar, IRFs are column vectors.

% history = history(dr_.order_var,:);
history = history';

for indxi = 1:M_.endo_nbr
    eval(['s','.',deblank(M_.endo_names(indxi,:)),'_ss = oo_.dr.ys(indxi);']);
    eval(['s','.',deblank(reordered(indxi,:)),'_irf=history(:,indxi);']);
end
