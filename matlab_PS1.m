%% Plot the impulse response functions
figure;
tiledlayout(3,3)

nexttile; plot(oo_.irfs.y_epsilon_a), title('Output (y)');
nexttile; plot(oo_.irfs.c_epsilon_a), title('Consumption (c)');
nexttile; plot(oo_.irfs.inv_epsilon_a), title('Investment (inv)');
nexttile; plot(oo_.irfs.n_epsilon_a), title('Labor (n)');
nexttile; plot(oo_.irfs.r_epsilon_a), title('Interest rate (r)');
nexttile; plot(oo_.irfs.w_epsilon_a), title('Wage (w)');
nexttile; plot(oo_.irfs.a_epsilon_a), title('Capital (k)');
nexttile; plot(oo_.irfs.a_epsilon_a), title('Technology (a)');

y_dynare = oo_.endo_simul(strmatch('y', M_.endo_names, 'exact'), :);
c_dynare = oo_.endo_simul(strmatch('c', M_.endo_names, 'exact'), :);
n_dynare = oo_.endo_simul(strmatch('n', M_.endo_names, 'exact'), :);
w_dynare = oo_.endo_simul(strmatch('w', M_.endo_names, 'exact'), :);
k_dynare = oo_.endo_simul(strmatch('k', M_.endo_names, 'exact'), :);
inv_dynare = oo_.endo_simul(strmatch('inv', M_.endo_names, 'exact'), :);
r_dynare = oo_.endo_simul(strmatch('r', M_.endo_names, 'exact'), :);
a_dynare = oo_.endo_simul(strmatch('a', M_.endo_names, 'exact'), :);

figure;
tiledlayout(3,3)

nexttile; autocorr(y_dynare, 6); title('Output (y)');
nexttile; autocorr(c_dynare, 6), title('Consumption (c)');
nexttile; autocorr(inv_dynare, 6), title('Investment (inv)');
nexttile; autocorr(n_dynare, 6), title('Labor (n)');
nexttile; autocorr(r_dynare, 6), title('Interest rate (r)');
nexttile; autocorr(w_dynare, 6), title('Wage (w)');
nexttile; autocorr(k_dynare, 6), title('Capital (k)');
nexttile; autocorr(a_dynare, 6), title('Technology (a)');