clear all;
close all;
clc;

fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
C_text0 = textscan(fileID2,'%s');
fclose(fileID2);

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
figure('color','w')
plot3(ObservPointData(:,2),ObservPointData(:,3),ObservPointData(:,4),'*r')
hold on
plot3(DroneData(:,3),DroneData(:,2),DroneData(:,4),'+b')
hold off

%% MAKES TABLES OF GROUND AND AIR DRONES
i = 0;
k = 0;
Lat = DroneData(:,2);
Lon = DroneData(:,3);
[x,y,utmzone] = deg2utm(Lat,Lon);
DroneUTMzone = utmzone;
DroneData(:,2) = y;
DroneData(:,3) = x;
Lat = ObservPointData(:,3);
Lon = ObservPointData(:,2);
[x,y,utmzone] = deg2utm(Lat,Lon);
ObservUTMzone = utmzone;
ObservPointData(:,3) = y;
ObservPointData(:,2) = x;
plot3(ObservPointData(:,2),ObservPointData(:,3),ObservPointData(:,4),'*r')
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
CurrentAirDronePos = AirDrones;
CurrentGroundDronePos = GroundDrones;

%% SIMULATION
MissionComplete = 0;
t = 1;
while(MissionComplete == 0)
    for n = 1 : NumberOfObservPoints
        x = ObservPointData(n,9);
        if mean(ObservPointData(:,9)) ~= 1;
            MissionComplete = 0;
        elseif mean(ObservPointData(:,9)) == 1;
            MissionComplete = 1
        end
    end
    
    for n = 1 : NumberOfAirDrones
%         AirDroneMove = CurrentAirDronePos(n,[1 2 3 4 5]);
        nextDrone = 0;
        for m = 1 : NumberOfObservPoints
            if ((CurrentAirDronePos(n,1)== ObservPointData(m,7) && (ObservPointData(m,9)==0) && (nextDrone==0)))
                NextObjective = ObservPointData(m,:);
                nextDrone = 1;
                AdjLong = NextObjective(1,2) - CurrentAirDronePos(n,3);
                OppLatt = NextObjective(1,3) - CurrentAirDronePos(n,2);                
                if ((CurrentAirDronePos(n,3) <= 0) && (NextObjective(1,2) <= 0))
                    AdjLongN = abs(NextObjective(1,2)) - abs(CurrentAirDronePos(n,3));
                    AdjLong = (-1)*(AdjLongN)
                end
                if ((CurrentAirDronePos(n,2)  <= 0) && (NextObjective(1,3) <= 0 ))
                    OppLatt = abs(NextObjective(1,3)) - abs(CurrentAirDronePos(n,2) );
                end
                theta = rad2deg(atan(OppLatt/AdjLong))
                Lat = OppLatt;
                Lon = AdjLong;
                [x,y,utmzone] = deg2utm(Lat,Lon)
                %Find the lat to move in 1 meter per cylce
            end
        end
        
    end

    
    
    
    
    
    ObservPointData(t,9) = 1;
    t = t + 1;
    pause(.1)
end
1
















