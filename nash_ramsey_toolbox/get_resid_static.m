function [r, J] = get_resid_static(y,modnam)

global M_

% J is Jacobian, H is Hessian
eval(['[r, J, H] =',modnam,'_static(y, zeros(M_.exo_nbr,1), M_.params);'])