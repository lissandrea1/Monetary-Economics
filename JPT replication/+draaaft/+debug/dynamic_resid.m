function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(8, 1);
lhs = NaN(38, 1);
rhs = NaN(38, 1);
T(1) = params(11)*params(6)*exp(params(5))/(exp(params(5))-params(11)*params(6))*(exp(params(5))-params(6));
T(2) = (exp(params(5))-params(6))*(exp(2*params(5))+params(11)*params(6)^2)/(exp(params(5))-params(11)*params(6));
T(3) = (exp(params(5))-params(6))*params(6)*exp(params(5))/(exp(params(5))-params(11)*params(6));
T(4) = (exp(params(5))-params(6))*(params(11)*params(6)*exp(params(5))*params(22)-params(6)*exp(params(5)))/(exp(params(5))-params(11)*params(6));
T(5) = T(4)*y(70);
T(6) = params(11)/(1+params(11));
T(7) = (1+params(11)*params(4))/(1+params(11));
T(8) = (1+params(11)*params(4)-params(11)*params(22))/(1+params(11));
lhs(1) = y(39);
rhs(1) = (params(45)+params(40))/params(45)*(params(1)*y(40)+(1-params(1))*y(41));
lhs(2) = y(42);
rhs(2) = y(41)+y(43)-y(40);
lhs(3) = y(44);
rhs(3) = params(1)*y(42)+(1-params(1))*y(43);
lhs(4) = y(45);
rhs(4) = params(11)/(1+params(11)*params(3))*y(83)+params(3)/(1+params(11)*params(3))*y(7)+y(44)*params(35)+params(35)*y(75);
lhs(5) = y(47);
rhs(5) = T(1)*y(84)-T(2)*y(46)+T(3)*y(8)+T(5)+(exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))*y(71);
lhs(6) = y(47);
rhs(6) = y(48)+y(85)-y(108)-y(83);
lhs(7) = y(42);
rhs(7) = params(15)*y(49);
lhs(8) = y(50);
rhs(8) = params(11)*(1-params(2))*exp((-params(5)))*(y(88)-y(108))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(85)-y(108)+y(80));
lhs(9) = y(47);
rhs(9) = y(50)+y(73)-exp(2*params(5))*params(16)*(y(70)+y(51)-y(13))+params(16)*params(11)*exp(2*params(5))*(y(108)+y(89)-y(51));
lhs(10) = y(40);
rhs(10) = y(49)+y(14)-y(70);
lhs(11) = y(52);
rhs(11) = (1-params(2))*exp((-params(5)))*(y(14)-y(70))+(1-(1-params(2))*exp((-params(5))))*(y(73)+y(51));
lhs(12) = y(43);
rhs(12) = 1/(1+params(11))*y(5)+T(6)*y(81)-params(60)*y(54)+y(7)*params(4)/(1+params(11))-y(45)*T(7)+y(83)*T(6)+params(4)/(1+params(11))*y(32)-y(70)*T(8)+params(60)*y(76);
lhs(13) = y(54);
rhs(13) = y(43)-(y(71)+y(41)*params(12)-y(47));
lhs(14) = y(48);
rhs(14) = y(74)+params(20)*y(10)+(1-params(20))*(y(45)*params(17)+params(18)*y(53))+params(19)*(y(53)-y(15));
lhs(15) = y(53);
rhs(15) = y(39)-y(55);
lhs(16) = y(39);
rhs(16) = y(72)+y(46)*params(47)/params(45)+y(51)*params(46)/params(45)+y(49)*params(36)*params(44)/params(45);
lhs(17) = y(55);
rhs(17) = (params(56)+params(51))/params(56)*(params(1)*y(56)+(1-params(1))*y(57));
lhs(18) = y(58);
rhs(18) = y(57)+y(59)-y(56);
lhs(19) = 0;
rhs(19) = params(1)*y(58)+(1-params(1))*y(59);
lhs(20) = 0;
rhs(20) = y(60);
lhs(21) = y(62);
rhs(21) = T(5)+T(1)*y(99)-T(2)*y(61)+T(3)*y(23);
lhs(22) = y(62);
rhs(22) = y(63)+y(100)-y(108)-y(83);
lhs(23) = y(58);
rhs(23) = params(15)*y(64);
lhs(24) = y(65);
rhs(24) = params(11)*(1-params(2))*exp((-params(5)))*(y(103)-y(108))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(100)-y(108)+y(96));
lhs(25) = y(62);
rhs(25) = y(73)+y(65)-exp(2*params(5))*params(16)*(y(70)+y(66)-y(28))+params(16)*params(11)*exp(2*params(5))*(y(108)+y(104)-y(66));
lhs(26) = y(56);
rhs(26) = y(64)+y(29)-y(70);
lhs(27) = y(67);
rhs(27) = (1-params(2))*exp((-params(5)))*(y(29)-y(70))+(1-(1-params(2))*exp((-params(5))))*(y(73)+y(66));
lhs(28) = y(59);
rhs(28) = params(4)/(1+params(11))*y(32)+y(83)*T(6)+y(7)*params(4)/(1+params(11))+1/(1+params(11))*y(21)+T(6)*y(97)-params(60)*y(69)-y(45)*T(7)-y(70)*T(8);
lhs(29) = y(69);
rhs(29) = y(59)-(y(71)+params(12)*y(57)-y(62));
lhs(30) = y(68);
rhs(30) = 0;
lhs(31) = y(55);
rhs(31) = y(72)+y(61)*params(58)/params(56)+y(66)*params(57)/params(56)+y(64)*params(36)*params(55)/params(56);
lhs(32) = y(70);
rhs(32) = params(22)*y(32)+x(1);
lhs(33) = y(73);
rhs(33) = params(24)*y(35)+x(2);
lhs(34) = y(74);
rhs(34) = params(21)*y(36)+x(3);
lhs(35) = y(72);
rhs(35) = params(23)*y(34)+x(4);
lhs(36) = y(75);
rhs(36) = params(25)*y(37)+x(5);
lhs(37) = y(76);
rhs(37) = params(26)*y(38)+x(6);
lhs(38) = y(71);
rhs(38) = params(27)*y(33)+x(7);
end
