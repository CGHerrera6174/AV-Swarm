function [GroundDroneLocInMeters] = GrounddroneIDpositionSort(GroundDroneLocInMeters, GroundObservPointCenter);
AirDroneLocInMeters = GroundDroneLocInMeters;
AirObservPointCenter = GroundObservPointCenter;

% AirDroneLocInMeters(:,1)' = [11 10 63];
% AirDroneCoordinates = [ 06 05 0; 01 06 0; 20 02 0];
% numberOfAirDrones = length(AirDroneLocInMeters(:,1)'); % Number of Air Drones
% [9,3.666666666666667,0]

% zeroForList = zeros(length(AirDroneLocInMeters(:,1)'),1);
% compiledList = [ AirDroneCoordinates AirDroneLocInMeters(:,1)'.' zeroForList];
% 
% a = max(compiledList(:,1)) - min(compiledList(:,1)); % Subtracts lowest longitude from highest 
% b = max(compiledList(:,2)) - min(compiledList(:,2));
% 
% if ( a >= b)
%     c = sortrows(compiledList,-1); % sorts list from high longitude to low
%     for i = 2 : length(AirDroneLocInMeters(:,1)')
%         compiledList(i,5) = (sqrt((compiledList(i,1)-compiledList(1,1))^2 + (compiledList(i,2)-compiledList(1,2))^2));
%     end
% else
%     c = sortrows(compiledList,-2); % sorts list from high longitude to low
%     for i = 2 : length(AirDroneLocInMeters(:,1)')
%         compiledList(i,5) = (sqrt((compiledList(i,1)-compiledList(1,1))^2 + (compiledList(i,2)-compiledList(1,2))^2));
%     end
% end
% 
% sortedByPythagoris = sortrows(compiledList,-5);

%%%%%%%%%%%%%%%%%%%%%% TESTING CODE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
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
GroundDroneLocInMeters = AirDroneLocInMeters;


end