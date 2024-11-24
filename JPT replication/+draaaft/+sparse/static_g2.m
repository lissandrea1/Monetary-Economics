function [g2_v, T_order, T] = static_g2(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = draaaft.sparse.static_g2_tt(y, x, params, T_order, T);
g2_v = NaN(0, 1);
end
