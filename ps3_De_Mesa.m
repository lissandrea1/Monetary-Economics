% =========================================================================
% ECO 6361
% Lissa Andrea De Mesa
% code for HW3 based on JPT (2011) paper
% =========================================================================

% Load the main data 
data = readtable('JPT data_FINAL.xlsx', 'Range', 'A1:K258', 'VariableNamingRule', 'preserve');

% Display the first few rows to check on the data 
disp(data(1:10,:));

% The following are the seven variables based from JPT(2011)
dates = data{:,1};          %sample Q1 1960 to Q2 2024 from FRED, BEA, and BLS
cobs = data{:,2};           %consumption variable based on nondurable goods plus services divided by population and GDP deflator
invobs = data{:,3};         %investment variable based on gross private domestic investment and durable goods divided by population and GDP deflator
yobs = data{:,4};           %real GDP equal to nominal GDP divided by population and GDP deflator
hours = data{:,5};          %hours of all persons in the nonfarm business sector divided by population
inf = data{:,6};            %inflation based on the quarterly GDP deflator
wobs = data{:,7};           %real wages as the nominal compensation per hour divided by the GDP deflator
robs = data{:,8};           %interest rate as the effective Federal funds rates in quarters
price_index = data{:,9};    %proxy for inflation using PCECTPI
SW_hours = data{:,10};      %proxy for hours using SW(2007) data
recession = data{:,11};     %recession period

% HP Filter Parameters (For quarterly data, a common choice is 1600)
lambda = 1600;

% Apply the HP filter for consumption
[trend, cycle] = hpfilter(cobs);

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Consumption
nexttile; % Move to the next tile
plot(dates, cycle, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Consumption');
xlabel('Time');
ylabel('Detrended Consumption');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Consumption
nexttile; % Move to the next tile
plot(dates, demeaned_cobs, 'LineWidth', 2);
title('Demeaned Consumption');
xlabel('Time');
ylabel('Demeaned Consumption');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Consumption');

% Apply the HP filter for investment
[trend1, cycle1] = hpfilter(invobs);

% Calculate the demeaned investment
mean_invobs = mean(invobs); % Mean of the investment variable
demeaned_invobs = invobs - mean_invobs; % Demeaned investment

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Investment
nexttile; % Move to the next tile
plot(dates, cycle1, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Investment');
xlabel('Time');
ylabel('Detrended Investment');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Investment
nexttile; % Move to the next tile
plot(dates, demeaned_invobs, 'LineWidth', 2);
title('Demeaned Investment');
xlabel('Time');
ylabel('Demeaned Investment');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Investment');


% Apply the HP filter for output
[trend2, cycle3] = hpfilter(yobs);

% Calculate the demeaned output
mean_yobs = mean(yobs); % Mean of the output variable
demeaned_yobs = yobs - mean_yobs; % Demeaned output

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Output
nexttile; % Move to the next tile
plot(dates, cycle3, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Output');
xlabel('Time');
ylabel('Detrended Output');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Output
nexttile; % Move to the next tile
plot(dates, demeaned_yobs, 'LineWidth', 2);
title('Demeaned Output');
xlabel('Time');
ylabel('Demeaned Output');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Output');



% Apply the HP filter for hours
[trend3, cycle3] = hpfilter(hours);

% Calculate the demeaned hours
mean_hours = mean(hours); % Mean of the hours variable
demeaned_hours = hours - mean_hours; % Demeaned hours

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Hours
nexttile; % Move to the next tile
plot(dates, cycle3, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Hours');
xlabel('Time');
ylabel('Detrended Hours');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Hours
nexttile; % Move to the next tile
plot(dates, demeaned_hours, 'LineWidth', 2);
title('Demeaned Hours');
xlabel('Time');
ylabel('Demeaned Hours');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Hours');



% Apply the HP filter for inflation
[trend4, cycle4] = hpfilter(inf);

% Calculate the demeaned inflation
mean_inflation = mean(inf); % Mean of the inflation variable
demeaned_inflation = inf - mean_inflation; % Demeaned inflation

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Inflation
nexttile; % Move to the next tile
plot(dates, cycle4, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Inflation');
xlabel('Time');
ylabel('Detrended Inflation');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Inflation
nexttile; % Move to the next tile
plot(dates, demeaned_inflation, 'LineWidth', 2);
title('Demeaned Inflation');
xlabel('Time');
ylabel('Demeaned Inflation');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Inflation');


% Apply the HP filter for real wage
[trend5, cycle5] = hpfilter(wobs);

% Calculate the demeaned real wage
mean_real_wage = mean(wobs); % Mean of the real wage variable
demeaned_real_wage = wobs - mean_real_wage; % Demeaned real wage

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Real Wage
nexttile; % Move to the next tile
plot(dates, cycle5, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Real Wage');
xlabel('Time');
ylabel('Detrended Real Wage');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Real Wage
nexttile; % Move to the next tile
plot(dates, demeaned_real_wage, 'LineWidth', 2);
title('Demeaned Real Wage');
xlabel('Time');
ylabel('Demeaned Real Wage');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Real Wage');


% Apply the HP filter for interest rate
[trend6, cycle6] = hpfilter(robs);

% Calculate the demeaned interest rate
mean_interest_rate = mean(robs); % Mean of the interest rate variable
demeaned_interest_rate = robs - mean_interest_rate; % Demeaned interest rate

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Interest Rate
nexttile; % Move to the next tile
plot(dates, cycle6, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Interest Rate');
xlabel('Time');
ylabel('Detrended Interest Rate');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Interest Rate
nexttile; % Move to the next tile
plot(dates, demeaned_interest_rate, 'LineWidth', 2);
title('Demeaned Interest Rate');
xlabel('Time');
ylabel('Demeaned Interest Rate');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Interest Rate');


% Apply the HP filter for proxy for inflation rate
[trend7, cycle7] = hpfilter(price_index);

% Calculate the demeaned proxy for inflation
mean_price_index = mean(price_index); % Mean of the proxy for inflation variable
demeaned_price_index = price_index - mean_price_index; % Demeaned proxy for inflation

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Detrended Proxy for Inflation
nexttile; % Move to the next tile
plot(dates, cycle7, 'LineWidth', 2); % Cycle is the detrended version
title('Detrended Proxy for Inflation');
xlabel('Time');
ylabel('Detrended Proxy for Inflation');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Demeaned Proxy for Inflation
nexttile; % Move to the next tile
plot(dates, demeaned_price_index, 'LineWidth', 2);
title('Demeaned Proxy for Inflation');
xlabel('Time');
ylabel('Demeaned Proxy for Inflation');
grid on;

% Add recession bars
hold on;
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Detrended and Demeaned Proxy for Inflation');


% Apply the HP filter for proxy for hours
[trend8, cycle8] = hpfilter(SW_hours);

% Calculate the demeaned proxy for hours
mean_SW_hours = mean(SW_hours); % Mean of the proxy for hours variable
demeaned_SW_hours = SW_hours - mean_SW_hours; % Demeaned proxy for hours

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Hours
nexttile; % Move to the next tile
plot(dates, hours, 'LineWidth', 2); hold on;
plot(dates, trend3, '--r', 'LineWidth', 2); % trend for hours
title('Hours: HP Filtered Trend');
grid on;

% Add recession bars for Hours
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Proxy for Hours
nexttile; % Move to the next tile
plot(dates, SW_hours, 'LineWidth', 2); hold on;
plot(dates, trend8, '--r', 'LineWidth', 2); % trend for proxy
title('Proxy for Hours: HP Filtered Trend');
grid on;

% Add recession bars for Proxy for Hours
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Hours vs Proxy for Hours');

 

% Create a new figure for combined plotting
figure;

% Use tiledlayout for better organization
tiledlayout(2, 1); % 2 rows, 1 column

% First tile for Inflation
nexttile; % Move to the next tile
plot(dates, inf, 'LineWidth', 2); hold on;
plot(dates, trend4, '--r', 'LineWidth', 2); % trend for inflation
title('Inflation Rate: HP Filtered Trend');
grid on;

% Add recession bars for Inflation
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Second tile for Proxy for Inflation
nexttile; % Move to the next tile
plot(dates, price_index, 'LineWidth', 2); hold on;
plot(dates, trend7, '--r', 'LineWidth', 2); % trend for proxy
title('Proxy for Inflation Rate: HP Filtered Trend');
grid on;

% Add recession bars for Proxy for Inflation
for i = 1:length(recession)-1
    if recession(i) == 1 % Start of a recession
        start_date = dates(i);
        while i <= length(recession) && recession(i) == 1
            i = i + 1;
        end
        end_date = dates(i-1); % End of the recession
        % Get current y limits
        y_limits = ylim; 
        fill([start_date, end_date, end_date, start_date], ...
             [y_limits(1), y_limits(1), y_limits(2), y_limits(2)], ...
             [0.5, 0.5, 0.5], 'FaceAlpha', 0.3, 'EdgeColor', 'none'); % Gray color
    end
end
hold off;

% Overall title for the entire figure
sgtitle('Inflation vs Proxy for Inflation');
