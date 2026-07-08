function z_imu = measFcnIMU(x)

g = 9.80665;
rpy = x(7:9);
w = x(10:12);
phi   = rpy(1);
theta = rpy(2);
psi   = rpy(3);

RotMat = eul2rotm([psi, theta, phi], 'ZYX');

gravity = [0;0;-g];

% predicted acceleration
z_accel = RotMat' * gravity;

% predicted gyro
z_gyro = w;

mag_world = [
    0
    0
    1
    ];

mag_world = mag_world/norm(mag_world);

% conversion to body fame
z_mag = RotMat'*mag_world;

z_imu = [
    z_accel(1)
    z_accel(2)
    z_mag(3)
    z_gyro
    ];
end
