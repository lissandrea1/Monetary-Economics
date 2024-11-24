function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(1) = params(11)*params(6)*exp(params(5))/(exp(params(5))-params(11)*params(6))*(exp(params(5))-params(6));
T(2) = (exp(params(5))-params(6))*(exp(2*params(5))+params(11)*params(6)^2)/(exp(params(5))-params(11)*params(6));
T(3) = (exp(params(5))-params(6))*params(6)*exp(params(5))/(exp(params(5))-params(11)*params(6));
T(4) = (exp(params(5))-params(6))*(params(11)*params(6)*exp(params(5))*params(22)-params(6)*exp(params(5)))/(exp(params(5))-params(11)*params(6));
T(5) = T(4)*y(70);
T(6) = params(11)/(1+params(11));
T(7) = (1+params(11)*params(4))/(1+params(11));
T(8) = (1+params(11)*params(4)-params(11)*params(22))/(1+params(11));
end
