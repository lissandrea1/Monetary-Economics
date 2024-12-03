function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = draaaft.static_resid_tt(T, y, x, params);
end
residual = zeros(38, 1);
    residual(1) = (y(1)) - ((params(45)+params(40))/params(45)*(params(1)*y(2)+(1-params(1))*y(3)));
    residual(2) = (y(4)) - (y(3)+y(5)-y(2));
    residual(3) = (y(6)) - (params(1)*y(4)+(1-params(1))*y(5));
    residual(4) = (y(7)) - (y(7)*params(11)/(1+params(11)*params(3))+y(7)*params(3)/(1+params(11)*params(3))+y(6)*params(35)+params(35)*y(37));
    residual(5) = (y(9)) - (T(1)*y(8)-y(8)*T(2)+y(8)*T(3)+T(5)+(exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))*y(33));
    residual(6) = (y(9)) - (y(9)+y(10)-y(32)-y(7));
    residual(7) = (y(4)) - (params(15)*y(11));
    residual(8) = (y(12)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(12)-y(32))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(4)+y(9)-y(32)));
    residual(9) = (y(9)) - (y(12)+y(35)-y(32)*exp(2*params(5))*params(16)+y(32)*params(16)*params(11)*exp(2*params(5)));
    residual(10) = (y(2)) - (y(11)+y(14)-y(32));
    residual(11) = (y(14)) - ((1-params(2))*exp((-params(5)))*(y(14)-y(32))+(1-(1-params(2))*exp((-params(5))))*(y(35)+y(13)));
    residual(12) = (y(5)) - (y(5)*1/(1+params(11))+y(5)*T(6)-params(60)*y(16)+y(7)*T(7)-y(7)*(1+params(11)*params(4))/(1+params(11))+y(7)*T(6)+y(32)*T(7)-y(32)*(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))+params(60)*y(38));
    residual(13) = (y(16)) - (y(5)-(y(33)+y(3)*params(12)-y(9)));
    residual(14) = (y(10)) - (y(36)+y(10)*params(20)+(1-params(20))*(y(7)*params(17)+params(18)*y(15)));
    residual(15) = (y(15)) - (y(1)-y(17));
    residual(16) = (y(1)) - (y(34)+y(8)*params(47)/params(45)+y(13)*params(46)/params(45)+y(11)*params(36)*params(44)/params(45));
    residual(17) = (y(17)) - ((params(56)+params(51))/params(56)*(params(1)*y(18)+(1-params(1))*y(19)));
    residual(18) = (y(20)) - (y(19)+y(21)-y(18));
    residual(19) = (0) - (params(1)*y(20)+(1-params(1))*y(21));
    residual(20) = (0) - (y(22));
    residual(21) = (y(24)) - (T(5)+T(1)*y(23)-T(2)*y(23)+T(3)*y(23));
    residual(22) = (y(24)) - (y(24)+y(25)-y(32)-y(7));
    residual(23) = (y(20)) - (params(15)*y(26));
    residual(24) = (y(27)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(27)-y(32))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(20)+y(24)-y(32)));
    residual(25) = (y(24)) - (y(32)*params(16)*params(11)*exp(2*params(5))+y(35)+y(27)-y(32)*exp(2*params(5))*params(16));
    residual(26) = (y(18)) - (y(26)+y(29)-y(32));
    residual(27) = (y(29)) - ((1-params(2))*exp((-params(5)))*(y(29)-y(32))+(1-(1-params(2))*exp((-params(5))))*(y(35)+y(28)));
    residual(28) = (y(21)) - (y(32)*T(7)+y(7)*T(6)+y(7)*T(7)+1/(1+params(11))*y(21)+T(6)*y(21)-params(60)*y(31)-y(7)*(1+params(11)*params(4))/(1+params(11))-y(32)*(1+params(11)*params(4)-params(11)*params(22))/(1+params(11)));
    residual(29) = (y(31)) - (y(21)-(y(33)+params(12)*y(19)-y(24)));
residual(30) = y(30);
    residual(31) = (y(17)) - (y(34)+y(23)*params(58)/params(56)+y(28)*params(57)/params(56)+y(26)*params(36)*params(55)/params(56));
    residual(32) = (y(32)) - (params(22)*y(32)+x(1));
    residual(33) = (y(35)) - (y(35)*params(24)+x(2));
    residual(34) = (y(36)) - (y(36)*params(21)+x(3));
    residual(35) = (y(34)) - (y(34)*params(23)+x(4));
    residual(36) = (y(37)) - (y(37)*params(25)+x(5));
    residual(37) = (y(38)) - (y(38)*params(26)+x(6));
    residual(38) = (y(33)) - (params(27)*y(33)+x(7));

end