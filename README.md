# Control-Systems-Lab me

## Lab Status: In Progress

This learning lab explores the modeling and simulation of dynamic systems using MATLAB. Current work includes first-order system responses, spring-mass-damper modeling, numerical integration using Euler methods, and comparisons with continuous-time transfer-function simulations.
The next phase will focus on poles, system stability, and feedback control.
The goal is to build a stronger understanding of control systems through mathematical modeling, simulation, and experimentation.

## First-Order Speed Response Simulation

This project is simulating a first order ODE system designed to showcase a system response to meeting a user desired speed. The system response was produced using a forward Euler integration. Due to the use of such a numerical method, it’s an approximation of the system’s exact continuous-time response. The purpose of this simple simulation is to understand the effects of factors like that delta time (dt) and the time constant (tau) and how they affect a system’s response.

**Mathematical Model**

The system is described by the following first-order differential equation:


```math
\frac{dx}{dt} = \frac{u-x}{\tau}
```


