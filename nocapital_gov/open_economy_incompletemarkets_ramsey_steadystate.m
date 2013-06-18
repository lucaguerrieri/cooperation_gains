function [optys,check] = open_economy_incompletemarkets_ramsey_steadystate(junk,ys)


global M_  


check = 0;

closed_economy_paramfile
open_economy_paramfile

% export parameters
nparams = size(M_.param_names,1);
for icount = 1:nparams
    eval(['M_.params(icount) = ',M_.param_names(icount,:),';'])
end

% transfer parameters to Dynare.
% send chip to the parameter list
%M_.params(strmatch('chip',M_.param_names,'exact')) = chip;
%M_.params(strmatch('pbss',M_.param_names,'exact')) = pbss;
%M_.params(strmatch('puss',M_.param_names,'exact')) = puss;
%M_.params(strmatch('pcss',M_.param_names,'exact')) = pcss;

nexog = M_.exo_nbr;
exog = zeros(nexog,1);
[ys] = get_first_guess_incompletemarkets_ramsey_ss('');
[residual, g1, g2] = open_economy_incompletemarkets_ramsey_static(ys,exog,M_.params);
options = optimset('Display','Iter','Jacobian','on','MaxFunEvals',1e10,'MaxIter',1e5,'TolFun',1e-30,'TolX',1e-10,'Algorithm','trust-region-reflective');


optys=fsolve(@(ys) open_economy_incompletemarkets_ramsey_static(ys,exog,M_.params),ys,options);



% open_economy_incompletemarkets_ramsey_ss_defs
% 
% 
% nvars = M_.endo_nbr;
% 
% [ys] = get_first_guess_incompletemarkets_ramsey_ss('');
% 
% % get first guess
% 
% 
% for i_indx = 1:nvars
%    eval(['ys(i_indx)=',M_.endo_names(i_indx,:),';']) 
% end
% 
% keyboard


