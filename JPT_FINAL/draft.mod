
// Replication JPT

// Declare endogenous variables
var y, k, L, rho, w, s, ppi, c, lambda, R, u, phi, i, kbar, x, gw, y_star, k_star, L_star, rho_star, w_star, s_star, c_star, lambda_star, R_star, u_star, phi_star, i_star, 
     kbar_star, x_star, gw_star, z, b, g, mu, etamp; 

// Declare exogenous variables (shocks)
varexo eps_z, eps_mu, eps_mp, eps_g, eps_p;

// Declare parameters
parameters aalpha, delta, ip, iw, gammam, h, lambda_p, lambda_w, L_ss, pi_ss, bbeta, nu, zeta_p, zeta_w, xi, s2prime, phi_pi, phi_x, phi_dx, rho_R, rho_mp, rho_z, rho_g, rho_mu, rho_p, rho_w, rho_b, theta_p, theta_w,
           lambdap_ss, lambdaw_ss, g_ss, kappa, rho_ss, w_ss, kLratio, FLratio, F, yLratio, iLratio, cLratio, k_ss, y_ss, i_ss, c_ss, R_ss, kLstarratio, FLstarratio, Fstar, yLstarratio,
           iLstarratio, cLstarratio, kstar_ss, ystar_ss, istar_ss, cstar_ss, wstar_ss, discoef, kappa_w ;

// Calibration values for parameters
delta = 0.025;
aalpha=0.3;     //SW used 0.24
bbeta = 0.25;     //SW used 0.9995
gammam = 0.5;
nu=2;
h = 0.5;  
zeta_p = 0.84;
zeta_w = 0.7;
ip = 0.24;
lambda_w = 0.15;
lambda_p = 0.23;

//steady_state_model

g_ss = 1 / (1 - 0.22); // Fixed g_ss calculation
R_ss = (1 + gammam) * pi_ss / bbeta;
rho_ss = (exp(gammam)/bbeta)-(1-delta);
w_ss = ((1/(1+lambdap_ss))*(aalpha^aalpha)*((1-aalpha)^(1-aalpha))*(1/rho_ss^aalpha))^(1/(1-aalpha));
kLratio = (w_ss/rho_ss)*(aalpha/(1-aalpha));
FLratio = kLratio^aalpha -rho_ss*kLratio-w_ss;
yLratio = kLratio^aalpha-FLratio;
iLratio = (1-(1-delta)*exp(-gammam))*exp(gammam)*kLratio;     
cLratio = yLratio*(1/g_ss)-iLratio;
lambdaL = (cLratio^(-1))*(exp(gammam)-h*bbeta)/(exp(gammam)-h);
L_ss = ((w_ss*lambdaL)/rho_ss)^(1/(1+nu)); 
k_ss =  kLratio * L_ss;
y_ss =  yLratio * L_ss;
i_ss =  iLratio * L_ss;
c_ss =  cLratio * L_ss;
F    =  FLratio * L_ss;
oomega = ((1 / (1 + lambda_p)) * (aalpha^aalpha) * ((1 - aalpha)^(1 - aalpha)) * (1 / rho_ss)^aalpha)^(1 / (1 - aalpha)); // Corrected oomega
kappa = ((1 - zeta_p * bbeta) * (1 - zeta_p)) / (zeta_p * (1 + ip * bbeta)); // Fixed kappa
kappa_w = ((1 - zeta_w * bbeta) * (1 - zeta_w)) / (zeta_w * (1 + bbeta) * (1 + nu * (1 + (1 / lambda_w)))); // Fixed kappa_w

//Steady state of flexible economy
wstar_ss = ((aalpha^aalpha)*((1-aalpha)^(1-aalpha))*(1/rho_ss^aalpha))^(1/(1-aalpha));
kLstarratio = (wstar_ss/rho_ss)*(aalpha/(1-aalpha));
FLstarratio = ((kLstarratio)^aalpha)-rho_ss*kLstarratio-wstar_ss;
yLstarratio = ((kLstarratio)^aalpha)-FLstarratio;
iLstarratio = (1-(1-delta)*exp(-gammam))*exp(gammam)*kLstarratio;     
cLstarratio = yLstarratio*(1/g_ss)-iLstarratio;
lambdaLstar = (cLstarratio^(-1))*(exp(gammam)-h*bbeta)/(exp(gammam)-h);
Lstar_ss = ((wstar_ss*lambdaLstar)/rho_ss)^(1/(1+nu));
kstar_ss = kLstarratio * Lstar_ss;
ystar_ss = yLstarratio * Lstar_ss;
istar_ss = iLstarratio * Lstar_ss;
cstar_ss = cLstarratio * Lstar_ss;
Fstar    = FLstarratio * Lstar_ss;

// Local Variables


// Model equations in log-linearized form
model;

//1. 
  y = ((y_ss + F) / y_ss) * (aalpha * k + (1 - aalpha) * L);
//2. 
  rho = w + L - k;
//3. 
  s = aalpha * rho + (1 - aalpha) * w;
//4. 
  ppi = (bbeta / (1 + ip * bbeta)) * ppi(+1) + (ip / (1 + ip * bbeta)) * ppi(-1) + kappa * s + kappa * lambda_p;
//5.
  lambda = (h * bbeta * exp(gammam)) / (exp(gammam) - h * bbeta) * (exp(gammam) - h) * c(+1) - (exp(2 * gammam) + (h^2) * bbeta) / (exp(gammam) - h * bbeta) * (exp(gammam) - h) * c + (h * exp(gammam)) / (exp(gammam) - h * bbeta) * (exp(gammam) - h) * c(-1) + (h * bbeta * exp(gammam) * rho_z - h * exp(gammam)) / (exp(gammam) - h * bbeta) * (exp(gammam) - h) * z;
//6. 
  lambda = R + lambda(+1) - z(+1) - ppi(+1);
//7. 
  rho = xi * u;
//8. 
  phi = (1 - delta) * bbeta * exp(-gammam) * (phi(+1) - z(+1)) + (1 - (1 - delta) * bbeta * exp(-gammam)) * (lambda(+1) - z(+1) + rho(+1));
//9. 
  lambda = phi + mu - exp(2 * gammam) * s2prime * (i - i(-1) + z) + bbeta * exp(2 * gammam) * s2prime * (i(+1) - i + z(+1));
//10.
  k = u + kbar(-1) - z;
//11. 
  kbar = (1 - delta) * exp(-gammam) * (kbar(-1) - z) + (1 - (1 - delta) * exp(-gammam)) * (mu + i);
//12.
  w = (1 / (1 + bbeta)) * w(-1) + bbeta / (1 + bbeta) * w(+1) - kappa_w * gw + (iw / (1 + bbeta)) * ppi(-1) - (1 + bbeta * iw / (1 + bbeta)) * ppi + (bbeta / (1 / bbeta)) * ppi(+1) + (iw / (1 + bbeta)) * z(-1) - ((1 + bbeta * iw - rho_z * bbeta) / (1 + bbeta)) * z;
//13.
  gw = w - (nu * L + b - lambda);
//14.
  R = rho_R * R(-1) + (1 - rho_R) * (phi_pi * ppi + phi_x * (x - x_star)) + phi_dx * ((x - x(-1)) - (x_star - x_star(-1))) + etamp;
//15.
  x = y - ((rho * k) / y) * u;
//16. 
  (1 / g_ss) * y = (1 / g_ss) * g + (c_ss / y_ss) * c + (i_ss / y_ss) * i + (rho_ss * k_ss / y_ss) * u;

//Equations with flexible prices and wages;

  y_star = ((ystar_ss+Fstar)/ystar_ss)*(aalpha*k_star+(1-aalpha)*L_star); 
               
  rho_star = w_star+L_star-k_star;

// Real marginal cost is going to be fixed under flexible economy;

  0 = aalpha*rho_star+(1-aalpha)*w_star;

  ppi = (bbeta/(1 + ip * bbeta))*ppi(+1)+(ip/(1 + ip*bbeta))*ppi(-1)+kappa*s_star+kappa * lambda_p;      
              
  lambda_star = (h * bbeta * exp(gammam) / (exp(gammam) - h * bbeta) * (exp(gammam) - h)) * c_star(+1) - ((exp(2 * gammam) + h^2 * bbeta) / (exp(gammam) - h * bbeta) * (exp(gammam) - h)) * c_star + (h * exp(gammam) / (exp(gammam) - h * bbeta) * (exp(gammam) - h)) * c_star(-1) + ((h * bbeta * exp(gammam) * rho_z - h * exp(gammam)) / (exp(gammam) - h * bbeta) * (exp(gammam) - h)) * z;

  lambda_star = R_star+lambda_star(+1)-z(+1)-ppi(+1);

  rho_star = xi*u_star;

  phi_star = (1-delta)*bbeta*exp(-gammam)*(phi_star(+1)-z(+1))+(1-(1-delta)*bbeta*exp(-gammam))*(lambda_star(+1)-z(+1)+rho_star(+1));

  lambda_star = phi_star+mu-exp(2*gammam)*s2prime*(i_star-i_star(-1)+z)+bbeta*exp(2*gammam)*s2prime*(i_star(+1)-i_star+z(+1));

  k_star = u_star+kbar_star(-1)-z;

  kbar_star = (1-delta)*exp(-gammam)*(kbar_star(-1)-z)+(1-(1-delta)*exp(-gammam))*(mu+i_star);

  w_star = (1/(1+bbeta))*w_star(-1)+bbeta/(1 + bbeta)*w_star(+1)-kappa_w*gw_star+(iw/(1 + bbeta))* ppi(-1)-(1+bbeta*iw/(1 + bbeta))*ppi+(bbeta/(1/bbeta))*ppi(+1)+(iw/(1+bbeta))*z(-1)-((1+bbeta*iw-rho_z*bbeta)/(1+bbeta))*z;

  gw_star=w_star-(nu*L_star+b-lambda_star);

  //No markup shock so equation fourteen is not included

  x_star = y_star - ((rho * k_star) / y_star) * u_star;

  (1/g_ss)*y_star = (1/g_ss)*g+(cstar_ss/ystar_ss)*c_star+(istar_ss/ystar_ss)*i_star+(rho_ss*kstar_ss)/ystar_ss*u_star;

//Exogenous shocks
  z = rho_z*z(-1)+eps_z;             // technology;
  mu = rho_mu*mu(-1)+eps_mu;         // investment;
  etamp = rho_mp*etamp(-1)+eps_mp;   //monetary policy;
  g = rho_g*g(-1)+eps_g;             //government spending;
  lambda_p = rho_p*lambda_p+eps_p; //markup;
  
end;


// Shock specification (model shocks)
shocks;
    var eps_z = 0.1^2;
    var eps_p = 0.14^2;
    var eps_mp = 0.22^2;
    var eps_mu = 6.03^2;
    var eps_g = 0.35^2;
end;

// Parameter estimation block
estimated_params;
    aalpha, beta_pdf, 0.3, 0.05;
    // ip, beta_pdf, 0.5, 0.15;
    iw, beta_pdf, 0.5, 0.15;
    gammam, normal_pdf, 0.5, 0.03;
    h, beta_pdf, 0.5, 0.1;
    // lambda_p, normal_pdf, 0.15, 0.05;
    // lambda_w, normal_pdf, 0.15, 0.05;
    L_ss, normal_pdf, 0, 0.5;
    pi_ss, normal_pdf, 0.5, 0.1;
    bbeta, gamma_pdf, 0.25, 0.1;
    nu, gamma_pdf, 2, 0.75;
    // zeta_p, beta_pdf, 0.66, 0.1;
    // zeta_w, beta_pdf, 0.66, 0.1;
    xi, gamma_pdf, 5, 1;
    s2prime, gamma_pdf, 4, 1;
    phi_pi, normal_pdf, 1.7, 0.3;
    phi_x, normal_pdf, 0.13, 0.05;
    phi_dx, normal_pdf, 0.13, 0.05;
    rho_R, beta_pdf, 0.6, 0.2;
    rho_mp, beta_pdf, 0.4, 0.2;
    rho_z, beta_pdf, 0.6, 0.2;
    rho_g, beta_pdf, 0.6, 0.2;
    rho_mu, beta_pdf, 0.6, 0.2;
    rho_p, beta_pdf, 0.6, 0.2;
    rho_w, beta_pdf, 0.6, 0.2;
    rho_b, beta_pdf, 0.6, 0.2;
    theta_p, beta_pdf, 0.5, 0.2;
    theta_w, beta_pdf, 0.5, 0.2;
end;

// Observed variables for estimation
varobs y c i ppi R L w;

// Estimation command
estimation(datafile='model_data.mat', first_obs = 10, mode_compute=3, mh_replic=120000, mh_jscale=0.4);

