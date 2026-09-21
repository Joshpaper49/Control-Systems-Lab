%% 
% **this program plots a 1st ODE system
% where the system approaches a steady-state
% value in accordance to parameters**
% 
% 
% This is the order of inputs:
% 
% *u* is desired speed
% *x* is current speed
% *tau* is time constant
% *dt* is delta time
% *time_end* is the upper bound of time range
%   time_end is a selected value * tau so that the simulation
%   will end around a certain percentage of the final value
%   note: 5 will have the simulation end around 99.3% of the final value



%motion entries calls
u = 5; x = -10; tau = 0.1; dt = 0.01; time_end = 5 * tau;
[y1, t1] = updateSpeedFunction(u, x, tau, dt, time_end);

u = 5; x = -10; tau = 0.5; dt = 0.01; time_end = 5 * tau;
[y2, t2] = updateSpeedFunction(u, x, tau, dt, time_end);

u = 5; x = -10; tau = 1; dt = 0.01; time_end = 5 * tau;
[y3, t3] = updateSpeedFunction(u, x, tau, dt, time_end);

%plotting the motion entries over time
hold on
plot(t1, y1, "r", LineWidth=3)
plot(t2, y2, "g", LineWidth=3)
plot(t3, y3, "b", LineWidth=3)

title("")
ylabel("speed");
xlabel("time")