% Program: get_annealed_ss.m

% Function: Finds an initial guess for steady-state values for the
% .mod file that results after running get_ramsey on the initial file.


 try
     eval(['dynare ',outfilename,' noclearall']);
 catch
     disp('Finding steady states.')
 end;

% Creates vector for steady-state values that has zeroes for the Lagrangian multipliers.

% eval([infilename,'_paramfile;']);
% eval([outfilename,'_ss_defs;']);
% 


init_y = oo_.dr.ys;

% Runs simulated annealing to find best guess for SS values.

get_resid_static_anneal = @(y)get_resid_static_scalar(y,outfilename);
option = anneal();
option.Verbosity = 2;
[final_y_anneal, sum_resid_square] = anneal(get_resid_static_anneal,init_y);
init_y = final_y_anneal;
opt = optimset('Jacobian','on', 'Display', 'iter','MaxIter',500000, 'MaxFunEvals', 500000);

y = fsolve(@(y) get_resid_static(y,outfilename), init_y, opt);

% Outputs equations to post in .mod file under initval block.

for i=1:M_.endo_nbr,
    instr(i,1) =cellstr([M_.endo_names(i,:),'=',num2str(y(i),14),';']);
end

char(instr)

