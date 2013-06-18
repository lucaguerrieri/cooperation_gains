function [zdata] = get_irf(M_, oo_,nperiods,irfshock,scalefactormod)



[decrulea,decruleb]=get_pq(oo_.dr); % find out what get_pq does
endog_ = M_.endo_names;
exog_ =  M_.exo_names;


wishlist = endog_;
zdata = mkdata(nperiods,decrulea,decruleb,endog_,exog_,wishlist,irfshock,scalefactormod); % find out what mkdata does
