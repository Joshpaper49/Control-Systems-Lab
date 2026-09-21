function [output_y, time] = updateSpeedFunction(u, x, tau, dt, time_end)
time = 0:dt:time_end;
index = 1:1:length(time);
y_values = zeros(1, length(time));

%update preallocated y_values with new change in motion
for k = index
    deriv = (u-x)/tau;
    x = x + deriv * dt;
    y_values(k) = x;
    output_y = y_values;
end
end