function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = draaaft.static_g1_tt(T, y, x, params);
end
g1 = zeros(38, 38);
g1(1,1)=1;
g1(1,2)=(-((params(45)+params(40))/params(45)*params(1)));
g1(1,3)=(-((params(45)+params(40))/params(45)*(1-params(1))));
g1(2,2)=1;
g1(2,3)=(-1);
g1(2,4)=1;
g1(2,5)=(-1);
g1(3,4)=(-params(1));
g1(3,5)=(-(1-params(1)));
g1(3,6)=1;
g1(4,6)=(-params(35));
g1(4,7)=1-(params(11)/(1+params(11)*params(3))+params(3)/(1+params(11)*params(3)));
g1(4,37)=(-params(35));
g1(5,8)=(-(T(3)+T(1)-T(2)));
g1(5,9)=1;
g1(5,32)=(-T(4));
g1(5,33)=(-((exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))));
g1(6,7)=1;
g1(6,10)=(-1);
g1(6,32)=1;
g1(7,4)=1;
g1(7,11)=(-params(15));
g1(8,4)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,9)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,12)=1-params(11)*(1-params(2))*exp((-params(5)));
g1(8,32)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(9,9)=1;
g1(9,12)=(-1);
g1(9,32)=(-(params(16)*params(11)*exp(2*params(5))-exp(2*params(5))*params(16)));
g1(9,35)=(-1);
g1(10,2)=1;
g1(10,11)=(-1);
g1(10,14)=(-1);
g1(10,32)=1;
g1(11,13)=(-(1-(1-params(2))*exp((-params(5)))));
g1(11,14)=1-(1-params(2))*exp((-params(5)));
g1(11,32)=(1-params(2))*exp((-params(5)));
g1(11,35)=(-(1-(1-params(2))*exp((-params(5)))));
g1(12,5)=1-(1/(1+params(11))+T(6));
g1(12,7)=(-(T(6)+T(7)-(1+params(11)*params(4))/(1+params(11))));
g1(12,16)=params(60);
g1(12,32)=(-(T(7)-(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))));
g1(12,38)=(-params(60));
g1(13,3)=params(12);
g1(13,5)=(-1);
g1(13,9)=(-1);
g1(13,16)=1;
g1(13,33)=1;
g1(14,7)=(-((1-params(20))*params(17)));
g1(14,10)=1-params(20);
g1(14,15)=(-((1-params(20))*params(18)));
g1(14,36)=(-1);
g1(15,1)=(-1);
g1(15,15)=1;
g1(15,17)=1;
g1(16,1)=1;
g1(16,8)=(-(params(47)/params(45)));
g1(16,11)=(-(params(36)*params(44)/params(45)));
g1(16,13)=(-(params(46)/params(45)));
g1(16,34)=(-1);
g1(17,17)=1;
g1(17,18)=(-(params(1)*(params(56)+params(51))/params(56)));
g1(17,19)=(-((1-params(1))*(params(56)+params(51))/params(56)));
g1(18,18)=1;
g1(18,19)=(-1);
g1(18,20)=1;
g1(18,21)=(-1);
g1(19,20)=(-params(1));
g1(19,21)=(-(1-params(1)));
g1(20,22)=(-1);
g1(21,23)=(-(T(3)+T(1)-T(2)));
g1(21,24)=1;
g1(21,32)=(-T(4));
g1(22,7)=1;
g1(22,25)=(-1);
g1(22,32)=1;
g1(23,20)=1;
g1(23,26)=(-params(15));
g1(24,20)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,24)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,27)=1-params(11)*(1-params(2))*exp((-params(5)));
g1(24,32)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(25,24)=1;
g1(25,27)=(-1);
g1(25,32)=(-(params(16)*params(11)*exp(2*params(5))-exp(2*params(5))*params(16)));
g1(25,35)=(-1);
g1(26,18)=1;
g1(26,26)=(-1);
g1(26,29)=(-1);
g1(26,32)=1;
g1(27,28)=(-(1-(1-params(2))*exp((-params(5)))));
g1(27,29)=1-(1-params(2))*exp((-params(5)));
g1(27,32)=(1-params(2))*exp((-params(5)));
g1(27,35)=(-(1-(1-params(2))*exp((-params(5)))));
g1(28,7)=(-(T(6)+T(7)-(1+params(11)*params(4))/(1+params(11))));
g1(28,21)=1-(1/(1+params(11))+T(6));
g1(28,31)=params(60);
g1(28,32)=(-(T(7)-(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))));
g1(29,19)=params(12);
g1(29,21)=(-1);
g1(29,24)=(-1);
g1(29,31)=1;
g1(29,33)=1;
g1(30,30)=1;
g1(31,17)=1;
g1(31,23)=(-(params(58)/params(56)));
g1(31,26)=(-(params(36)*params(55)/params(56)));
g1(31,28)=(-(params(57)/params(56)));
g1(31,34)=(-1);
g1(32,32)=1-params(22);
g1(33,35)=1-params(24);
g1(34,36)=1-params(21);
g1(35,34)=1-params(23);
g1(36,37)=1-params(25);
g1(37,38)=1-params(26);
g1(38,33)=1-params(27);

end
