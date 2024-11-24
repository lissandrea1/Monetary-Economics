function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = draaaft.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(38, 1);
    residual(1) = (y(19)) - ((params(45)+params(40))/params(45)*(params(1)*y(20)+(1-params(1))*y(21)));
    residual(2) = (y(22)) - (y(21)+y(23)-y(20));
    residual(3) = (y(24)) - (params(1)*y(22)+(1-params(1))*y(23));
    residual(4) = (y(25)) - (params(11)/(1+params(11)*params(3))*y(59)+params(3)/(1+params(11)*params(3))*y(2)+y(24)*params(35)+params(35)*y(55));
    residual(5) = (y(27)) - (T(1)*y(60)-T(2)*y(26)+T(3)*y(3)+T(5)+(exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))*y(51));
    residual(6) = (y(27)) - (y(28)+y(61)-y(70)-y(59));
    residual(7) = (y(22)) - (params(15)*y(29));
    residual(8) = (y(30)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(62)-y(70))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(61)-y(70)+y(57)));
    residual(9) = (y(27)) - (y(30)+y(53)-exp(2*params(5))*params(16)*(y(50)+y(31)-y(5))+params(16)*params(11)*exp(2*params(5))*(y(70)+y(63)-y(31)));
    residual(10) = (y(20)) - (y(29)+y(6)-y(50));
    residual(11) = (y(32)) - ((1-params(2))*exp((-params(5)))*(y(6)-y(50))+(1-(1-params(2))*exp((-params(5))))*(y(53)+y(31)));
    residual(12) = (y(23)) - (1/(1+params(11))*y(1)+T(6)*y(58)-params(60)*y(34)+y(2)*params(4)/(1+params(11))-y(25)*T(7)+y(59)*T(6)+params(4)/(1+params(11))*y(12)-y(50)*T(8)+params(60)*y(56));
    residual(13) = (y(34)) - (y(23)-(y(51)+y(21)*params(12)-y(27)));
    residual(14) = (y(28)) - (y(54)+params(20)*y(4)+(1-params(20))*(y(25)*params(17)+params(18)*y(33))+params(19)*(y(33)-y(7)));
    residual(15) = (y(33)) - (y(19)-y(35));
    residual(16) = (y(19)) - (y(52)+y(26)*params(47)/params(45)+y(31)*params(46)/params(45)+y(29)*params(36)*params(44)/params(45));
    residual(17) = (y(35)) - ((params(56)+params(51))/params(56)*(params(1)*y(36)+(1-params(1))*y(37)));
    residual(18) = (y(38)) - (y(37)+y(39)-y(36));
    residual(19) = (0) - (params(1)*y(38)+(1-params(1))*y(39));
    residual(20) = (0) - (y(40));
    residual(21) = (y(42)) - (T(5)+T(1)*y(66)-T(2)*y(41)+T(3)*y(9));
    residual(22) = (y(42)) - (y(43)+y(67)-y(70)-y(59));
    residual(23) = (y(38)) - (params(15)*y(44));
    residual(24) = (y(45)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(68)-y(70))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(67)-y(70)+y(64)));
    residual(25) = (y(42)) - (y(53)+y(45)-exp(2*params(5))*params(16)*(y(50)+y(46)-y(10))+params(16)*params(11)*exp(2*params(5))*(y(70)+y(69)-y(46)));
    residual(26) = (y(36)) - (y(44)+y(11)-y(50));
    residual(27) = (y(47)) - ((1-params(2))*exp((-params(5)))*(y(11)-y(50))+(1-(1-params(2))*exp((-params(5))))*(y(53)+y(46)));
    residual(28) = (y(39)) - (params(4)/(1+params(11))*y(12)+y(59)*T(6)+y(2)*params(4)/(1+params(11))+1/(1+params(11))*y(8)+T(6)*y(65)-params(60)*y(49)-y(25)*T(7)-y(50)*T(8));
    residual(29) = (y(49)) - (y(39)-(y(51)+params(12)*y(37)-y(42)));
residual(30) = y(48);
    residual(31) = (y(35)) - (y(52)+y(41)*params(58)/params(56)+y(46)*params(57)/params(56)+y(44)*params(36)*params(55)/params(56));
    residual(32) = (y(50)) - (params(22)*y(12)+x(it_, 1));
    residual(33) = (y(53)) - (params(24)*y(15)+x(it_, 2));
    residual(34) = (y(54)) - (params(21)*y(16)+x(it_, 3));
    residual(35) = (y(52)) - (params(23)*y(14)+x(it_, 4));
    residual(36) = (y(55)) - (params(25)*y(17)+x(it_, 5));
    residual(37) = (y(56)) - (params(26)*y(18)+x(it_, 6));
    residual(38) = (y(51)) - (params(27)*y(13)+x(it_, 7));

end
