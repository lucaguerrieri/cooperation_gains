nendog = size(M_.endo_names,1);

for i=1:nendog
    eval([M_.endo_names(i,:),'= oo_.steady_state(i);'])
end

nparams = size(M_.param_names);

for i = 1:nparams
    eval([M_.param_names(i,:),'= M_.params(i);'])
end