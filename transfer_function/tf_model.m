function [time, y_values] = tf_model(time)

m = 2;
b = 0.4;
k = 0.4;

G = tf(1, [m b k]);

[y_values, time] = step(G, time);

%is this working??%

end