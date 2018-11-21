% distance calculations test
clear all
close all
clc


fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
C_text0 = textscan(fileID2,'%s');
fclose(fileID2);
% toc % Elapsed time to open and read file is 0.003636 seconds.

a = C_text0{1,1};
inputDataLength = length(a);
coolA =erase(a,',');
NumberOfAircraft = str2num(coolA{2,1});
NumberOfAirDrones = str2num(coolA{4,1});
NumberOfGroundDrones = str2num(coolA{6,1});
NumberOfObservPoints = str2num(coolA{8,1});
i = 13;
for n = 1 : (NumberOfAirDrones+NumberOfGroundDrones)
    for m = 1 : 5
        i = i + 1;
        DroneData(n,m) = str2num(coolA{i,1});
    end
end
i = i + 10;
for n = 1 : NumberOfObservPoints
    for m = 1 : 10
        i = i +1;
        ObservPointData(n,m) = str2num(coolA{i,1});
    end
end

%% MAKES TABLES OF GROUND AND AIR DRONES
i = 0;
k = 0;

Lat = DroneData(:,2);
Lon = DroneData(:,3);
[x,y,utmzone] = deg2utm(Lat,Lon);
utmCount = 0;
utmAirCount = 0;
utmGroundCount = 0;
for n = 1 : NumberOfAirDrones + NumberOfGroundDrones
    utmCount = utmCount + 1;
    if DroneData(n,5) == 2
        utmAirCount = utmAirCount + 1;
        DroneUTMzoneAir(utmAirCount,:) = utmzone(utmCount,:);
    elseif DroneData(n,5) == 3
        utmGroundCount = utmGroundCount + 1;
        DroneUTMzoneGround(utmGroundCount,:) = utmzone(utmCount,:);
    end
end
DroneData(:,2) = y;
DroneData(:,3) = x;

Lat = ObservPointData(:,2);
Lon = ObservPointData(:,3);
[x,y,utmzone] = deg2utm(Lat,Lon);
ObservUTMzone = utmzone;
ObservPointData(:,2) = y;
ObservPointData(:,3) = x;
for n = 1 : (NumberOfAirDrones+NumberOfGroundDrones)
    if DroneData(n,5) == 2;
        i = i + 1;
        AirDrones(i,:) = DroneData(n,[1 2 3 4 5]);
    end
    if DroneData(n,5) == 3;
        k = k + 1;
        GroundDrones(k,:) = DroneData(n,[1 2 3 4 5]);
    end
end
if NumberOfAirDrones ~= 0
    CurrentAirDronePos = AirDrones;
end
if NumberOfGroundDrones ~= 0
    CurrentGroundDronePos = GroundDrones;
end


CurrentAirDroneID = ObservPointData(1,7);
k = 1;
r = 1;
for n = 1 : NumberOfAirDrones
    i = 1;
    currentdronetable(i,:) = [CurrentAirDronePos(n,[1 2 3 4]),0,0,CurrentAirDronePos(n,1),CurrentAirDronePos(n,5),0,0]    
    for m = 1 : NumberOfObservPoints
        if (ObservPointData(m,7) == CurrentAirDroneID)
            i = i + 1;
            currentdronetable(i,:) = ObservPointData(m,:);            
        end
    end
    for L = 1 : length(currentdronetable(:,1))
        if L + 1 > length(currentdronetable(:,1))
            break;
        end
        Distance = sqrt((currentdronetable(L,2) - currentdronetable(L+1,2))^2 + (currentdronetable(L,3) - currentdronetable(L + 1,3))^2)
        TotAirDroneDistTable(L,1) = Distance;
        AirDroneDistTable(k,1) = Distance;
        AirDroneDistTable(k,[2 3 4 5 6]) = currentdronetable(L,[7 8 2 3 4])
        k = k + 1;
    end
    TotAirDroneDistances(r,1) = sum(TotAirDroneDistTable)
    r = r + 1;
    'test line 90'
end








