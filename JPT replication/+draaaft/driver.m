%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'draaaft';
M_.dynare_version = '6.1';
oo_.dynare_version = '6.1';
options_.dynare_version = '6.1';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(7,1);
M_.exo_names_tex = cell(7,1);
M_.exo_names_long = cell(7,1);
M_.exo_names(1) = {'eps_z'};
M_.exo_names_tex(1) = {'eps\_z'};
M_.exo_names_long(1) = {'eps_z'};
M_.exo_names(2) = {'eps_mu'};
M_.exo_names_tex(2) = {'eps\_mu'};
M_.exo_names_long(2) = {'eps_mu'};
M_.exo_names(3) = {'eps_mp'};
M_.exo_names_tex(3) = {'eps\_mp'};
M_.exo_names_long(3) = {'eps_mp'};
M_.exo_names(4) = {'eps_g'};
M_.exo_names_tex(4) = {'eps\_g'};
M_.exo_names_long(4) = {'eps_g'};
M_.exo_names(5) = {'eps_p'};
M_.exo_names_tex(5) = {'eps\_p'};
M_.exo_names_long(5) = {'eps_p'};
M_.exo_names(6) = {'eps_w'};
M_.exo_names_tex(6) = {'eps\_w'};
M_.exo_names_long(6) = {'eps_w'};
M_.exo_names(7) = {'eps_b'};
M_.exo_names_tex(7) = {'eps\_b'};
M_.exo_names_long(7) = {'eps_b'};
M_.endo_names = cell(38,1);
M_.endo_names_tex = cell(38,1);
M_.endo_names_long = cell(38,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'k'};
M_.endo_names_tex(2) = {'k'};
M_.endo_names_long(2) = {'k'};
M_.endo_names(3) = {'L'};
M_.endo_names_tex(3) = {'L'};
M_.endo_names_long(3) = {'L'};
M_.endo_names(4) = {'rho'};
M_.endo_names_tex(4) = {'rho'};
M_.endo_names_long(4) = {'rho'};
M_.endo_names(5) = {'w'};
M_.endo_names_tex(5) = {'w'};
M_.endo_names_long(5) = {'w'};
M_.endo_names(6) = {'s'};
M_.endo_names_tex(6) = {'s'};
M_.endo_names_long(6) = {'s'};
M_.endo_names(7) = {'ppi'};
M_.endo_names_tex(7) = {'ppi'};
M_.endo_names_long(7) = {'ppi'};
M_.endo_names(8) = {'c'};
M_.endo_names_tex(8) = {'c'};
M_.endo_names_long(8) = {'c'};
M_.endo_names(9) = {'lambda'};
M_.endo_names_tex(9) = {'lambda'};
M_.endo_names_long(9) = {'lambda'};
M_.endo_names(10) = {'R'};
M_.endo_names_tex(10) = {'R'};
M_.endo_names_long(10) = {'R'};
M_.endo_names(11) = {'u'};
M_.endo_names_tex(11) = {'u'};
M_.endo_names_long(11) = {'u'};
M_.endo_names(12) = {'phi'};
M_.endo_names_tex(12) = {'phi'};
M_.endo_names_long(12) = {'phi'};
M_.endo_names(13) = {'i'};
M_.endo_names_tex(13) = {'i'};
M_.endo_names_long(13) = {'i'};
M_.endo_names(14) = {'kbar'};
M_.endo_names_tex(14) = {'kbar'};
M_.endo_names_long(14) = {'kbar'};
M_.endo_names(15) = {'x'};
M_.endo_names_tex(15) = {'x'};
M_.endo_names_long(15) = {'x'};
M_.endo_names(16) = {'gw'};
M_.endo_names_tex(16) = {'gw'};
M_.endo_names_long(16) = {'gw'};
M_.endo_names(17) = {'y_star'};
M_.endo_names_tex(17) = {'y\_star'};
M_.endo_names_long(17) = {'y_star'};
M_.endo_names(18) = {'k_star'};
M_.endo_names_tex(18) = {'k\_star'};
M_.endo_names_long(18) = {'k_star'};
M_.endo_names(19) = {'L_star'};
M_.endo_names_tex(19) = {'L\_star'};
M_.endo_names_long(19) = {'L_star'};
M_.endo_names(20) = {'rho_star'};
M_.endo_names_tex(20) = {'rho\_star'};
M_.endo_names_long(20) = {'rho_star'};
M_.endo_names(21) = {'w_star'};
M_.endo_names_tex(21) = {'w\_star'};
M_.endo_names_long(21) = {'w_star'};
M_.endo_names(22) = {'s_star'};
M_.endo_names_tex(22) = {'s\_star'};
M_.endo_names_long(22) = {'s_star'};
M_.endo_names(23) = {'c_star'};
M_.endo_names_tex(23) = {'c\_star'};
M_.endo_names_long(23) = {'c_star'};
M_.endo_names(24) = {'lambda_star'};
M_.endo_names_tex(24) = {'lambda\_star'};
M_.endo_names_long(24) = {'lambda_star'};
M_.endo_names(25) = {'R_star'};
M_.endo_names_tex(25) = {'R\_star'};
M_.endo_names_long(25) = {'R_star'};
M_.endo_names(26) = {'u_star'};
M_.endo_names_tex(26) = {'u\_star'};
M_.endo_names_long(26) = {'u_star'};
M_.endo_names(27) = {'phi_star'};
M_.endo_names_tex(27) = {'phi\_star'};
M_.endo_names_long(27) = {'phi_star'};
M_.endo_names(28) = {'i_star'};
M_.endo_names_tex(28) = {'i\_star'};
M_.endo_names_long(28) = {'i_star'};
M_.endo_names(29) = {'kbar_star'};
M_.endo_names_tex(29) = {'kbar\_star'};
M_.endo_names_long(29) = {'kbar_star'};
M_.endo_names(30) = {'x_star'};
M_.endo_names_tex(30) = {'x\_star'};
M_.endo_names_long(30) = {'x_star'};
M_.endo_names(31) = {'gw_star'};
M_.endo_names_tex(31) = {'gw\_star'};
M_.endo_names_long(31) = {'gw_star'};
M_.endo_names(32) = {'z'};
M_.endo_names_tex(32) = {'z'};
M_.endo_names_long(32) = {'z'};
M_.endo_names(33) = {'b'};
M_.endo_names_tex(33) = {'b'};
M_.endo_names_long(33) = {'b'};
M_.endo_names(34) = {'g'};
M_.endo_names_tex(34) = {'g'};
M_.endo_names_long(34) = {'g'};
M_.endo_names(35) = {'mu'};
M_.endo_names_tex(35) = {'mu'};
M_.endo_names_long(35) = {'mu'};
M_.endo_names(36) = {'etamp'};
M_.endo_names_tex(36) = {'etamp'};
M_.endo_names_long(36) = {'etamp'};
M_.endo_names(37) = {'lambda_p'};
M_.endo_names_tex(37) = {'lambda\_p'};
M_.endo_names_long(37) = {'lambda_p'};
M_.endo_names(38) = {'lambda_w'};
M_.endo_names_tex(38) = {'lambda\_w'};
M_.endo_names_long(38) = {'lambda_w'};
M_.endo_partitions = struct();
M_.param_names = cell(60,1);
M_.param_names_tex = cell(60,1);
M_.param_names_long = cell(60,1);
M_.param_names(1) = {'aalpha'};
M_.param_names_tex(1) = {'aalpha'};
M_.param_names_long(1) = {'aalpha'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'delta'};
M_.param_names_long(2) = {'delta'};
M_.param_names(3) = {'ip'};
M_.param_names_tex(3) = {'ip'};
M_.param_names_long(3) = {'ip'};
M_.param_names(4) = {'iw'};
M_.param_names_tex(4) = {'iw'};
M_.param_names_long(4) = {'iw'};
M_.param_names(5) = {'gammam'};
M_.param_names_tex(5) = {'gammam'};
M_.param_names_long(5) = {'gammam'};
M_.param_names(6) = {'h'};
M_.param_names_tex(6) = {'h'};
M_.param_names_long(6) = {'h'};
M_.param_names(7) = {'lambda_p_ss'};
M_.param_names_tex(7) = {'lambda\_p\_ss'};
M_.param_names_long(7) = {'lambda_p_ss'};
M_.param_names(8) = {'lambda_w_ss'};
M_.param_names_tex(8) = {'lambda\_w\_ss'};
M_.param_names_long(8) = {'lambda_w_ss'};
M_.param_names(9) = {'L_ss'};
M_.param_names_tex(9) = {'L\_ss'};
M_.param_names_long(9) = {'L_ss'};
M_.param_names(10) = {'pi_ss'};
M_.param_names_tex(10) = {'pi\_ss'};
M_.param_names_long(10) = {'pi_ss'};
M_.param_names(11) = {'bbeta'};
M_.param_names_tex(11) = {'bbeta'};
M_.param_names_long(11) = {'bbeta'};
M_.param_names(12) = {'nu'};
M_.param_names_tex(12) = {'nu'};
M_.param_names_long(12) = {'nu'};
M_.param_names(13) = {'zeta_p'};
M_.param_names_tex(13) = {'zeta\_p'};
M_.param_names_long(13) = {'zeta_p'};
M_.param_names(14) = {'zeta_w'};
M_.param_names_tex(14) = {'zeta\_w'};
M_.param_names_long(14) = {'zeta_w'};
M_.param_names(15) = {'xi'};
M_.param_names_tex(15) = {'xi'};
M_.param_names_long(15) = {'xi'};
M_.param_names(16) = {'s2prime'};
M_.param_names_tex(16) = {'s2prime'};
M_.param_names_long(16) = {'s2prime'};
M_.param_names(17) = {'phi_pi'};
M_.param_names_tex(17) = {'phi\_pi'};
M_.param_names_long(17) = {'phi_pi'};
M_.param_names(18) = {'phi_x'};
M_.param_names_tex(18) = {'phi\_x'};
M_.param_names_long(18) = {'phi_x'};
M_.param_names(19) = {'phi_dx'};
M_.param_names_tex(19) = {'phi\_dx'};
M_.param_names_long(19) = {'phi_dx'};
M_.param_names(20) = {'rho_R'};
M_.param_names_tex(20) = {'rho\_R'};
M_.param_names_long(20) = {'rho_R'};
M_.param_names(21) = {'rho_mp'};
M_.param_names_tex(21) = {'rho\_mp'};
M_.param_names_long(21) = {'rho_mp'};
M_.param_names(22) = {'rho_z'};
M_.param_names_tex(22) = {'rho\_z'};
M_.param_names_long(22) = {'rho_z'};
M_.param_names(23) = {'rho_g'};
M_.param_names_tex(23) = {'rho\_g'};
M_.param_names_long(23) = {'rho_g'};
M_.param_names(24) = {'rho_mu'};
M_.param_names_tex(24) = {'rho\_mu'};
M_.param_names_long(24) = {'rho_mu'};
M_.param_names(25) = {'rho_p'};
M_.param_names_tex(25) = {'rho\_p'};
M_.param_names_long(25) = {'rho_p'};
M_.param_names(26) = {'rho_w'};
M_.param_names_tex(26) = {'rho\_w'};
M_.param_names_long(26) = {'rho_w'};
M_.param_names(27) = {'rho_b'};
M_.param_names_tex(27) = {'rho\_b'};
M_.param_names_long(27) = {'rho_b'};
M_.param_names(28) = {'theta_p'};
M_.param_names_tex(28) = {'theta\_p'};
M_.param_names_long(28) = {'theta_p'};
M_.param_names(29) = {'theta_w'};
M_.param_names_tex(29) = {'theta\_w'};
M_.param_names_long(29) = {'theta_w'};
M_.param_names(30) = {'theta_mp'};
M_.param_names_tex(30) = {'theta\_mp'};
M_.param_names_long(30) = {'theta_mp'};
M_.param_names(31) = {'theta_g'};
M_.param_names_tex(31) = {'theta\_g'};
M_.param_names_long(31) = {'theta_g'};
M_.param_names(32) = {'theta_mu'};
M_.param_names_tex(32) = {'theta\_mu'};
M_.param_names_long(32) = {'theta_mu'};
M_.param_names(33) = {'theta_b'};
M_.param_names_tex(33) = {'theta\_b'};
M_.param_names_long(33) = {'theta_b'};
M_.param_names(34) = {'g_ss'};
M_.param_names_tex(34) = {'g\_ss'};
M_.param_names_long(34) = {'g_ss'};
M_.param_names(35) = {'kappa'};
M_.param_names_tex(35) = {'kappa'};
M_.param_names_long(35) = {'kappa'};
M_.param_names(36) = {'rho_ss'};
M_.param_names_tex(36) = {'rho\_ss'};
M_.param_names_long(36) = {'rho_ss'};
M_.param_names(37) = {'w_ss'};
M_.param_names_tex(37) = {'w\_ss'};
M_.param_names_long(37) = {'w_ss'};
M_.param_names(38) = {'kLratio'};
M_.param_names_tex(38) = {'kLratio'};
M_.param_names_long(38) = {'kLratio'};
M_.param_names(39) = {'FLratio'};
M_.param_names_tex(39) = {'FLratio'};
M_.param_names_long(39) = {'FLratio'};
M_.param_names(40) = {'F'};
M_.param_names_tex(40) = {'F'};
M_.param_names_long(40) = {'F'};
M_.param_names(41) = {'yLratio'};
M_.param_names_tex(41) = {'yLratio'};
M_.param_names_long(41) = {'yLratio'};
M_.param_names(42) = {'iLratio'};
M_.param_names_tex(42) = {'iLratio'};
M_.param_names_long(42) = {'iLratio'};
M_.param_names(43) = {'cLratio'};
M_.param_names_tex(43) = {'cLratio'};
M_.param_names_long(43) = {'cLratio'};
M_.param_names(44) = {'k_ss'};
M_.param_names_tex(44) = {'k\_ss'};
M_.param_names_long(44) = {'k_ss'};
M_.param_names(45) = {'y_ss'};
M_.param_names_tex(45) = {'y\_ss'};
M_.param_names_long(45) = {'y_ss'};
M_.param_names(46) = {'i_ss'};
M_.param_names_tex(46) = {'i\_ss'};
M_.param_names_long(46) = {'i_ss'};
M_.param_names(47) = {'c_ss'};
M_.param_names_tex(47) = {'c\_ss'};
M_.param_names_long(47) = {'c_ss'};
M_.param_names(48) = {'R_ss'};
M_.param_names_tex(48) = {'R\_ss'};
M_.param_names_long(48) = {'R_ss'};
M_.param_names(49) = {'kLstarratio'};
M_.param_names_tex(49) = {'kLstarratio'};
M_.param_names_long(49) = {'kLstarratio'};
M_.param_names(50) = {'FLstarratio'};
M_.param_names_tex(50) = {'FLstarratio'};
M_.param_names_long(50) = {'FLstarratio'};
M_.param_names(51) = {'Fstar'};
M_.param_names_tex(51) = {'Fstar'};
M_.param_names_long(51) = {'Fstar'};
M_.param_names(52) = {'yLstarratio'};
M_.param_names_tex(52) = {'yLstarratio'};
M_.param_names_long(52) = {'yLstarratio'};
M_.param_names(53) = {'iLstarratio'};
M_.param_names_tex(53) = {'iLstarratio'};
M_.param_names_long(53) = {'iLstarratio'};
M_.param_names(54) = {'cLstarratio'};
M_.param_names_tex(54) = {'cLstarratio'};
M_.param_names_long(54) = {'cLstarratio'};
M_.param_names(55) = {'kstar_ss'};
M_.param_names_tex(55) = {'kstar\_ss'};
M_.param_names_long(55) = {'kstar_ss'};
M_.param_names(56) = {'ystar_ss'};
M_.param_names_tex(56) = {'ystar\_ss'};
M_.param_names_long(56) = {'ystar_ss'};
M_.param_names(57) = {'istar_ss'};
M_.param_names_tex(57) = {'istar\_ss'};
M_.param_names_long(57) = {'istar_ss'};
M_.param_names(58) = {'cstar_ss'};
M_.param_names_tex(58) = {'cstar\_ss'};
M_.param_names_long(58) = {'cstar_ss'};
M_.param_names(59) = {'wstar_ss'};
M_.param_names_tex(59) = {'wstar\_ss'};
M_.param_names_long(59) = {'wstar_ss'};
M_.param_names(60) = {'kappa_w'};
M_.param_names_tex(60) = {'kappa\_w'};
M_.param_names_long(60) = {'kappa_w'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 38;
M_.param_nbr = 60;
M_.orig_endo_nbr = 38;
M_.aux_vars = [];
options_.varobs = cell(3, 1);
options_.varobs(1)  = {'y'};
options_.varobs(2)  = {'c'};
options_.varobs(3)  = {'i'};
options_.varobs_id = [ 1 8 13  ];
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 38;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 57;
 1 23 58;
 0 24 0;
 2 25 59;
 3 26 60;
 0 27 61;
 4 28 0;
 0 29 0;
 0 30 62;
 5 31 63;
 6 32 0;
 7 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 64;
 8 39 65;
 0 40 0;
 9 41 66;
 0 42 67;
 0 43 0;
 0 44 0;
 0 45 68;
 10 46 69;
 11 47 0;
 0 48 0;
 0 49 0;
 12 50 70;
 13 51 0;
 14 52 0;
 15 53 0;
 16 54 0;
 17 55 0;
 18 56 0;]';
M_.nstatic = 14;
M_.nfwrd   = 6;
M_.npred   = 10;
M_.nboth   = 8;
M_.nsfwrd   = 14;
M_.nspred   = 18;
M_.ndynamic   = 24;
M_.dynamic_tmp_nbr = [8; 1; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'rho' ;
  3 , 'name' , 's' ;
  4 , 'name' , 'ppi' ;
  5 , 'name' , 'lambda' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'phi' ;
  9 , 'name' , '9' ;
  10 , 'name' , 'k' ;
  11 , 'name' , 'kbar' ;
  12 , 'name' , 'w' ;
  13 , 'name' , 'gw' ;
  14 , 'name' , 'R' ;
  15 , 'name' , 'x' ;
  16 , 'name' , '16' ;
  17 , 'name' , 'y_star' ;
  18 , 'name' , 'rho_star' ;
  19 , 'name' , '19' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'lambda_star' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'phi_star' ;
  25 , 'name' , '25' ;
  26 , 'name' , 'k_star' ;
  27 , 'name' , 'kbar_star' ;
  28 , 'name' , 'w_star' ;
  29 , 'name' , 'gw_star' ;
  30 , 'name' , 'x_star' ;
  31 , 'name' , '31' ;
  32 , 'name' , 'z' ;
  33 , 'name' , 'mu' ;
  34 , 'name' , 'etamp' ;
  35 , 'name' , 'g' ;
  36 , 'name' , 'lambda_p' ;
  37 , 'name' , 'lambda_w' ;
  38 , 'name' , 'b' ;
};
M_.mapping.y.eqidx = [1 15 16 ];
M_.mapping.k.eqidx = [1 2 10 ];
M_.mapping.L.eqidx = [1 2 13 ];
M_.mapping.rho.eqidx = [2 3 7 8 ];
M_.mapping.w.eqidx = [2 3 12 13 ];
M_.mapping.s.eqidx = [3 4 ];
M_.mapping.ppi.eqidx = [4 6 12 14 22 28 ];
M_.mapping.c.eqidx = [5 16 ];
M_.mapping.lambda.eqidx = [5 6 8 9 13 ];
M_.mapping.R.eqidx = [6 14 ];
M_.mapping.u.eqidx = [7 10 16 ];
M_.mapping.phi.eqidx = [8 9 ];
M_.mapping.i.eqidx = [9 11 16 ];
M_.mapping.kbar.eqidx = [10 11 ];
M_.mapping.x.eqidx = [14 15 ];
M_.mapping.gw.eqidx = [12 13 ];
M_.mapping.y_star.eqidx = [15 17 31 ];
M_.mapping.k_star.eqidx = [17 18 26 ];
M_.mapping.L_star.eqidx = [17 18 29 ];
M_.mapping.rho_star.eqidx = [18 19 23 24 ];
M_.mapping.w_star.eqidx = [18 19 28 29 ];
M_.mapping.s_star.eqidx = [20 ];
M_.mapping.c_star.eqidx = [21 31 ];
M_.mapping.lambda_star.eqidx = [21 22 24 25 29 ];
M_.mapping.R_star.eqidx = [22 ];
M_.mapping.u_star.eqidx = [23 26 31 ];
M_.mapping.phi_star.eqidx = [24 25 ];
M_.mapping.i_star.eqidx = [25 27 31 ];
M_.mapping.kbar_star.eqidx = [26 27 ];
M_.mapping.x_star.eqidx = [30 ];
M_.mapping.gw_star.eqidx = [28 29 ];
M_.mapping.z.eqidx = [5 6 8 9 10 11 12 21 22 24 25 26 27 28 32 ];
M_.mapping.b.eqidx = [5 13 29 38 ];
M_.mapping.g.eqidx = [16 31 35 ];
M_.mapping.mu.eqidx = [9 11 25 27 33 ];
M_.mapping.etamp.eqidx = [14 34 ];
M_.mapping.lambda_p.eqidx = [4 36 ];
M_.mapping.lambda_w.eqidx = [12 37 ];
M_.mapping.eps_z.eqidx = [32 ];
M_.mapping.eps_mu.eqidx = [33 ];
M_.mapping.eps_mp.eqidx = [34 ];
M_.mapping.eps_g.eqidx = [35 ];
M_.mapping.eps_p.eqidx = [36 ];
M_.mapping.eps_w.eqidx = [37 ];
M_.mapping.eps_b.eqidx = [38 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 20];
M_.block_structure.block(1).variable = [ 22];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 1;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(2).Simulation_Type = 1;
M_.block_structure.block(2).endo_nbr = 8;
M_.block_structure.block(2).mfs = 8;
M_.block_structure.block(2).equation = [ 30 32 33 34 35 36 37 38];
M_.block_structure.block(2).variable = [ 30 32 35 36 34 37 38 33];
M_.block_structure.block(2).is_linear = true;
M_.block_structure.block(2).NNZDerivatives = 15;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ];
M_.block_structure.block(3).Simulation_Type = 8;
M_.block_structure.block(3).endo_nbr = 28;
M_.block_structure.block(3).mfs = 24;
M_.block_structure.block(3).equation = [ 13 29 3 17 10 15 18 1 23 26 7 11 14 27 6 12 16 9 25 28 31 4 19 21 24 2 5 8];
M_.block_structure.block(3).variable = [ 16 31 6 17 2 1 19 3 26 18 11 14 15 29 10 5 8 13 28 21 23 7 20 24 27 4 9 12];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 103;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [8 9 10 11 12 13 14 15 16 17 18 0 0 0 0 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 60 61 62 63 64 65 66 67 68 69 70 71 72 ];
M_.block_structure.block(4).Simulation_Type = 3;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 22];
M_.block_structure.block(4).variable = [ 25];
M_.block_structure.block(4).is_linear = true;
M_.block_structure.block(4).NNZDerivatives = 1;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([]);
M_.block_structure.block(2).g1_sparse_colval = int32([]);
M_.block_structure.block(2).g1_sparse_colptr = int32([]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 8 9 6 10 9 12 23 14 15 16 20 12 16 18 1 4 22 2 4 13 2 3 16 17 4 12 22 5 6 17 2 3 6 17 1 7 13 8 2 9 10 9 11 12 18 22 13 23 8 13 14 10 15 17 3 16 19 17 20 9 12 16 18 3 5 19 15 16 20 15 21 7 18 22 11 12 14 23 14 24 12 23 14 15 16 20 11 12 16 18 21 21 21 24 11 24 24 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([8 8 9 10 10 11 12 13 14 15 16 17 18 18 18 25 25 25 26 26 26 27 27 27 27 28 28 28 29 29 29 30 30 30 30 31 31 31 32 33 33 34 35 35 36 36 36 37 37 38 38 38 39 39 39 40 40 40 41 41 42 42 42 42 43 43 43 44 44 44 45 45 46 46 46 47 47 47 47 48 48 60 61 62 63 64 65 66 66 66 66 67 68 69 70 71 71 72 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 1 1 1 1 1 1 1 3 4 6 7 8 9 10 11 12 13 16 16 16 16 16 16 16 19 22 26 29 32 36 39 40 42 43 45 48 50 53 56 59 61 65 68 71 73 76 80 82 82 82 82 82 82 82 82 82 82 82 82 83 84 85 86 87 88 92 93 94 95 96 98 99 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.variable_reordered = [ 22 30 32 35 36 34 37 38 33 16 31 6 17 2 1 19 3 26 18 11 14 15 29 10 5 8 13 28 21 23 7 20 24 27 4 9 12 25];
M_.block_structure.equation_reordered = [ 20 30 32 33 34 35 36 37 38 13 29 3 17 10 15 18 1 23 26 7 11 14 27 6 12 16 9 25 28 31 4 19 21 24 2 5 8 22];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 4 7;
 5 8;
 9 13;
 10 14;
 11 14;
 12 5;
 12 7;
 12 32;
 14 10;
 14 15;
 21 23;
 25 28;
 26 29;
 27 29;
 28 7;
 28 21;
 28 32;
 32 32;
 33 35;
 34 36;
 35 34;
 36 37;
 37 38;
 38 33;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 2;
 2 3;
 2 4;
 2 5;
 3 4;
 3 5;
 3 6;
 4 6;
 4 7;
 4 37;
 5 8;
 5 9;
 5 32;
 5 33;
 6 9;
 6 10;
 7 4;
 7 11;
 8 12;
 9 9;
 9 12;
 9 13;
 9 32;
 9 35;
 10 2;
 10 11;
 10 32;
 11 13;
 11 14;
 11 32;
 11 35;
 12 5;
 12 7;
 12 16;
 12 32;
 12 38;
 13 3;
 13 5;
 13 9;
 13 16;
 13 33;
 14 7;
 14 10;
 14 15;
 14 36;
 15 1;
 15 15;
 15 17;
 16 1;
 16 8;
 16 11;
 16 13;
 16 34;
 17 17;
 17 18;
 17 19;
 18 18;
 18 19;
 18 20;
 18 21;
 19 20;
 19 21;
 20 22;
 21 23;
 21 24;
 21 32;
 22 24;
 22 25;
 23 20;
 23 26;
 24 27;
 25 24;
 25 27;
 25 28;
 25 32;
 25 35;
 26 18;
 26 26;
 26 32;
 27 28;
 27 29;
 27 32;
 27 35;
 28 7;
 28 21;
 28 31;
 28 32;
 29 19;
 29 21;
 29 24;
 29 31;
 29 33;
 30 30;
 31 17;
 31 23;
 31 26;
 31 28;
 31 34;
 32 32;
 33 35;
 34 36;
 35 34;
 36 37;
 37 38;
 38 33;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 4 7;
 5 8;
 6 7;
 6 9;
 6 32;
 8 4;
 8 9;
 8 12;
 8 32;
 9 13;
 9 32;
 12 5;
 12 7;
 21 23;
 22 7;
 22 24;
 22 32;
 24 20;
 24 24;
 24 27;
 24 32;
 25 28;
 25 32;
 28 7;
 28 21;
];
M_.block_structure.dyn_tmp_nbr = 5;
M_.state_var = [32 35 36 34 37 38 33 14 15 29 10 5 8 13 28 21 23 7 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(38, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(60, 1);
M_.endo_trends = struct('deflator', cell(38, 1), 'log_deflator', cell(38, 1), 'growth_factor', cell(38, 1), 'log_growth_factor', cell(38, 1));
M_.NNZDerivatives = [164; 0; -1; ];
M_.dynamic_g1_sparse_rowval = int32([12 4 12 28 5 14 9 10 11 14 28 21 25 26 27 12 28 32 38 35 33 34 36 37 1 15 16 1 2 10 1 2 13 2 3 7 2 3 12 13 3 4 4 12 14 28 5 16 5 6 9 13 6 14 7 10 16 8 9 9 11 16 11 14 15 12 13 15 17 31 17 18 26 17 18 29 18 19 23 18 19 28 29 20 21 31 21 22 25 29 22 23 26 31 24 25 25 27 31 27 30 28 29 5 9 10 11 12 21 25 26 27 28 32 5 13 29 38 16 31 35 9 11 25 27 33 14 34 4 36 12 37 8 12 4 6 12 22 28 5 6 8 8 9 24 28 21 22 24 24 25 6 8 9 22 24 25 32 33 34 35 36 37 38 ]);
M_.dynamic_g1_sparse_colval = int32([5 7 7 7 8 10 13 14 14 15 21 23 28 29 29 32 32 32 33 34 35 36 37 38 39 39 39 40 40 40 41 41 41 42 42 42 43 43 43 43 44 44 45 45 45 45 46 46 47 47 47 47 48 48 49 49 49 50 50 51 51 51 52 53 53 54 54 55 55 55 56 56 56 57 57 57 58 58 58 59 59 59 59 60 61 61 62 62 62 62 63 64 64 64 65 65 66 66 66 67 68 69 69 70 70 70 70 70 70 70 70 70 70 70 71 71 71 71 72 72 72 73 73 73 73 73 74 74 75 75 76 76 80 81 83 83 83 83 83 84 85 85 88 89 96 97 99 100 100 103 104 108 108 108 108 108 108 115 116 117 118 119 120 121 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 2 2 5 6 6 7 7 7 8 10 11 11 11 11 11 11 12 12 13 13 13 13 13 14 16 16 16 19 20 21 22 23 24 25 28 31 34 37 41 43 47 49 53 55 58 60 63 64 66 68 71 74 77 80 84 85 87 91 92 95 97 100 101 102 104 115 119 122 127 129 131 133 133 133 133 134 135 135 140 141 143 143 143 144 145 145 145 145 145 145 145 146 147 147 148 150 150 150 151 152 152 152 152 158 158 158 158 158 158 158 159 160 161 162 163 164 165 ]);
M_.dynamic_g2_sparse_indices = int32([]);
M_.lhs = {
'y'; 
'rho'; 
's'; 
'ppi'; 
'lambda'; 
'lambda'; 
'rho'; 
'phi'; 
'lambda'; 
'k'; 
'kbar'; 
'w'; 
'gw'; 
'R'; 
'x'; 
'y'; 
'y_star'; 
'rho_star'; 
'0'; 
'0'; 
'lambda_star'; 
'lambda_star'; 
'rho_star'; 
'phi_star'; 
'lambda_star'; 
'k_star'; 
'kbar_star'; 
'w_star'; 
'gw_star'; 
'x_star'; 
'y_star'; 
'z'; 
'mu'; 
'etamp'; 
'g'; 
'lambda_p'; 
'lambda_w'; 
'b'; 
};
M_.static_tmp_nbr = [7; 0; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 20];
M_.block_structure_stat.block(1).variable = [ 22];
M_.block_structure_stat.block(2).Simulation_Type = 1;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 30];
M_.block_structure_stat.block(2).variable = [ 30];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 32];
M_.block_structure_stat.block(3).variable = [ 32];
M_.block_structure_stat.block(4).Simulation_Type = 3;
M_.block_structure_stat.block(4).endo_nbr = 1;
M_.block_structure_stat.block(4).mfs = 1;
M_.block_structure_stat.block(4).equation = [ 33];
M_.block_structure_stat.block(4).variable = [ 35];
M_.block_structure_stat.block(5).Simulation_Type = 3;
M_.block_structure_stat.block(5).endo_nbr = 1;
M_.block_structure_stat.block(5).mfs = 1;
M_.block_structure_stat.block(5).equation = [ 34];
M_.block_structure_stat.block(5).variable = [ 36];
M_.block_structure_stat.block(6).Simulation_Type = 3;
M_.block_structure_stat.block(6).endo_nbr = 1;
M_.block_structure_stat.block(6).mfs = 1;
M_.block_structure_stat.block(6).equation = [ 35];
M_.block_structure_stat.block(6).variable = [ 34];
M_.block_structure_stat.block(7).Simulation_Type = 3;
M_.block_structure_stat.block(7).endo_nbr = 1;
M_.block_structure_stat.block(7).mfs = 1;
M_.block_structure_stat.block(7).equation = [ 36];
M_.block_structure_stat.block(7).variable = [ 37];
M_.block_structure_stat.block(8).Simulation_Type = 3;
M_.block_structure_stat.block(8).endo_nbr = 1;
M_.block_structure_stat.block(8).mfs = 1;
M_.block_structure_stat.block(8).equation = [ 37];
M_.block_structure_stat.block(8).variable = [ 38];
M_.block_structure_stat.block(9).Simulation_Type = 3;
M_.block_structure_stat.block(9).endo_nbr = 1;
M_.block_structure_stat.block(9).mfs = 1;
M_.block_structure_stat.block(9).equation = [ 38];
M_.block_structure_stat.block(9).variable = [ 33];
M_.block_structure_stat.block(10).Simulation_Type = 6;
M_.block_structure_stat.block(10).endo_nbr = 28;
M_.block_structure_stat.block(10).mfs = 28;
M_.block_structure_stat.block(10).equation = [ 10 11 12 13 14 15 16 17 18 19 1 21 9 23 24 25 26 27 28 29 2 31 3 4 5 6 7 8];
M_.block_structure_stat.block(10).variable = [ 14 13 16 3 7 15 11 17 19 21 1 23 12 26 20 27 18 29 31 24 2 28 5 6 8 10 4 9];
M_.block_structure_stat.block(11).Simulation_Type = 3;
M_.block_structure_stat.block(11).endo_nbr = 1;
M_.block_structure_stat.block(11).mfs = 1;
M_.block_structure_stat.block(11).equation = [ 22];
M_.block_structure_stat.block(11).variable = [ 25];
M_.block_structure_stat.variable_reordered = [ 22 30 32 35 36 34 37 38 33 14 13 16 3 7 15 11 17 19 21 1 23 12 26 20 27 18 29 31 24 2 28 5 6 8 10 4 9 25];
M_.block_structure_stat.equation_reordered = [ 20 30 32 33 34 35 36 37 38 10 11 12 13 14 15 16 17 18 19 1 21 9 23 24 25 26 27 28 29 2 31 3 4 5 6 7 8 22];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 2;
 2 3;
 2 4;
 2 5;
 3 4;
 3 5;
 3 6;
 4 6;
 4 7;
 4 37;
 5 8;
 5 9;
 5 32;
 5 33;
 6 7;
 6 10;
 6 32;
 7 4;
 7 11;
 8 4;
 8 9;
 8 12;
 8 32;
 9 9;
 9 12;
 9 32;
 9 35;
 10 2;
 10 11;
 10 14;
 10 32;
 11 13;
 11 14;
 11 32;
 11 35;
 12 5;
 12 7;
 12 16;
 12 32;
 12 38;
 13 3;
 13 5;
 13 9;
 13 16;
 13 33;
 14 7;
 14 10;
 14 15;
 14 36;
 15 1;
 15 15;
 15 17;
 16 1;
 16 8;
 16 11;
 16 13;
 16 34;
 17 17;
 17 18;
 17 19;
 18 18;
 18 19;
 18 20;
 18 21;
 19 20;
 19 21;
 20 22;
 21 23;
 21 24;
 21 32;
 22 7;
 22 25;
 22 32;
 23 20;
 23 26;
 24 20;
 24 24;
 24 27;
 24 32;
 25 24;
 25 27;
 25 32;
 25 35;
 26 18;
 26 26;
 26 29;
 26 32;
 27 28;
 27 29;
 27 32;
 27 35;
 28 7;
 28 21;
 28 31;
 28 32;
 29 19;
 29 21;
 29 24;
 29 31;
 29 33;
 30 30;
 31 17;
 31 23;
 31 26;
 31 28;
 31 34;
 32 32;
 33 35;
 34 36;
 35 34;
 36 37;
 37 38;
 38 33;
];
M_.block_structure_stat.tmp_nbr = 6;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(8).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(9).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(10).g1_sparse_rowval = int32([1 2 2 7 3 4 4 11 21 3 5 19 24 26 5 6 1 7 27 6 8 22 8 9 20 9 10 19 20 6 7 11 12 22 13 28 14 17 22 9 10 14 15 15 16 8 9 17 17 18 19 20 12 15 16 20 1 11 21 18 22 3 4 21 23 23 24 7 25 5 26 21 23 27 28 4 13 25 28 ]);
M_.block_structure_stat.block(10).g1_sparse_colval = int32([1 1 2 2 3 3 4 4 4 5 5 5 5 5 6 6 7 7 7 8 8 8 9 9 9 10 10 10 10 11 11 11 12 12 13 13 14 14 14 15 15 15 15 16 16 17 17 17 18 18 19 19 20 20 20 20 21 21 21 22 22 23 23 23 23 24 24 25 25 26 26 27 27 27 27 28 28 28 28 ]);
M_.block_structure_stat.block(10).g1_sparse_colptr = int32([1 3 5 7 10 15 17 20 23 26 30 33 35 37 40 44 46 49 51 53 57 60 62 66 68 70 72 76 80 ]);
M_.block_structure_stat.block(11).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(11).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(11).g1_sparse_colptr = int32([1 2 ]);
M_.static_g1_sparse_rowval = int32([1 15 16 1 2 10 1 2 13 2 3 7 8 2 3 12 13 3 4 4 6 12 14 22 28 5 16 5 8 9 13 6 14 7 10 16 8 9 11 16 10 11 14 15 12 13 15 17 31 17 18 26 17 18 29 18 19 23 24 18 19 28 29 20 21 31 21 24 25 29 22 23 26 31 24 25 27 31 26 27 30 28 29 5 6 8 9 10 11 12 21 22 24 25 26 27 28 32 5 13 29 38 16 31 35 9 11 25 27 33 14 34 4 36 12 37 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 3 3 3 4 4 4 4 5 5 5 5 6 6 7 7 7 7 7 7 8 8 9 9 9 9 10 10 11 11 11 12 12 13 13 14 14 15 15 16 16 17 17 17 18 18 18 19 19 19 20 20 20 20 21 21 21 21 22 23 23 24 24 24 24 25 26 26 26 27 27 28 28 29 29 30 31 31 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 33 33 33 33 34 34 34 35 35 35 35 35 36 36 37 37 38 38 ]);
M_.static_g1_sparse_colptr = int32([1 4 7 10 14 18 20 26 28 32 34 37 39 41 43 45 47 50 53 56 60 64 65 67 71 72 75 77 79 81 82 84 99 103 106 111 113 115 117 ]);
M_.static_g2_sparse_indices = int32([]);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(1) = 0.3;
aalpha = M_.params(1);
M_.params(11) = 0.99;
bbeta = M_.params(11);
M_.params(5) = 0.005;
gammam = M_.params(5);
M_.params(12) = 2;
nu = M_.params(12);
M_.params(6) = 0.5;
h = M_.params(6);
M_.params(13) = 0.84;
zeta_p = M_.params(13);
M_.params(14) = 0.7;
zeta_w = M_.params(14);
M_.params(3) = 0.24;
ip = M_.params(3);
M_.params(8) = 0.15;
lambda_w_ss = M_.params(8);
M_.params(7) = 0.15;
lambda_p_ss = M_.params(7);
M_.params(10) = 1.005;
pi_ss = M_.params(10);
M_.params(4) = 0.5;
iw = M_.params(4);
M_.params(15) = 5;
xi = M_.params(15);
M_.params(16) = 0.5;
s2prime = M_.params(16);
M_.params(20) = 0.8;
rho_R = M_.params(20);
M_.params(21) = 0.4;
rho_mp = M_.params(21);
M_.params(22) = 0.9;
rho_z = M_.params(22);
M_.params(23) = 0.6;
rho_g = M_.params(23);
M_.params(24) = 0.7;
rho_mu = M_.params(24);
M_.params(25) = 0.7;
rho_p = M_.params(25);
M_.params(26) = 0.7;
rho_w = M_.params(26);
M_.params(27) = 0.6;
rho_b = M_.params(27);
M_.params(17) = 1.5;
phi_pi = M_.params(17);
M_.params(18) = 0.13;
phi_x = M_.params(18);
M_.params(19) = 0.25;
phi_dx = M_.params(19);
M_.params(28) = 0.75;
theta_p = M_.params(28);
M_.params(29) = 0.75;
theta_w = M_.params(29);
M_.params(9) = 0.3;
L_ss = M_.params(9);
M_.params(30) = 0.10;
theta_mp = M_.params(30);
M_.params(31) = 0.5;
theta_g = M_.params(31);
M_.params(32) = 0.5;
theta_mu = M_.params(32);
M_.params(33) = 0.10;
theta_b = M_.params(33);
M_.params(34) = 1.282051282051282;
g_ss = M_.params(34);
M_.params(36) = exp(M_.params(5))/M_.params(11)-(1-M_.params(2));
rho_ss = M_.params(36);
M_.params(37) = (1/(1+M_.params(7))*M_.params(1)^M_.params(1)*(1-M_.params(1))^(1-M_.params(1))*1/M_.params(36)^M_.params(1))^(1/(1-M_.params(1)));
w_ss = M_.params(37);
M_.params(38) = M_.params(37)/M_.params(36)*M_.params(1)/(1-M_.params(1));
kLratio = M_.params(38);
M_.params(39) = M_.params(38)^M_.params(1)-M_.params(36)*M_.params(38)-M_.params(37);
FLratio = M_.params(39);
M_.params(41) = M_.params(38)^M_.params(1)-M_.params(39);
yLratio = M_.params(41);
M_.params(42) = M_.params(38)*exp(M_.params(5))*(1-(1-M_.params(2))*exp((-M_.params(5))));
iLratio = M_.params(42);
M_.params(43) = M_.params(41)*1/M_.params(34)-M_.params(42);
cLratio = M_.params(43);
lambdaL = cLratio^(-1) * (exp(gammam) - h * bbeta) / (exp(gammam) - h);
M_.params(44) = M_.params(38)*M_.params(9);
k_ss = M_.params(44);
M_.params(45) = M_.params(41)*M_.params(9);
y_ss = M_.params(45);
M_.params(46) = M_.params(42)*M_.params(9);
i_ss = M_.params(46);
M_.params(47) = M_.params(9)*M_.params(43);
c_ss = M_.params(47);
M_.params(40) = M_.params(39)*M_.params(9);
F = M_.params(40);
oomega = ((1 / (1 + lambda_p_ss)) * (aalpha^aalpha) * ((1 - aalpha)^(1 - aalpha)) * (1 / rho_ss)^aalpha)^(1 / (1 - aalpha));
M_.params(35) = (1-M_.params(11)*M_.params(13))*(1-M_.params(13))/(M_.params(13)*(1+M_.params(11)*M_.params(3)));
kappa = M_.params(35);
M_.params(60) = (1-M_.params(11)*M_.params(14))*(1-M_.params(14))/(M_.params(14)*(1+M_.params(11))*(1+M_.params(12)*(1+1/M_.params(8))));
kappa_w = M_.params(60);
M_.params(48) = (1+M_.params(5))*M_.params(10)/M_.params(11);
R_ss = M_.params(48);
M_.params(59) = M_.params(37);
wstar_ss = M_.params(59);
M_.params(49) = M_.params(38);
kLstarratio = M_.params(49);
M_.params(50) = M_.params(39);
FLstarratio = M_.params(50);
M_.params(52) = M_.params(41);
yLstarratio = M_.params(52);
M_.params(53) = M_.params(42);
iLstarratio = M_.params(53);
M_.params(54) = M_.params(43);
cLstarratio = M_.params(54);
lambdaLstar = lambdaL;
Lstar_ss = L_ss;
M_.params(55) = M_.params(44);
kstar_ss = M_.params(55);
M_.params(56) = M_.params(45);
ystar_ss = M_.params(56);
M_.params(57) = M_.params(46);
istar_ss = M_.params(57);
M_.params(58) = M_.params(47);
cstar_ss = M_.params(58);
M_.params(51) = M_.params(40);
Fstar = M_.params(51);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = log(M_.params(45));
oo_.steady_state(2) = log(M_.params(44));
oo_.steady_state(3) = log(M_.params(9));
oo_.steady_state(4) = log(M_.params(36));
oo_.steady_state(5) = log(M_.params(37));
oo_.steady_state(6) = 0;
oo_.steady_state(7) = 0;
oo_.steady_state(8) = log(M_.params(47));
oo_.steady_state(9) = log(lambdaL);
oo_.steady_state(10) = log(M_.params(48));
oo_.steady_state(11) = 0;
oo_.steady_state(12) = 0;
oo_.steady_state(13) = log(M_.params(46));
oo_.steady_state(14) = log(M_.params(44));
oo_.steady_state(15) = 0;
oo_.steady_state(16) = 0;
oo_.steady_state(33) = 0;
oo_.steady_state(34) = 0;
oo_.steady_state(35) = 0;
oo_.steady_state(36) = 0;
oo_.steady_state(37) = 0;
oo_.steady_state(38) = 0;
oo_.steady_state(32) = 0;
oo_.steady_state(17) = log(M_.params(56));
oo_.steady_state(18) = log(M_.params(55));
oo_.steady_state(19) = log(Lstar_ss);
oo_.steady_state(20) = log(M_.params(36));
oo_.steady_state(21) = log(M_.params(59));
oo_.steady_state(22) = 0;
oo_.steady_state(23) = log(M_.params(58));
oo_.steady_state(24) = log(lambdaLstar);
oo_.steady_state(25) = log(M_.params(48));
oo_.steady_state(26) = 0;
oo_.steady_state(27) = 0;
oo_.steady_state(28) = log(M_.params(57));
oo_.steady_state(29) = log(M_.params(55));
oo_.steady_state(30) = 0;
oo_.steady_state(31) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.1)^2;
M_.Sigma_e(2, 2) = (6.03)^2;
M_.Sigma_e(3, 3) = (0.22)^2;
M_.Sigma_e(4, 4) = (0.35)^2;
M_.Sigma_e(5, 5) = (0.14)^2;
M_.Sigma_e(6, 6) = (0.1)^2;
M_.Sigma_e(7, 7) = (0.1)^2;
options_resid_ = struct();
display_static_residuals(M_, options_, oo_, options_resid_);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
if isempty(estim_params_)
    estim_params_.var_exo = zeros(0, 10);
    estim_params_.var_endo = zeros(0, 10);
    estim_params_.corrx = zeros(0, 11);
    estim_params_.corrn = zeros(0, 11);
    estim_params_.param_vals = zeros(0, 10);
end
if ~isempty(find(estim_params_.param_vals(:,1)==1))
    error('Parameter aalpha has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 1, NaN, (-Inf), Inf, 1, 0.33, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==11))
    error('Parameter bbeta has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 11, NaN, (-Inf), Inf, 1, 0.99, 0.002, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==12))
    error('Parameter nu has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 2, 2.0, 0.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==13))
    error('Parameter zeta_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 13, NaN, (-Inf), Inf, 1, 0.75, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==14))
    error('Parameter zeta_w has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 14, NaN, (-Inf), Inf, 1, 0.75, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==17))
    error('Parameter phi_pi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 17, NaN, (-Inf), Inf, 3, 1.5, 0.25, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==18))
    error('Parameter phi_x has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 18, NaN, (-Inf), Inf, 3, 0.125, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==20))
    error('Parameter rho_R has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 20, NaN, (-Inf), Inf, 1, 0.8, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==22))
    error('Parameter rho_z has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 22, NaN, (-Inf), Inf, 1, 0.85, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==23))
    error('Parameter rho_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 23, NaN, (-Inf), Inf, 1, 0.85, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==24))
    error('Parameter rho_mu has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 24, NaN, (-Inf), Inf, 1, 0.7, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==21))
    error('Parameter rho_mp has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 21, NaN, (-Inf), Inf, 1, 0.4, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==25))
    error('Parameter rho_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 25, NaN, (-Inf), Inf, 1, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==26))
    error('Parameter rho_w has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 26, NaN, (-Inf), Inf, 1, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==27))
    error('Parameter rho_b has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 27, NaN, (-Inf), Inf, 1, 0.7, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==6))
    error('Parameter h has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 6, NaN, (-Inf), Inf, 1, 0.7, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==7))
    error('Parameter lambda_p_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 7, NaN, (-Inf), Inf, 3, 0.15, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==8))
    error('Parameter lambda_w_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 8, NaN, (-Inf), Inf, 3, 0.15, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==4))
    error('Parameter iw has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 4, NaN, (-Inf), Inf, 1, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==3))
    error('Parameter ip has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 3, NaN, (-Inf), Inf, 1, 0.25, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==15))
    error('Parameter xi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 15, NaN, (-Inf), Inf, 2, 5.0, 1.0, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==16))
    error('Parameter s2prime has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 16, NaN, (-Inf), Inf, 2, 4.0, 1.0, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==5))
    error('Parameter gammam has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 5, NaN, (-Inf), Inf, 3, 0.005, 0.003, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==9))
    error('Parameter L_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 9, NaN, (-Inf), Inf, 3, 0.3, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==10))
    error('Parameter pi_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 10, NaN, (-Inf), Inf, 3, 1.005, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==19))
    error('Parameter phi_dx has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 19, NaN, (-Inf), Inf, 3, 0.13, 0.02, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==28))
    error('Parameter theta_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 28, NaN, (-Inf), Inf, 4, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==29))
    error('Parameter theta_w has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 29, NaN, (-Inf), Inf, 4, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==30))
    error('Parameter theta_mp has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 30, NaN, (-Inf), Inf, 4, 0.10, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==31))
    error('Parameter theta_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 31, NaN, (-Inf), Inf, 4, 0.50, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==32))
    error('Parameter theta_mu has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 32, NaN, (-Inf), Inf, 4, 0.50, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==33))
    error('Parameter theta_b has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 33, NaN, (-Inf), Inf, 4, 0.10, 0.1, NaN, NaN, NaN ];
tmp1 = find(estim_params_.param_vals(:,1)==1);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{1}))
else
    estim_params_.param_vals(tmp1,2) = 0.3;
end
tmp1 = find(estim_params_.param_vals(:,1)==3);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{3}))
else
    estim_params_.param_vals(tmp1,2) = 0.24;
end
tmp1 = find(estim_params_.param_vals(:,1)==4);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{4}))
else
    estim_params_.param_vals(tmp1,2) = 0.5;
end
tmp1 = find(estim_params_.param_vals(:,1)==5);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{5}))
else
    estim_params_.param_vals(tmp1,2) = 0.005;
end
tmp1 = find(estim_params_.param_vals(:,1)==6);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{6}))
else
    estim_params_.param_vals(tmp1,2) = 0.5;
end
tmp1 = find(estim_params_.param_vals(:,1)==7);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{7}))
else
    estim_params_.param_vals(tmp1,2) = 0.15;
end
tmp1 = find(estim_params_.param_vals(:,1)==8);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{8}))
else
    estim_params_.param_vals(tmp1,2) = 0.15;
end
tmp1 = find(estim_params_.param_vals(:,1)==9);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{9}))
else
    estim_params_.param_vals(tmp1,2) = 0.3;
end
tmp1 = find(estim_params_.param_vals(:,1)==10);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{10}))
else
    estim_params_.param_vals(tmp1,2) = 1.005;
end
tmp1 = find(estim_params_.param_vals(:,1)==11);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{11}))
else
    estim_params_.param_vals(tmp1,2) = 0.99;
end
tmp1 = find(estim_params_.param_vals(:,1)==12);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{12}))
else
    estim_params_.param_vals(tmp1,2) = 2;
end
tmp1 = find(estim_params_.param_vals(:,1)==13);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{13}))
else
    estim_params_.param_vals(tmp1,2) = 0.84;
end
tmp1 = find(estim_params_.param_vals(:,1)==14);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{14}))
else
    estim_params_.param_vals(tmp1,2) = 0.7;
end
tmp1 = find(estim_params_.param_vals(:,1)==16);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{16}))
else
    estim_params_.param_vals(tmp1,2) = 4;
end
tmp1 = find(estim_params_.param_vals(:,1)==17);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{17}))
else
    estim_params_.param_vals(tmp1,2) = 1.7;
end
tmp1 = find(estim_params_.param_vals(:,1)==18);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{18}))
else
    estim_params_.param_vals(tmp1,2) = 0.13;
end
tmp1 = find(estim_params_.param_vals(:,1)==15);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{15}))
else
    estim_params_.param_vals(tmp1,2) = 5;
end
tmp1 = find(estim_params_.param_vals(:,1)==19);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{19}))
else
    estim_params_.param_vals(tmp1,2) = 0.13;
end
tmp1 = find(estim_params_.param_vals(:,1)==20);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{20}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==21);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{21}))
else
    estim_params_.param_vals(tmp1,2) = 0.4;
end
tmp1 = find(estim_params_.param_vals(:,1)==22);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{22}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==23);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{23}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==24);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{24}))
else
    estim_params_.param_vals(tmp1,2) = 0.7;
end
tmp1 = find(estim_params_.param_vals(:,1)==25);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{25}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==26);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{26}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==27);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{27}))
else
    estim_params_.param_vals(tmp1,2) = 0.6;
end
tmp1 = find(estim_params_.param_vals(:,1)==28);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{28}))
else
    estim_params_.param_vals(tmp1,2) = 0.5;
end
tmp1 = find(estim_params_.param_vals(:,1)==29);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{29}))
else
    estim_params_.param_vals(tmp1,2) = 0.5;
end
tmp1 = find(estim_params_.param_vals(:,1)==30);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{30}))
else
    estim_params_.param_vals(tmp1,2) = 0.10;
end
tmp1 = find(estim_params_.param_vals(:,1)==31);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{31}))
else
    estim_params_.param_vals(tmp1,2) = 0.50;
end
tmp1 = find(estim_params_.param_vals(:,1)==32);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{32}))
else
    estim_params_.param_vals(tmp1,2) = 0.50;
end
tmp1 = find(estim_params_.param_vals(:,1)==33);
if isempty(tmp1)
    disp(sprintf('Parameter %s is not estimated (the value provided in estimated_params_init is not used).', M_.param_names{33}))
else
    estim_params_.param_vals(tmp1,2) = 0.10;
end
skipline()
options_gsa = struct();
gsa.run(M_,oo_,options_,bayestopt_,estim_params_,options_gsa);
options_ident = struct();
options_ident.advanced = 1;
options_ident.order = 1;
identification.run(M_,oo_,options_,bayestopt_,estim_params_,options_ident);
options_.contemporaneous_correlation = true;
options_.irf = 60;
options_.irf_shocks = {'eps_z';'eps_mp';'eps_mu'};
options_.order = 2;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
options_.datafile = 'model_data.mat';
options_.mh_jscale = 0.56;
options_.mh_replic = 120000;
options_.mode_compute = 5;
options_.mode_file = 'draaaft_mode.mat';
options_.prior_trunc = 0;
options_.order = 1;
var_list_ = {};
oo_recursive_=dynare_estimation(var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draaaft_results.mat'], 'options_mom_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
