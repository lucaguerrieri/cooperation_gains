% Returns a loss function for simulated annealing.

function [r_square_sum] = get_resid_static_scalar(y,modnam)


r = get_resid_static(y,modnam);

r_square_sum = sum(r.^2);