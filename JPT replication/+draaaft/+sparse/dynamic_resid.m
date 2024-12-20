function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = draaaft.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(38, 1);
    residual(1) = (y(39)) - ((params(45)+params(40))/params(45)*(params(1)*y(40)+(1-params(1))*y(41)));
    residual(2) = (y(42)) - (y(41)+y(43)-y(40));
    residual(3) = (y(44)) - (params(1)*y(42)+(1-params(1))*y(43));
    residual(4) = (y(45)) - (params(11)/(1+params(11)*params(3))*y(83)+params(3)/(1+params(11)*params(3))*y(7)+y(44)*params(35)+params(35)*y(75));
    residual(5) = (y(47)) - (T(1)*y(84)-T(2)*y(46)+T(3)*y(8)+T(5)+(exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))*y(71));
    residual(6) = (y(47)) - (y(48)+y(85)-y(108)-y(83));
    residual(7) = (y(42)) - (params(15)*y(49));
    residual(8) = (y(50)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(88)-y(108))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(85)-y(108)+y(80)));
    residual(9) = (y(47)) - (y(50)+y(73)-exp(2*params(5))*params(16)*(y(70)+y(51)-y(13))+params(16)*params(11)*exp(2*params(5))*(y(108)+y(89)-y(51)));
    residual(10) = (y(40)) - (y(49)+y(14)-y(70));
    residual(11) = (y(52)) - ((1-params(2))*exp((-params(5)))*(y(14)-y(70))+(1-(1-params(2))*exp((-params(5))))*(y(73)+y(51)));
    residual(12) = (y(43)) - (1/(1+params(11))*y(5)+T(6)*y(81)-params(60)*y(54)+y(7)*params(4)/(1+params(11))-y(45)*T(7)+y(83)*T(6)+params(4)/(1+params(11))*y(32)-y(70)*T(8)+params(60)*y(76));
    residual(13) = (y(54)) - (y(43)-(y(71)+y(41)*params(12)-y(47)));
    residual(14) = (y(48)) - (y(74)+params(20)*y(10)+(1-params(20))*(y(45)*params(17)+params(18)*y(53))+params(19)*(y(53)-y(15)));
    residual(15) = (y(53)) - (y(39)-y(55));
    residual(16) = (y(39)) - (y(72)+y(46)*params(47)/params(45)+y(51)*params(46)/params(45)+y(49)*params(36)*params(44)/params(45));
    residual(17) = (y(55)) - ((params(56)+params(51))/params(56)*(params(1)*y(56)+(1-params(1))*y(57)));
    residual(18) = (y(58)) - (y(57)+y(59)-y(56));
    residual(19) = (0) - (params(1)*y(58)+(1-params(1))*y(59));
    residual(20) = (0) - (y(60));
    residual(21) = (y(62)) - (T(5)+T(1)*y(99)-T(2)*y(61)+T(3)*y(23));
    residual(22) = (y(62)) - (y(63)+y(100)-y(108)-y(83));
    residual(23) = (y(58)) - (params(15)*y(64));
    residual(24) = (y(65)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(103)-y(108))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(100)-y(108)+y(96)));
    residual(25) = (y(62)) - (y(73)+y(65)-exp(2*params(5))*params(16)*(y(70)+y(66)-y(28))+params(16)*params(11)*exp(2*params(5))*(y(108)+y(104)-y(66)));
    residual(26) = (y(56)) - (y(64)+y(29)-y(70));
    residual(27) = (y(67)) - ((1-params(2))*exp((-params(5)))*(y(29)-y(70))+(1-(1-params(2))*exp((-params(5))))*(y(73)+y(66)));
    residual(28) = (y(59)) - (params(4)/(1+params(11))*y(32)+y(83)*T(6)+y(7)*params(4)/(1+params(11))+1/(1+params(11))*y(21)+T(6)*y(97)-params(60)*y(69)-y(45)*T(7)-y(70)*T(8));
    residual(29) = (y(69)) - (y(59)-(y(71)+params(12)*y(57)-y(62)));
residual(30) = y(68);
    residual(31) = (y(55)) - (y(72)+y(61)*params(58)/params(56)+y(66)*params(57)/params(56)+y(64)*params(36)*params(55)/params(56));
    residual(32) = (y(70)) - (params(22)*y(32)+x(1));
    residual(33) = (y(73)) - (params(24)*y(35)+x(2));
    residual(34) = (y(74)) - (params(21)*y(36)+x(3));
    residual(35) = (y(72)) - (params(23)*y(34)+x(4));
    residual(36) = (y(75)) - (params(25)*y(37)+x(5));
    residual(37) = (y(76)) - (params(26)*y(38)+x(6));
    residual(38) = (y(71)) - (params(27)*y(33)+x(7));
end
