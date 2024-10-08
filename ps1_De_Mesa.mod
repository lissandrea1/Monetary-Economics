% =========================================================================
% ECO 6361
% Lissa Andrea De Mesa
% code for HW1
% =========================================================================

// Model parameters
parameters beta gamma phi delta alpha rho sigma psi;

// Calibration values
beta = 0.99;    // Discount factor
gamma = 1;      // Elasticity of substitution
phi = 2;        // Elasticity of labor supply
delta = 0.025;  // Depreciation rate
alpha = 0.35;   // Capital share
rho = 0.92;     // Persistence of technology shock
sigma = 0.04;   // Standard deviation of technology shock
psi = 1.6;        // Disutility of labor

// Declaring endogenous variables (log deviations from steady state)
var c n k inv y r w a;

// Declaring exogenous shock
varexo epsilon_a;

// Model equations where we should have 8 equations from 8 variables(log-linearized):

model;
    // 1. Euler equation for consumption
    c = (c(+1)) - beta*(r(+1)) ; // Consumption Euler equation with discount factor

    // 2. Capital law of motion (adjusting for timing)
    k = (1 - delta) * k(-1) + delta*inv; // Capital is predetermined, so we use k(-1)

    // 3. Labor supply equation
    n=(1/phi)*w-(1/phi)*c; // Log-linearized labor supply equation

    // 4. Budget constraint
    c + inv = w * n + r * k(-1); // Use k(-1) to account for predetermined capital

    // 5. Production function (Cobb-Douglas log-linearized)
    y = a + alpha * k(-1) + (1 - alpha) * n; // Use k(-1) for capital

    // 6. Firm's first-order condition for labor
    w = y - n;  // FOC with respect to labor

    // 7. Firm's first-order condition for capital
    r = y - k(-1);  // FOC with respect to capital

    // 8. AR(1) process for technology
    a = rho * a(-1) + epsilon_a; // AR(1) for technology
end;

// Shock (follows a normal distribution)
shocks;
    var epsilon_a = sigma^2;
end;

// Steady state calculation given log-linearized equations
steady;

// Solving the model using linearization
stoch_simul(order=1, irf=50, periods=200);


