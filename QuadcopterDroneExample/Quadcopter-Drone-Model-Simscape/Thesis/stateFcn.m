function x_nxt = stateFcn(x,u)

dt = 0.01;

% states
pos = x(1:3);
vel = x(4:6);
rpy = x(7:9);    % euler
phi = rpy(1);
theta = rpy(2);
psi = rpy(3);
w = x(10:12);   % angular velocity

km = 0.01; % drag/torque coefficient
l = 0.2145; 

f1 = u(1);
f2 = u(2);
f3 = u(3);
f4 = u(4);
lx = l/sqrt(2);

T = f1+f2+f3+f4;
tau_x = lx*(-f1 + f2 - f3 + f4);
tau_y = lx*(-f1 -f2 + f3 + f4);
tau_z = km*(f1 - f2 - f3 + f4);
tau = [tau_x; tau_y; tau_z];

% inertia info
Ix = 0.003423567695283;
Iy = 0.003473705010198;
Iz = 0.006282822397425;
I = diag([Ix Iy Iz]);
m = 1.2726;
g = 9.80665;

% rotation
RotMat = eul2rotm([psi, theta, phi], 'ZYX');

% translation dynamics
accel = (RotMat*[0;0;T])/m + [0;0;-g];
pos = pos + vel*dt + 0.5*accel*dt^2;
vel = vel + accel*dt;

% rotational dynamics
cos_theta = cos(theta);
if abs(cos_theta) < 1e-6
    cos_theta = sign(cos_theta) * 1e-6;
end

omega = [
    1  sin(phi)*tan(theta)  cos(phi)*tan(theta)
    0  cos(phi)             -sin(phi)
    0  sin(phi)/cos_theta   cos(phi)/cos_theta
    ];

rpy_dot = omega*w;
rpy = rpy + rpy_dot*dt;

% rotational dynamics
w_dot = I \ (tau - cross(w, I * w));
w = w + w_dot * dt;

% Wrap angles
rpy = wrapToPi(rpy);

% next state
x_nxt = [
    pos 
    vel 
    rpy
    w
    ];
end