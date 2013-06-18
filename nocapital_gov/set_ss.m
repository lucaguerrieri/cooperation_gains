for i=1:M_.endo_nbr
    eval([M_.endo_names(i,:),'=oo_.steady_state(i);'])
end