function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = draaaft.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(38, 77);
g1(1,19)=1;
g1(1,20)=(-((params(45)+params(40))/params(45)*params(1)));
g1(1,21)=(-((params(45)+params(40))/params(45)*(1-params(1))));
g1(2,20)=1;
g1(2,21)=(-1);
g1(2,22)=1;
g1(2,23)=(-1);
g1(3,22)=(-params(1));
g1(3,23)=(-(1-params(1)));
g1(3,24)=1;
g1(4,24)=(-params(35));
g1(4,2)=(-(params(3)/(1+params(11)*params(3))));
g1(4,25)=1;
g1(4,59)=(-(params(11)/(1+params(11)*params(3))));
g1(4,55)=(-params(35));
g1(5,3)=(-T(3));
g1(5,26)=T(2);
g1(5,60)=(-T(1));
g1(5,27)=1;
g1(5,50)=(-T(4));
g1(5,51)=(-((exp(params(5))-params(11)*params(6)*params(27))/(exp(params(5))-params(11)*params(6))));
g1(6,59)=1;
g1(6,27)=1;
g1(6,61)=(-1);
g1(6,28)=(-1);
g1(6,70)=1;
g1(7,22)=1;
g1(7,29)=(-params(15));
g1(8,57)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,61)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,30)=1;
g1(8,62)=(-(params(11)*(1-params(2))*exp((-params(5)))));
g1(8,70)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(9,27)=1;
g1(9,30)=(-1);
g1(9,5)=(-(exp(2*params(5))*params(16)));
g1(9,31)=(-((-(exp(2*params(5))*params(16)))-params(16)*params(11)*exp(2*params(5))));
g1(9,63)=(-(params(16)*params(11)*exp(2*params(5))));
g1(9,50)=exp(2*params(5))*params(16);
g1(9,70)=(-(params(16)*params(11)*exp(2*params(5))));
g1(9,53)=(-1);
g1(10,20)=1;
g1(10,29)=(-1);
g1(10,6)=(-1);
g1(10,50)=1;
g1(11,31)=(-(1-(1-params(2))*exp((-params(5)))));
g1(11,6)=(-((1-params(2))*exp((-params(5)))));
g1(11,32)=1;
g1(11,50)=(1-params(2))*exp((-params(5)));
g1(11,53)=(-(1-(1-params(2))*exp((-params(5)))));
g1(12,1)=(-(1/(1+params(11))));
g1(12,23)=1;
g1(12,58)=(-T(6));
g1(12,2)=T(9);
g1(12,25)=T(7);
g1(12,59)=(-T(6));
g1(12,34)=params(60);
g1(12,12)=T(9);
g1(12,50)=T(8);
g1(12,56)=(-params(60));
g1(13,21)=params(12);
g1(13,23)=(-1);
g1(13,27)=(-1);
g1(13,34)=1;
g1(13,51)=1;
g1(14,25)=(-((1-params(20))*params(17)));
g1(14,4)=(-params(20));
g1(14,28)=1;
g1(14,7)=params(19);
g1(14,33)=(-(params(19)+(1-params(20))*params(18)));
g1(14,54)=(-1);
g1(15,19)=(-1);
g1(15,33)=1;
g1(15,35)=1;
g1(16,19)=1;
g1(16,26)=(-(params(47)/params(45)));
g1(16,29)=(-(params(36)*params(44)/params(45)));
g1(16,31)=(-(params(46)/params(45)));
g1(16,52)=(-1);
g1(17,35)=1;
g1(17,36)=(-(params(1)*(params(56)+params(51))/params(56)));
g1(17,37)=(-((1-params(1))*(params(56)+params(51))/params(56)));
g1(18,36)=1;
g1(18,37)=(-1);
g1(18,38)=1;
g1(18,39)=(-1);
g1(19,38)=(-params(1));
g1(19,39)=(-(1-params(1)));
g1(20,40)=(-1);
g1(21,9)=(-T(3));
g1(21,41)=T(2);
g1(21,66)=(-T(1));
g1(21,42)=1;
g1(21,50)=(-T(4));
g1(22,59)=1;
g1(22,42)=1;
g1(22,67)=(-1);
g1(22,43)=(-1);
g1(22,70)=1;
g1(23,38)=1;
g1(23,44)=(-params(15));
g1(24,64)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,67)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,45)=1;
g1(24,68)=(-(params(11)*(1-params(2))*exp((-params(5)))));
g1(24,70)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(25,42)=1;
g1(25,45)=(-1);
g1(25,10)=(-(exp(2*params(5))*params(16)));
g1(25,46)=(-((-(exp(2*params(5))*params(16)))-params(16)*params(11)*exp(2*params(5))));
g1(25,69)=(-(params(16)*params(11)*exp(2*params(5))));
g1(25,50)=exp(2*params(5))*params(16);
g1(25,70)=(-(params(16)*params(11)*exp(2*params(5))));
g1(25,53)=(-1);
g1(26,36)=1;
g1(26,44)=(-1);
g1(26,11)=(-1);
g1(26,50)=1;
g1(27,46)=(-(1-(1-params(2))*exp((-params(5)))));
g1(27,11)=(-((1-params(2))*exp((-params(5)))));
g1(27,47)=1;
g1(27,50)=(1-params(2))*exp((-params(5)));
g1(27,53)=(-(1-(1-params(2))*exp((-params(5)))));
g1(28,2)=T(9);
g1(28,25)=T(7);
g1(28,59)=(-T(6));
g1(28,8)=(-(1/(1+params(11))));
g1(28,39)=1;
g1(28,65)=(-T(6));
g1(28,49)=params(60);
g1(28,12)=T(9);
g1(28,50)=T(8);
g1(29,37)=params(12);
g1(29,39)=(-1);
g1(29,42)=(-1);
g1(29,49)=1;
g1(29,51)=1;
g1(30,48)=1;
g1(31,35)=1;
g1(31,41)=(-(params(58)/params(56)));
g1(31,44)=(-(params(36)*params(55)/params(56)));
g1(31,46)=(-(params(57)/params(56)));
g1(31,52)=(-1);
g1(32,12)=(-params(22));
g1(32,50)=1;
g1(32,71)=(-1);
g1(33,15)=(-params(24));
g1(33,53)=1;
g1(33,72)=(-1);
g1(34,16)=(-params(21));
g1(34,54)=1;
g1(34,73)=(-1);
g1(35,14)=(-params(23));
g1(35,52)=1;
g1(35,74)=(-1);
g1(36,17)=(-params(25));
g1(36,55)=1;
g1(36,75)=(-1);
g1(37,18)=(-params(26));
g1(37,56)=1;
g1(37,76)=(-1);
g1(38,13)=(-params(27));
g1(38,51)=1;
g1(38,77)=(-1);

end
