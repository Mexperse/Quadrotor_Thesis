function z_gps = measFcnGPS(x)
    
    position = x(1:3);
    velocity = x(4:6);
    
    z_gps = [
        position
        velocity
        ];
end