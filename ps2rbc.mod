% =========================================================================
% ECO 6361
% Lissa Andrea De Mesa
% code for HW2
% =========================================================================

// Model parameters
parameters beta gamma phi delta alpha etaw psi S lambda epsilonw epsilonp 
rhoi zetapi zetay rhoa sigmaa rhoM sigmaM omega;

// Calibration values
beta = 0.99;    
gamma = 1;      
phi = 1.25;        
delta = 0.025;  
alpha = 0.35;   
etaw = 2.1;
psi = 0.6;        
S = 5;
lambda = 0.75;
epsilonw = 0.9;
epsilonp = 0.6;
rhoi = 0.78;     
zetapi = 1.5;
zetay = 0.1;
rhoa = 0.92;
sigmaa = 0.04;   
rhoM = 0.4;
sigmaM = 0.1;
omega = 1.6;


// Declaring endogenous variables (log deviations from steady state)
var c n k inv y r w rk M a I pi mc u q;

// Declaring exogenous shock
varexo epsilon_a epsilon_M;

// Model equations where we should have 8 equations from 8 variables(log-linearized):

model;

    // 1. Euler equation for consumption
    -(c-lambda*c(-1)) = -(c(+1)-lambda*c) + beta*(r(+1));

    // 2. Labor supply equation
    n = (1/phi)*w-(1/phi)*(c-lambda*c(-1)); 

    // 3. Goods market clearing condition
    y = 0.65*c + 0.25*inv + 0.10*k(-1);

    // 4. Capital law of motion
    k = (1 - delta) * k(-1) + delta*inv;

    // 5. Wage Setting
    w = beta*w(+1) + ((1 - epsilonw * beta) * (1 - epsilonw))*mc / (epsilonw * (1 + etaw));

    // 6. Production function (Cobb-Douglas log-linearized)
    y = a + alpha*u + alpha * k(-1) + (1 - alpha) * n; 

    // 7. Firm's first-order condition for labor
    w = y - n;  // FOC with respect to labor

    // 8. Firm's first-order condition for capital
    rk = y - k(-1);  // FOC with respect to capital

    // 9. AR(1) process for technology
    a = rhoa * a(-1) + epsilon_a; 

    // 10. AR(1) process for monetary policy
    M = rhoM * M(-1) + epsilon_M; 

    // 11. Interest rate given the Taylor rule
    I = rhoi*I(-1)-rhoi*I+(1-rhoi)*(zetapi*pi+zetay*y-zetay*y(-1))+M;

    // 12. Tobin's q 
    q = S * (inv - inv(-1)) - beta * S * (inv(+1) - inv);

    // 13. Inflation based on Calvo
    pi = ((1-epsilonp*beta)*(1-epsilonp)*mc)/epsilonp+(beta*pi(+1));

    // 14. Marginal cost
    mc = (w-a)-(1-alpha)*y;

    // 15. Interest rule
    r = rk + delta;
 
end;

// Shock (follows a normal distribution)
shocks;
    var epsilon_a = sigmaa^2;
    var epsilon_M = sigmaM^2;
end;

// Steady state calculation given log-linearized equations
steady;

// RBC model parameters (without price/wage stickiness)
epsilonw = 1e10; // High value to approximate perfect competition
epsilonp = 1e10; // High value for price stickiness

// Solving the model using linearization
stoch_simul(order=1, irf=50, periods=200);

oo_rbc_ = oo_;
