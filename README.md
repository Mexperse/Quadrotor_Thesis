# Quadrotor_Thesis

This work was completed using quadcopter_package_delivery example. Below is the repository tree:  
```
Quadrotor_Thesis/  
	|—QuadcopterDroneExample/  
      |—QuadcopterDroneExample.m  
      |—Quadcopter-Drone-Model-Simscape/  
         |—CAD/  
         |—Images/  
         |—Libraries/  
         |—Models/  
         |—Overview/  
         |—resources/  
         |—Scripts_Data/  
         |—Thesis/  
         |—work/  
         |—Workflows/
         |—.gitattributes  
         |—.gitignore  
         |—ControlSystemTunerSession1.mat  
         |—LICENSE.md  
         |—op_trim7_June.mat  
         |—Quadcopter_Drone.prj  
         |—README.md  
         |—SECURITY.md  
         |—sys4_June.mat  
```
MATLAB's quadcopter_package_delivery example structure
```
  Quadrotor_Thesis/
   |—QuadcopterDroneExample/
      |—QuadcopterDroneExample.m
      |—Quadcopter-Drone-Model-Simscape/
         |—CAD/
         |—Images/
         |—Libraries/
         |—Overview/
         |—resources/
         |—Scripts_Data/
         |—Workflows
         |—.gitattributes
         |—.gitignore
         |—LICENSE.md
         |—Quadcopter_Drone.prj
         |—README.md
         |—SECURITY.md
```
Author-developed files/structure
```
Quadrotor_Thesis/
   |—QuadcopterDroneExample/
      |—Quadcopter-Drone-Model-Simscape/
         |—Models/
         |—Thesis/
         |—work/
         |—ControlSystemTunerSession1.mat
         |—op_trim7_June.mat
         |—sys4_June.mat  
```


Project file containing all necessary files for reproducibility

To successfully run the project, do:
1.	Import the Quadrotor_Thesis/QuadcopterDroneExample/Quadcopter-Drone-Model-Simscape/op_trim7_June.mat file to MATLAB workspace
2.	Import the Quadrotor_Thesis/QuadcopterDroneExample/Quadcopter-Drone-Model-Simscape/sys4_June.mat file to MATLAB workspace
3.	Go to the Quadrotor_Thesis/QuadcopterDroneExample/Quadcopter-Drone-Model-Simscape/Thesis/ directory and run the following files:  
   a. waypoints1.m  
   b. LQR.m  
   c. covariance.m  
