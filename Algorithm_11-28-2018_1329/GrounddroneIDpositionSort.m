function [GroundDroneLocInMeters] = GrounddroneIDpositionSort(GroundDroneLocInMeters, GroundObservPointCenter);
%% Sorts Drones depending on where their center point is compared to the observation points. Hopefully to prevent collision at the begining
% angle between each drone and drone center point is calculated. If the
% drone center point is west of Observation point Center, the drones are
% sorted by their angles in descending order. If east of observ point
% center they are ordered in ascending order

%% Same as air code so this is a conversion for it to be used by the ground
AirDroneLocInMeters = GroundDroneLocInMeters;
AirObservPointCenter = GroundObservPointCenter;



zeroForList = zeros(length(AirDroneLocInMeters(:,1)'),1);
compiledList = [ AirDroneLocInMeters zeroForList];
Sx = min(compiledList(:,3));
Sy = mean(compiledList(:,2));
for n =1 : length(compiledList(:,1))
    
    compiledList(n,7) = rad2deg(atan( (AirDroneLocInMeters(n,2)-Sy)/(AirDroneLocInMeters(n,3)-Sx) ));
end

if (AirObservPointCenter(1,1) <= Sx)
    sortedByPythagoris = sortrows(compiledList,-7);
elseif (AirObservPointCenter(1,1) >= Sx)
    sortedByPythagoris = sortrows(compiledList,7);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AirDroneLocInMeters = sortedByPythagoris;

%% Same as air code so this is a conversion for the output to now be for ground
GroundDroneLocInMeters = AirDroneLocInMeters;


end