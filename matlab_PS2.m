%% Plot the impulse response functions
figure;
tiledlayout(3,3)

nexttile; plot(oo_.irfs.y_epsilon_M), title('Output (y)');
nexttile; plot(oo_.irfs.c_epsilon_M), title('Consumption (c)');
nexttile; plot(oo_.irfs.inv_epsilon_M), title('Investment (inv)');
nexttile; plot(oo_.irfs.n_epsilon_M), title('Labor (n)');
nexttile; plot(oo_.irfs.rk_epsilon_M), title('mpk (r)');
nexttile; plot(oo_.irfs.w_epsilon_M), title('mpl (w)');
nexttile; plot(oo_.irfs.a_epsilon_M), title('Technology (a)');

%%Plot the IRFs to technology shocks for NKPC and RBC
% where RBC: no price and wage stickiness

figure;
tiledlayout(3, 2)

% Plotting the impulse responses for both models
% Output
nexttile; 
plot(oo_.irfs.y_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.y_epsilon_a, 'r'), hold off; 
title('Output (y) to Technology Shock');
legend('NK', 'RBC');

% Consumption
nexttile; 
plot(oo_.irfs.c_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.c_epsilon_a, 'r'), hold off; 
title('Consumption (c) to Technology Shock');
legend('NK', 'RBC');

% Investment
nexttile; 
plot(oo_.irfs.inv_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.inv_epsilon_a, 'r'), hold off; 
title('Investment (inv) to Technology Shock');
legend('NK', 'RBC');

% Labor
nexttile; 
plot(oo_.irfs.n_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.n_epsilon_a, 'r'), hold off; 
title('Labor (n) to Technology Shock');
legend('NK', 'RBC');

% Interest Rate
nexttile; 
plot(oo_.irfs.r_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.r_epsilon_a, 'r'), hold off; 
title('Interest Rate (r) to Technology Shock');
legend('NK', 'RBC');

% Wage
nexttile; 
plot(oo_.irfs.w_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.w_epsilon_a, 'r'), hold off; 
title('Wage (w) to Technology Shock');
legend('NK', 'RBC');

% Technology
nexttile; 
plot(oo_.irfs.a_epsilon_a, 'b'), hold on; 
plot(oo_rbc_.irfs.a_epsilon_a, 'r'), hold off; 
title('Technology (a) to Technology Shock');
legend('NK', 'RBC');

% Overall title
sgtitle('Impulse Response Functions to Technology Shock: NK vs RBC');
xlabel('Periods');
ylabel('Percentage Deviation');

