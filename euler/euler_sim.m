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

%motion entries calls
[y1, t1] = updateSpeedFunction(5, -10, 0.1, 0.01, 5);
[y2, t2] = updateSpeedFunction(5, -10, 0.5, 0.01, 5);
[y3, t3] = updateSpeedFunction(5, -10, 7, 0.001, 5);

%plotting the motion entries over time
hold on
plot(t1, y1, "r", LineWidth=3)
plot(t2, y2, "g", LineWidth=3)
plot(t3, y3, "b", LineWidth=3)

title("")
ylabel("speed");
xlabel("time")