function [time, p_values] = tf_model(time)
u = 1;
m = 2;
b = 0.4;
k = 0.4;

% transfer function
G = tf(u, [m b k]);

[p_values, time] = step(G, time);

end