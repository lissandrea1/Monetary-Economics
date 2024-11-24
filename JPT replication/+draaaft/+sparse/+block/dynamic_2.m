function [y, T] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(68)=0;
  y(70)=params(22)*y(32)+x(1);
  y(73)=params(24)*y(35)+x(2);
  y(74)=params(21)*y(36)+x(3);
  y(72)=params(23)*y(34)+x(4);
  y(75)=params(25)*y(37)+x(5);
  y(76)=params(26)*y(38)+x(6);
  y(71)=params(27)*y(33)+x(7);
end
