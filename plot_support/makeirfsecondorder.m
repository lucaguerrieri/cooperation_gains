%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Get IRFS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [s] = makeirfsecondorder(M_,oo_,nperiods,shocks,order)

shocks = shocks';
if order == 1
history = mymkirf2(oo_.dr,oo_.dr.ys,nperiods,shocks,0,order,0);  % returns matrix containing IRFs for all variables
else
% express the IRF in deviation from the stochastic steady state
history = mymkirf2(oo_.dr,oo_.dr.ys,nperiods,shocks,0,order,1);  % returns matrix containing IRFs for all variables
end
%history = mymkdata2(oo_.dr,nperiods,order,shocks);

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
