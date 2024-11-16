%% Preparing Data for Bayesian Estimation
JPT = readtable("JPT.xlsx")
model_data.y = JPT.y;
model_data.c = JPT.c;
model_data.i = JPT.i;
model_data.ppi = JPT.ppi; 
model_data.R = JPT.R;  
model_data.L = JPT.L;  
model_data.w = JPT.w;

save('model_data.mat', 'model_data');

jpt = load("model_data.mat");
jpt = rmmissing(jpt);
disp(jpt.model_data)

