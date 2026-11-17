m = 2;
b = 0.4;
k = 0.4;

G = tf(1, [m b k]);

step(G)