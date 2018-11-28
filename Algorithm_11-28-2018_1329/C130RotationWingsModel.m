function [FixedC130WingsX,FixedC130WingsY] = C130RotationWingsModel(C130Lattit,C130Longit,azimuth,FixedC130WingsX,FixedC130WingsY)
% define the x- and y-data for the original line we would like to rotate
x = FixedC130WingsX';
y = FixedC130WingsY';

% create a matrix of these points, which will be useful in future calculations
v = [x;y];

% choose a point which will be the center of rotation
x_center = C130Longit - .1511;
y_center = C130Lattit - 1.25;

% create a matrix which will be used later in calculations
center = repmat([x_center; y_center], 1, length(x));

% define a 60 degree counter-clockwise rotation matrix
theta = (-1)*azimuth*(pi/180);       % pi/3 radians = 60 degrees
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

% do the rotation...
s = v - center;     % shift points in the plane so that the center of rotation is at the origin
so = R*s;           % apply the rotation about the origin
vo = so + center;   % shift again so the origin goes back to the desired center of rotation

% pick out the vectors of rotated x- and y-data
x_rotated = vo(1,:);
y_rotated = vo(2,:);


FixedC130WingsX = x_rotated;
FixedC130WingsY = y_rotated ;

end
