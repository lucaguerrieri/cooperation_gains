setpathdynare4;

dynare closed_economy_ramsey noclearall;
shock_names = char('theta_err');
dr_ = oo_.dr;
ys_ = oo_.dr.ys;

nperiods = 2000;
addss = 0;
order = 2;
stochss = 0;
init = ys_;

closed_economy_paramfile;

s = RandStream('mt19937ar','seed',1);
RandStream.setDefaultStream(s);

nshocks = size(shock_names,1);
pos_shock = zeros(nshocks,1);

nreps = 20;
welf = zeros(nreps,1);
shocks = zeros(nperiods,size(dr_.ghu,2));
for i = 1:nshocks
    pos_shock(i) = strmatch(shock_names(i,:),M_.exo_names,'exact');
    if isempty(pos_shock(i))
        error(['No shock in the model with name ',shock_names(i,:),'.']);
    end;
end


for thisrep = 1:nreps,
    if mod(thisrep,2) == 1
        shocks(:,pos_shock) = randn(nperiods,nshocks);
    else
        shocks = -shocks;
    end;   
    
    [history, h0] = mymkirf2(dr_,ys_,nperiods,shocks,addss,order,stochss);
    
    util_pos = strmatch('Util',M_.endo_names,'exact');
    util = history(util_pos,:);
    welf(thisrep) = beta_p.^(0:nperiods-1)*util(1:nperiods)';
    if mod(thisrep,1)==0
        disp(['On repetition #',num2str(thisrep)]);
    end;
end;

mc_welf = mean(welf);

    
   
   
