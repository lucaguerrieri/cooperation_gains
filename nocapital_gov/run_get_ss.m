

% first run dynare;  then 

[ys] = get_first_guess_incompletemarkets_ramsey_ss('');

% get first guess

nexog = M_.exo_nbr;
exog = zeros(nexog,1);

[residual, g1, g2] = open_economy_incompletemarkets_ramsey_static(ys,exog,M_.params);
options = optimset('Display','Iter','MaxFunEvals',1e10,'MaxIter',1e5,'TolFun',1e-30,'TolX',1e-10,'Algorithm','trust-region-reflective');


optys=fsolve(@(ys) open_economy_incompletemarkets_ramsey_static(ys,exog,M_.params),ys,options);