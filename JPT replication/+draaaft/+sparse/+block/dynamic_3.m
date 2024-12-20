function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(24, 1);
  y(54)=y(43)-(y(71)+y(41)*params(12)-y(47));
  y(69)=y(59)-(y(71)+params(12)*y(57)-y(62));
  y(44)=params(1)*y(42)+(1-params(1))*y(43);
  y(55)=(params(56)+params(51))/params(56)*(params(1)*y(56)+(1-params(1))*y(57));
  residual(1)=(y(40))-(y(49)+y(14)-y(70));
  residual(2)=(y(53))-(y(39)-y(55));
  residual(3)=(y(58))-(y(57)+y(59)-y(56));
  residual(4)=(y(39))-((params(45)+params(40))/params(45)*(params(1)*y(40)+(1-params(1))*y(41)));
  residual(5)=(y(58))-(params(15)*y(64));
  residual(6)=(y(56))-(y(64)+y(29)-y(70));
  residual(7)=(y(42))-(params(15)*y(49));
  T(1)=exp((-params(5)));
  T(2)=(1-params(2))*T(1);
  residual(8)=(y(52))-(T(2)*(y(14)-y(70))+(1-T(2))*(y(73)+y(51)));
  residual(9)=(y(48))-(y(74)+params(20)*y(10)+(1-params(20))*(y(45)*params(17)+params(18)*y(53))+params(19)*(y(53)-y(15)));
  residual(10)=(y(67))-(T(2)*(y(29)-y(70))+(1-T(2))*(y(73)+y(66)));
  residual(11)=(y(47))-(y(48)+y(85)-y(108)-y(83));
  residual(12)=(y(43))-(1/(1+params(11))*y(5)+params(11)/(1+params(11))*y(81)-params(60)*y(54)+y(7)*params(4)/(1+params(11))-y(45)*(1+params(11)*params(4))/(1+params(11))+y(83)*params(11)/(1+params(11))+params(4)/(1+params(11))*y(32)-y(70)*(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))+params(60)*y(76));
  residual(13)=(y(39))-(y(72)+y(46)*params(47)/params(45)+y(51)*params(46)/params(45)+y(49)*params(36)*params(44)/params(45));
  T(3)=exp(2*params(5));
  residual(14)=(y(47))-(y(50)+y(73)-T(3)*params(16)*(y(70)+y(51)-y(13))+params(16)*params(11)*T(3)*(y(108)+y(89)-y(51)));
  residual(15)=(y(62))-(y(73)+y(65)-T(3)*params(16)*(y(70)+y(66)-y(28))+params(16)*params(11)*T(3)*(y(108)+y(104)-y(66)));
  residual(16)=(y(59))-(params(4)/(1+params(11))*y(32)+y(83)*params(11)/(1+params(11))+y(7)*params(4)/(1+params(11))+1/(1+params(11))*y(21)+params(11)/(1+params(11))*y(97)-params(60)*y(69)-y(45)*(1+params(11)*params(4))/(1+params(11))-y(70)*(1+params(11)*params(4)-params(11)*params(22))/(1+params(11)));
  residual(17)=(y(55))-(y(72)+y(61)*params(58)/params(56)+y(66)*params(57)/params(56)+y(64)*params(36)*params(55)/params(56));
  residual(18)=(y(45))-(params(11)/(1+params(11)*params(3))*y(83)+params(3)/(1+params(11)*params(3))*y(7)+y(44)*params(35)+params(35)*y(75));
  residual(19)=(0)-(params(1)*y(58)+(1-params(1))*y(59));
  T(4)=exp(params(5));
  T(5)=(T(4)-params(6))*(T(3)+params(11)*params(6)^2)/(T(4)-params(11)*params(6));
  residual(20)=(y(62))-((T(4)-params(6))*(params(11)*params(6)*T(4)*params(22)-params(6)*T(4))/(T(4)-params(11)*params(6))*y(70)+params(11)*params(6)*T(4)/(T(4)-params(11)*params(6))*(T(4)-params(6))*y(99)-T(5)*y(61)+(T(4)-params(6))*params(6)*T(4)/(T(4)-params(11)*params(6))*y(23));
  residual(21)=(y(65))-(params(11)*(1-params(2))*T(1)*(y(103)-y(108))+(1-params(11)*(1-params(2))*T(1))*(y(100)-y(108)+y(96)));
  residual(22)=(y(42))-(y(41)+y(43)-y(40));
  residual(23)=(y(47))-(params(11)*params(6)*T(4)/(T(4)-params(11)*params(6))*(T(4)-params(6))*y(84)-T(5)*y(46)+(T(4)-params(6))*params(6)*T(4)/(T(4)-params(11)*params(6))*y(8)+(T(4)-params(6))*(params(11)*params(6)*T(4)*params(22)-params(6)*T(4))/(T(4)-params(11)*params(6))*y(70)+(T(4)-params(11)*params(6)*params(27))/(T(4)-params(11)*params(6))*y(71));
  residual(24)=(y(50))-(params(11)*(1-params(2))*T(1)*(y(88)-y(108))+(1-params(11)*(1-params(2))*T(1))*(y(85)-y(108)+y(80)));
if nargout > 3
    g1_v = NaN(98, 1);
g1_v(1)=(-1);
g1_v(2)=(-T(2));
g1_v(3)=params(19);
g1_v(4)=(-1);
g1_v(5)=(-T(2));
g1_v(6)=(-params(20));
g1_v(7)=(-(1/(1+params(11))));
g1_v(8)=(-((T(4)-params(6))*params(6)*T(4)/(T(4)-params(11)*params(6))));
g1_v(9)=(-(T(3)*params(16)));
g1_v(10)=(-(T(3)*params(16)));
g1_v(11)=(-(1/(1+params(11))));
g1_v(12)=(-((T(4)-params(6))*params(6)*T(4)/(T(4)-params(11)*params(6))));
g1_v(13)=(-(params(4)/(1+params(11))));
g1_v(14)=(-(params(4)/(1+params(11))));
g1_v(15)=(-(params(3)/(1+params(11)*params(3))));
g1_v(16)=1;
g1_v(17)=(-((params(45)+params(40))/params(45)*params(1)));
g1_v(18)=1;
g1_v(19)=(-1);
g1_v(20)=1;
g1_v(21)=1;
g1_v(22)=(1-params(1))*(params(56)+params(51))/params(56);
g1_v(23)=(-1);
g1_v(24)=params(60)*(-params(12));
g1_v(25)=(1-params(1))*(params(56)+params(51))/params(56);
g1_v(26)=(-((params(45)+params(40))/params(45)*(1-params(1))));
g1_v(27)=params(60)*(-params(12));
g1_v(28)=(-1);
g1_v(29)=(-params(15));
g1_v(30)=(-1);
g1_v(31)=(-(params(36)*params(55)/params(56)));
g1_v(32)=params(1)*(params(56)+params(51))/params(56);
g1_v(33)=1;
g1_v(34)=1;
g1_v(35)=params(1)*(params(56)+params(51))/params(56);
g1_v(36)=(-1);
g1_v(37)=(-params(15));
g1_v(38)=(-(params(36)*params(44)/params(45)));
g1_v(39)=1;
g1_v(40)=1;
g1_v(41)=(-(params(19)+(1-params(20))*params(18)));
g1_v(42)=1;
g1_v(43)=1;
g1_v(44)=(-1);
g1_v(45)=1+params(60);
g1_v(46)=(-((1-params(1))*params(35)));
g1_v(47)=(-1);
g1_v(48)=(-(params(47)/params(45)));
g1_v(49)=T(5);
g1_v(50)=(-(1-T(2)));
g1_v(51)=(-(params(46)/params(45)));
g1_v(52)=(-((-(T(3)*params(16)))-params(16)*params(11)*T(3)));
g1_v(53)=(-(1-T(2)));
g1_v(54)=(-((-(T(3)*params(16)))-params(16)*params(11)*T(3)));
g1_v(55)=(-(params(57)/params(56)));
g1_v(56)=(-1);
g1_v(57)=1+params(60);
g1_v(58)=(-(1-params(1)));
g1_v(59)=(-(params(58)/params(56)));
g1_v(60)=T(5);
g1_v(61)=(-((1-params(20))*params(17)));
g1_v(62)=(1+params(11)*params(4))/(1+params(11));
g1_v(63)=(1+params(11)*params(4))/(1+params(11));
g1_v(64)=1;
g1_v(65)=1;
g1_v(66)=1;
g1_v(67)=(-params(1));
g1_v(68)=1;
g1_v(69)=params(60);
g1_v(70)=1;
g1_v(71)=(-1);
g1_v(72)=1;
g1_v(73)=1;
g1_v(74)=(-(params(1)*params(35)));
g1_v(75)=1;
g1_v(76)=1;
g1_v(77)=params(60);
g1_v(78)=1;
g1_v(79)=1;
g1_v(80)=(-1);
g1_v(81)=1;
g1_v(82)=(-(params(11)/(1+params(11))));
g1_v(83)=(-(params(11)*params(6)*T(4)/(T(4)-params(11)*params(6))*(T(4)-params(6))));
g1_v(84)=(-(params(16)*params(11)*T(3)));
g1_v(85)=(-(params(16)*params(11)*T(3)));
g1_v(86)=(-(params(11)/(1+params(11))));
g1_v(87)=(-(params(11)*params(6)*T(4)/(T(4)-params(11)*params(6))*(T(4)-params(6))));
g1_v(88)=1;
g1_v(89)=(-(params(11)/(1+params(11))));
g1_v(90)=(-(params(11)/(1+params(11))));
g1_v(91)=(-(params(11)/(1+params(11)*params(3))));
g1_v(92)=(-(1-params(11)*(1-params(2))*T(1)));
g1_v(93)=(-(1-params(11)*(1-params(2))*T(1)));
g1_v(94)=(-(params(11)*(1-params(2))*T(1)));
g1_v(95)=(-(1-params(11)*(1-params(2))*T(1)));
g1_v(96)=(-1);
g1_v(97)=(-(1-params(11)*(1-params(2))*T(1)));
g1_v(98)=(-(params(11)*(1-params(2))*T(1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 24, 72);
end
end
