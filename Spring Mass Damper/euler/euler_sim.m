
function [time, p_values] = euler_sim()
u = 1; % force
b = 0.4; % damping constant -- 0.4
k = 0.4; % spring constant
m = 2; % mass
dt = 0.02; % timestep -- 0.02
p  = 0; % position
v  = 0; % velocity
a  = 0; % acceleration

% calculating second-order system characteristics and settling time
natural_freq = sqrt(k/m);
damping_ratio = b/(2*sqrt(m*k));
settle_time = 4/(natural_freq * damping_ratio);


% preparing data collection
time = 0:dt:settle_time;
p_values = zeros(1, length(time));

% equilibrium position
equil_pos = u/k;
disp('Equilibrium position')
disp(equil_pos)

% initializing the first index of p_values to 0
p_values(1) = p;

for num = 2:length(time)

    a = (u - (b*v) - (k*p))/m;
    v = v + a * dt;
    p = p + v * dt;

    p_values(num) = p;
end
end