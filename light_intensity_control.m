%% Automatic Light Control System Simulation
% Inputs: Experimental Data from Arduino
% Outputs: Simulated Control Response vs Real Response

clc; clear; close all;

%% 1. System Parameters
ldr_min = 0;
ldr_max = 50;
led_min = 0;
led_max = 255;

data = readtable('light_intensity_control_polished.xlsx'); 
time = cellfun(@(x) x, data.Time, 'UniformOutput', false);
time1 = cell2table(time);
time_vector = str2double(table2array(time1));
ldr_input = data.LDR;
pwm_real = data.PWM;

%% 3. Simulation
pwm_simulated = zeros(length(ldr_input), 1);
for i = 1:length(ldr_input)
    val = ldr_input(i);
    
    % Constrain
    if val < ldr_min
        val = ldr_min;
    elseif val > ldr_max
        val = ldr_max;
    end
    
    val_mapped = (val - ldr_min) * (led_min - led_max) / (ldr_max - ldr_min) + led_max;
    
    % Integer
    pwm_simulated(i) = round(val_mapped);
end

%% 4. Results

% Ambient Light Input
figure;
plot(time_vector, ldr_input, 'b--', 'LineWidth', 2, 'DisplayName', 'LDR Sensor Input');
grid on;
ylabel('LDR Value (0-1023)');
xlabel("Time (s)");
title('Input: Ambient Light Level');
yline(ldr_max, 'r-',  'LineWidth', 2, 'DisplayName', 'Threshold Max');
ylim([0, max(ldr_input)*1.2]);
legend('Location','best');

% PWM Output
figure;
plot(time_vector, pwm_simulated, 'g-', 'LineWidth', 2);
hold on;
plot(time_vector, pwm_real, 'k--', 'LineWidth', 2);
legend('Simulated (MATLAB)', 'Real Prototype (Arduino)');
grid on;
ylabel('PWM Duty Cycle (0-255)');
xlabel("Time (s)");
title('Output: LED Brightness Control');
ylim([-10, 265]);