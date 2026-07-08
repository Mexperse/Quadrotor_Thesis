%% Model name
model = 'quadcopter_package_delivery';

% Operating point object
opspec = operspec(model);
%% Setting the constraints on states

% State 1:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(1).x = 0;
opspec.States(1).SteadyState = false;
opspec.States(1).Known = false;

% State 2:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(2).x = 0;
opspec.States(2).SteadyState = false;
opspec.States(2).Known = false;

% State 3:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(3).x = 10;
opspec.States(3).Known = true;
opspec.States(3).SteadyState = false;

% State 4:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(4).x = 0;
opspec.States(4).Known = true;
opspec.States(4).SteadyState = true;

% State 5:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(5).x = 0;
opspec.States(5).Known = true;
opspec.States(5).SteadyState = true;

% State 6:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Cartesian Joint
opspec.States(6).x = 0;
opspec.States(6).Known = true;
opspec.States(6).SteadyState = true;

% State 7:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Spherical Joint
opspec.States(7).Known = [false;true;true;true];

% State 8:quadcopter_package_delivery/Quadcopter/6 DOF/Joints/Spherical Joint
opspec.States(8).x = [0, 0, 0];
opspec.States(8).SteadyState = [true, true, true];
%% Set the constraints on the input

opspec.Inputs(1).u = 12.47994279;
opspec.Inputs(1).Known = false;
%% Setting the output constraints

% Output (1) - quadcopter_package_delivery/Out1
opspec.Outputs(1).y = [0;0;10;0;0;0];
opspec.Outputs(1).Known = [false;false;true;false;false;false];
%% Find the new trim operating point using these constraints
op_trim7 = findop('quadcopter_package_delivery', opspec);

% inearize the model around this 10m hover point
sys = linearize('quadcopter_package_delivery', op_trim7);