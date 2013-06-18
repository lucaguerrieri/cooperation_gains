function [ys] = get_first_guess_incompletemarkets_ramsey_ss(check)


global M_  



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




open_economy_incompletemarkets_ramsey_ss_defs


nvars = M_.endo_nbr;

ys = zeros(nvars,1);

for i_indx = 1:nvars
   eval(['ys(i_indx)=',M_.endo_names(i_indx,:),';']) 
end



