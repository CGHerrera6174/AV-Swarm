clear all;
close all;
clc;
format long;

AirDroneSpeed = .5;
GroundDroneSpeed = .25;

fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
C_text0 = textscan(fileID2,'%s');
fclose(fileID2);

a = C_text0{1,1};
inputDataLength = length(a);
coolA =erase(a,',');
NumberOfAirCraft = str2num(coolA{2,1});
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




%% SIMULATION
MissionComplete = 0;
t = 0;
extraSimTime = 0;
while(MissionComplete == 0)&&(extraSimTime<=10)
    
    Time01 = clock;
    Time02 = round(Time01(1,6)*100)/100;
    Timing = rem(Time02,10);
    if (Timing >= 1) && (Timing <= 8)&& (t ~= 0)
        
        DroneData = [];
        ObservPointData = [];
        ObservPointsLeftToInspect = [];
        CurrentAirDronePos = [];
        %% PULLS INFORMATION FROM TXT DOCUMENT
        fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
        C_text0 = textscan(fileID2,'%s');
        fclose(fileID2);
        
        a = C_text0{1,1};
        inputDataLength = length(a);
        coolA =erase(a,',');
        NumberOfAirCraft = str2num(coolA{2,1});
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
        
        
    end
    
    
    
    %% SIMULATION PORTION THAT UPDATES STUFF AND STUFF
    if mean(ObservPointData(:,9)) ~= 1;
        MissionComplete = 0;
    elseif mean(ObservPointData(:,9)) == 1;
        MissionComplete = 1
        extraSimTime = extraSimTime + 1;
    end
    
    if NumberOfAirDrones ~= 0
        for n = 1 : NumberOfAirDrones
            nextDrone = 0;
            
            for m = 1 : 1 : NumberOfObservPoints
                
                if ((CurrentAirDronePos(n,1)== ObservPointData(m,7) && (ObservPointData(m,9)==0) && (nextDrone==0)))
                    NextObjective = ObservPointData(m,:);
                    nextDrone = 1;
                    if (NextObjective(1,2) - CurrentAirDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) >= 0)
                        OppLatt = NextObjective(1,2) - CurrentAirDronePos(n,2);
                        AdjLong = NextObjective(1,3) - CurrentAirDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = (AirDroneSpeed)*sin(deg2rad(theta));
                        AdjLon2Add = (AirDroneSpeed)*cos(deg2rad(theta));
                        TempLat2Add = CurrentAirDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) + AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) >= 0)
                        OppLatt = CurrentAirDronePos(n,2) - NextObjective(1,2);
                        AdjLong = NextObjective(1,3) - CurrentAirDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) + AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) <= 0)
                        OppLatt = CurrentAirDronePos(n,2) - NextObjective(1,2);
                        AdjLong = CurrentAirDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) - AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) <= 0)
                        OppLatt = NextObjective(1,2) - CurrentAirDronePos(n,2);
                        AdjLong = CurrentAirDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) - AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    end
                    if (NextObjective(1,4) > CurrentAirDronePos(n,4))
                        OppHeight = NextObjective(1,4) - CurrentAirDronePos(n,4);
                        HypotAdj = sqrt((OppLatt)^2 + (AdjLong)^2);
                        thetaHeight = rad2deg(atan(OppHeight/HypotAdj));
                        OppHeight2Add = ((AirDroneSpeed)*sin(deg2rad(thetaHeight)));
                        TempHeight2Add = CurrentAirDronePos(n,4) + OppHeight2Add;
                        CurrentAirDronePos(n,4) = TempHeight2Add;
                    end
                    if (NextObjective(1,4) <= CurrentAirDronePos(n,4))
                        OppHeight = CurrentAirDronePos(n,4) - NextObjective(1,4);
                        HypotAdj = sqrt((OppLatt)^2 + (AdjLong)^2);
                        thetaHeight = rad2deg(atan(OppHeight/HypotAdj));
                        OppHeight2Add = ((AirDroneSpeed)*sin(deg2rad(thetaHeight)));
                        TempHeight2Add = CurrentAirDronePos(n,4) - OppHeight2Add;
                        CurrentAirDronePos(n,4) = TempHeight2Add;
                    end
                    
                    if (abs(ObservPointData(m,2) - CurrentAirDronePos(n,2)) <= .3) && (abs(ObservPointData(m,3) - CurrentAirDronePos(n,3)) <= .3) && (abs(ObservPointData(m,4) - CurrentAirDronePos(n,4)) <= .3)
                        ObservPointData(m,9) = 1;
                    end
                    
                end
            end
            
            hold off
            aa = 0;
            for a = 1 : NumberOfObservPoints
                if ObservPointData(a,9) == 0
                    aa = aa + 1;
                    ObservPointsLeftToInspect(aa,:) = ObservPointData(a,:);
                end
            end
        end
    end
    if NumberOfGroundDrones ~= 0
        for n = 1 : NumberOfGroundDrones
            nextDrone = 0;
            for m = 1 : 1 : NumberOfObservPoints
                if ((CurrentGroundDronePos(n,1)== ObservPointData(m,7) && (ObservPointData(m,9)==0) && (nextDrone==0)))
                    NextObjective = ObservPointData(m,:);
                    nextDrone = 1;
                    if (NextObjective(1,2) - CurrentGroundDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) >= 0)
                        OppLatt = NextObjective(1,2) - CurrentGroundDronePos(n,2);
                        AdjLong = NextObjective(1,3) - CurrentGroundDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = (GroundDroneSpeed)*sin(deg2rad(theta));
                        AdjLon2Add = (GroundDroneSpeed)*cos(deg2rad(theta));
                        TempLat2Add = CurrentGroundDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) + AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) >= 0)
                        OppLatt = CurrentGroundDronePos(n,2) - NextObjective(1,2);
                        AdjLong = NextObjective(1,3) - CurrentGroundDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) + AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) <= 0)
                        OppLatt = CurrentGroundDronePos(n,2) - NextObjective(1,2);
                        AdjLong = CurrentGroundDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) - AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) <= 0)
                        OppLatt = NextObjective(1,2) - CurrentGroundDronePos(n,2);
                        AdjLong = CurrentGroundDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) - AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    end
                    
                    if (abs(ObservPointData(m,2) - CurrentGroundDronePos(n,2)) <= .3) && (abs(ObservPointData(m,3) - CurrentGroundDronePos(n,3)) <= .3)
                        ObservPointData(m,9) = 1;
                    end
                    
                end
            end
        end
        hold off
        aa = 0;
        ObservPointsLeftToInspect = [];
        for a = 1 : NumberOfObservPoints
            if ObservPointData(a,9) == 0
                aa = aa + 1;
                ObservPointsLeftToInspect(aa,:) = ObservPointData(a,:);
            end
        end
    end
    
    %% CONVERTS METER COORDINTES VALUES TO DEGREE
    xx = ObservPointData(:,3);
    yy = ObservPointData(:,2);
    utmzone = ObservUTMzone;
    [Lat,Lon] = utm2deg(xx,yy,utmzone);
    ObservPointData(:,3) = Lon;
    ObservPointData(:,2) = Lat;
    
    if length(ObservPointsLeftToInspect) ~= 0
        xx = ObservPointsLeftToInspect(:,3);
        yy = ObservPointsLeftToInspect(:,2);
        utmzoneM1 = ['18 s'];
        for n = 1 : length(yy(:,1))
            utmzoneM1(n,:) = ObservUTMzone(1,:);
        end
        utmzone = (utmzoneM1);
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        ObservPointsLeftToInspect(:,3) = Lon;
        ObservPointsLeftToInspect(:,2) = Lat;
    end
    
    if NumberOfAirDrones ~= 0
        xx = CurrentAirDronePos(:,3);
        yy = CurrentAirDronePos(:,2);
        utmzone = DroneUTMzoneAir;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        CurrentAirDronePos(:,3) = Lon;
        CurrentAirDronePos(:,2) = Lat;
    end
    if NumberOfGroundDrones ~= 0
        xx = CurrentGroundDronePos(:,3);
        yy = CurrentGroundDronePos(:,2);
        utmzone = DroneUTMzoneGround;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        CurrentGroundDronePos(:,3) = Lon;
        CurrentGroundDronePos(:,2) = Lat;
    end
    
    if length(ObservPointsLeftToInspect) ~= 0
        plot3(ObservPointsLeftToInspect(:,2),ObservPointsLeftToInspect(:,3),ObservPointsLeftToInspect(:,4),'+r')
    end
    hold on
    if NumberOfAirDrones ~= 0
        plot3(CurrentAirDronePos(:,2),CurrentAirDronePos(:,3),CurrentAirDronePos(:,4),'*b')
        text(CurrentAirDronePos(:,2),CurrentAirDronePos(:,3),CurrentAirDronePos(:,4),num2str(CurrentAirDronePos(:,1)));
    end
    if NumberOfGroundDrones ~=0
        plot3(CurrentGroundDronePos(:,2),CurrentGroundDronePos(:,3),CurrentGroundDronePos(:,4),'*','color',[0.65 0 0],'linewidth',2)
        text(CurrentGroundDronePos(:,2),CurrentGroundDronePos(:,3),CurrentGroundDronePos(:,4),num2str(CurrentGroundDronePos(:,1)));
        
    end
    view(90,-90)
    axis equal tight
    drawnow
    hold off
    
    if (NumberOfAirDrones ~= 0) && (NumberOfGroundDrones ~= 0)
        droneLocTemp = [CurrentAirDronePos ; CurrentGroundDronePos];
    elseif (NumberOfAirDrones == 0) && (NumberOfGroundDrones ~= 0)
        droneLocTemp = [CurrentGroundDronePos]  ;  
    elseif (NumberOfAirDrones ~= 0) && (NumberOfGroundDrones == 0)
        droneLocTemp = [CurrentAirDronePos];
    end
    DroneData = droneLocTemp;
    
    Time01 = clock;
    Time02 = round(Time01(1,6)*100)/100;
    Timing = rem(Time02,10);
    if (Timing >= 1) && (Timing <= 9)
        Dist_List_Text4 = fopen('Observation_Point_Distribution_Version4.txt','w');
        fprintf(Dist_List_Text4, 'Number_Of_Aircraft, %d, \t Number_Of_Air_Drones, %d, \t Number_Of_Ground_Drones, %d, \t Number_of_Observ_Points, %d\r\n', ...
            NumberOfAirCraft,NumberOfAirDrones,NumberOfGroundDrones,NumberOfObservPoints);
        fprintf(Dist_List_Text4,'DroneID, \t DroneLat, \t\t DroneLon, \t\t DroneHeight, \t DroneType \r\n');
        
        for n = 1 : length(DroneData(:,1))
            fprintf(Dist_List_Text4,'%d, \t\t %f, \t %f, \t\t %f, \t %d, \r\n',DroneData(n,1),DroneData(n,2),...
                DroneData(n,3),DroneData(n,4),DroneData(n,5));
        end
        
        fprintf(Dist_List_Text4, 'Aircraft_ID \t OP_Lattitude \t OP_Longitude \t');
        fprintf(Dist_List_Text4, ' OP_Height \t Cam_Azimuth \t Cam_Angle \t');
        fprintf(Dist_List_Text4, ' Assigned_Drone \t Drone_Type \t Inspected \t Error \r\n');
        
        A2 = size(ObservPointData);
        OPListSize =A2(1,1);
        for n = 1 : OPListSize
            fprintf(Dist_List_Text4, '%d,\t\t %4.8f,\t %4.8f,\t %4.6f,\t %4.8f,\t %4.8f,\t   %d,\t\t   %d,\t\t   %d,\t\t   %d, \r\n',...
                ObservPointData(n,1),ObservPointData(n,2),ObservPointData(n,3),ObservPointData(n,4),ObservPointData(n,5),...
                ObservPointData(n,6),ObservPointData(n,7),ObservPointData(n,8),ObservPointData(n,9),ObservPointData(n,10));
        end
        fclose(Dist_List_Text4);
    end
    
    if length(ObservPointsLeftToInspect) ~= 0
        Lat = ObservPointsLeftToInspect(:,2);
        Lon = ObservPointsLeftToInspect(:,3);
        [x,y,utmzone] = deg2utm(Lat,Lon);
        
        ObservPointsLeftToInspect(:,2) = y;
        ObservPointsLeftToInspect(:,3) = x;
    end
    Lat = DroneData(:,2);
    Lon = DroneData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    
    DroneData(:,2) = y;
    DroneData(:,3) = x;
    
    % CONVERTS DEGREES TO METERS
    Lat = ObservPointData(:,2);
    Lon = ObservPointData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    ObservUTMzone = utmzone;
    ObservPointData(:,2) = y;
    ObservPointData(:,3) = x;
    i = 0;
    k = 0;
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
    
    t = t + 1; %counts number of cycles
end

MissionComplete = 0;
pause(10)
% JustDance = 1;

while(MissionComplete == 0)%||(JustDance == 0)
    
    Time01 = clock;
    Time02 = round(Time01(1,6)*100)/100;
    Timing = rem(Time02,10);
    if (Timing >= 1) && (Timing <= 8)&& (t ~= 0)
        
        DroneData = [];
        ObservPointData = [];
        ObservPointsLeftToInspect = [];
        CurrentAirDronePos = [];
        %% PULLS INFORMATION FROM TXT DOCUMENT
        fileID2 = fopen('Observation_Point_Distribution_Version4.txt');
        C_text0 = textscan(fileID2,'%s');
        fclose(fileID2);
        
        a = C_text0{1,1};
        inputDataLength = length(a);
        coolA =erase(a,',');
        NumberOfAirCraft = str2num(coolA{2,1});
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
        for n = 1 : NumberOfAirDrones+NumberOfGroundDrones
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
        
        
    end
    
    
    
    %% SIMULATION PORTION THAT UPDATES STUFF AND STUFF
    if mean(ObservPointData(:,9)) ~= 1;
        MissionComplete = 0;
    elseif mean(ObservPointData(:,9)) == 1;
        MissionComplete = 1
    end
    
    if NumberOfAirDrones ~= 0
        for n = 1 : NumberOfAirDrones
            nextDrone = 0;
            
            for m = 1 : 1 : NumberOfObservPoints
                
                if ((CurrentAirDronePos(n,1)== ObservPointData(m,7) && (ObservPointData(m,9)==0) && (nextDrone==0)))
                    NextObjective = ObservPointData(m,:);
                    nextDrone = 1;
                    if (NextObjective(1,2) - CurrentAirDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) >= 0)
                        OppLatt = NextObjective(1,2) - CurrentAirDronePos(n,2);
                        AdjLong = NextObjective(1,3) - CurrentAirDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = (AirDroneSpeed)*sin(deg2rad(theta));
                        AdjLon2Add = (AirDroneSpeed)*cos(deg2rad(theta));
                        TempLat2Add = CurrentAirDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) + AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) >= 0)
                        OppLatt = CurrentAirDronePos(n,2) - NextObjective(1,2);
                        AdjLong = NextObjective(1,3) - CurrentAirDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) + AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) <= 0)
                        OppLatt = CurrentAirDronePos(n,2) - NextObjective(1,2);
                        AdjLong = CurrentAirDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) - AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentAirDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentAirDronePos(n,3) <= 0)
                        OppLatt = NextObjective(1,2) - CurrentAirDronePos(n,2);
                        AdjLong = CurrentAirDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((AirDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((AirDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentAirDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentAirDronePos(n,3) - AdjLon2Add;
                        CurrentAirDronePos(n,2) = TempLat2Add;
                        CurrentAirDronePos(n,3) = TempLon2Add;
                    end
                    if (NextObjective(1,4) > CurrentAirDronePos(n,4))
                        OppHeight = NextObjective(1,4) - CurrentAirDronePos(n,4);
                        HypotAdj = sqrt((OppLatt)^2 + (AdjLong)^2);
                        thetaHeight = rad2deg(atan(OppHeight/HypotAdj));
                        OppHeight2Add = ((AirDroneSpeed)*sin(deg2rad(thetaHeight)));
                        TempHeight2Add = CurrentAirDronePos(n,4) + OppHeight2Add;
                        CurrentAirDronePos(n,4) = TempHeight2Add;
                    end
                    if (NextObjective(1,4) <= CurrentAirDronePos(n,4))
                        OppHeight = CurrentAirDronePos(n,4) - NextObjective(1,4);
                        HypotAdj = sqrt((OppLatt)^2 + (AdjLong)^2);
                        thetaHeight = rad2deg(atan(OppHeight/HypotAdj));
                        OppHeight2Add = ((AirDroneSpeed)*sin(deg2rad(thetaHeight)));
                        TempHeight2Add = CurrentAirDronePos(n,4) - OppHeight2Add;
                        CurrentAirDronePos(n,4) = TempHeight2Add;
                    end
                    
                    if (abs(ObservPointData(m,2) - CurrentAirDronePos(n,2)) <= .3) && (abs(ObservPointData(m,3) - CurrentAirDronePos(n,3)) <= .3) && (abs(ObservPointData(m,4) - CurrentAirDronePos(n,4)) <= .3)
                        ObservPointData(m,9) = 1;
                    end
                    
                end
            end
            
            hold off
            aa = 0;
            for a = 1 : NumberOfObservPoints
                if ObservPointData(a,9) == 0
                    aa = aa + 1;
                    ObservPointsLeftToInspect(aa,:) = ObservPointData(a,:);
                end
            end
        end
    end
    if NumberOfGroundDrones ~= 0
        for n = 1 : NumberOfGroundDrones
            nextDrone = 0;
            for m = 1 : 1 : NumberOfObservPoints
                if ((CurrentGroundDronePos(n,1)== ObservPointData(m,7) && (ObservPointData(m,9)==0) && (nextDrone==0)))
                    NextObjective = ObservPointData(m,:);
                    nextDrone = 1;
                    if (NextObjective(1,2) - CurrentGroundDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) >= 0)
                        OppLatt = NextObjective(1,2) - CurrentGroundDronePos(n,2);
                        AdjLong = NextObjective(1,3) - CurrentGroundDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = (GroundDroneSpeed)*sin(deg2rad(theta));
                        AdjLon2Add = (GroundDroneSpeed)*cos(deg2rad(theta));
                        TempLat2Add = CurrentGroundDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) + AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) >= 0)
                        OppLatt = CurrentGroundDronePos(n,2) - NextObjective(1,2);
                        AdjLong = NextObjective(1,3) - CurrentGroundDronePos(n,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) + AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) <= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) <= 0)
                        OppLatt = CurrentGroundDronePos(n,2) - NextObjective(1,2);
                        AdjLong = CurrentGroundDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) - OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) - AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    elseif(NextObjective(1,2) - CurrentGroundDronePos(n,2) >= 0) && (NextObjective(1,3) - CurrentGroundDronePos(n,3) <= 0)
                        OppLatt = NextObjective(1,2) - CurrentGroundDronePos(n,2);
                        AdjLong = CurrentGroundDronePos(n,3) - NextObjective(1,3);
                        theta = rad2deg(atan(OppLatt/AdjLong));
                        OppLat2Add = ((GroundDroneSpeed)*sin(deg2rad(theta)));
                        AdjLon2Add = ((GroundDroneSpeed)*cos(deg2rad(theta)));
                        TempLat2Add = CurrentGroundDronePos(n,2) + OppLat2Add;
                        TempLon2Add = CurrentGroundDronePos(n,3) - AdjLon2Add;
                        CurrentGroundDronePos(n,2) = TempLat2Add;
                        CurrentGroundDronePos(n,3) = TempLon2Add;
                    end
                    
                    if (abs(ObservPointData(m,2) - CurrentGroundDronePos(n,2)) <= .3) && (abs(ObservPointData(m,3) - CurrentGroundDronePos(n,3)) <= .3)
                        ObservPointData(m,9) = 1;
                    end
                    
                end
            end
        end
        hold off
        aa = 0;
        ObservPointsLeftToInspect = [];
        for a = 1 : NumberOfObservPoints
            if ObservPointData(a,9) == 0
                aa = aa + 1;
                ObservPointsLeftToInspect(aa,:) = ObservPointData(a,:);
            end
        end
    end
    
    %% CONVERTS COORDINTES VALUES TO DEGREE
    xx = ObservPointData(:,3);
    yy = ObservPointData(:,2);
    utmzone = ObservUTMzone;
    [Lat,Lon] = utm2deg(xx,yy,utmzone);
    ObservPointData(:,3) = Lon;
    ObservPointData(:,2) = Lat;
    
    if length(ObservPointsLeftToInspect) ~= 0
        xx = ObservPointsLeftToInspect(:,3);
        yy = ObservPointsLeftToInspect(:,2);
        utmzoneM1 = ['18 s'];
        for n = 1 : length(yy(:,1))
            utmzoneM1(n,:) = ObservUTMzone(1,:);
        end
        utmzone = (utmzoneM1);
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        ObservPointsLeftToInspect(:,3) = Lon;
        ObservPointsLeftToInspect(:,2) = Lat;
    end
    
    if NumberOfAirDrones ~= 0
        xx = CurrentAirDronePos(:,3);
        yy = CurrentAirDronePos(:,2);
        utmzone = DroneUTMzoneAir;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        CurrentAirDronePos(:,3) = Lon;
        CurrentAirDronePos(:,2) = Lat;
    end
    if NumberOfGroundDrones ~= 0
        xx = CurrentGroundDronePos(:,3);
        yy = CurrentGroundDronePos(:,2);
        utmzone = DroneUTMzoneGround;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        CurrentGroundDronePos(:,3) = Lon;
        CurrentGroundDronePos(:,2) = Lat;
    end
    
    if length(ObservPointsLeftToInspect) ~= 0
        plot3(ObservPointsLeftToInspect(:,2),ObservPointsLeftToInspect(:,3),ObservPointsLeftToInspect(:,4),'+r')
    end
    hold on
    if NumberOfAirDrones ~= 0
        plot3(CurrentAirDronePos(:,2),CurrentAirDronePos(:,3),CurrentAirDronePos(:,4),'*b')
        text(CurrentAirDronePos(:,2),CurrentAirDronePos(:,3),CurrentAirDronePos(:,4),num2str(CurrentAirDronePos(:,1)));
    end
    if NumberOfGroundDrones ~=0
        plot3(CurrentGroundDronePos(:,2),CurrentGroundDronePos(:,3),CurrentGroundDronePos(:,4),'*','color',[0.65 0 0],'linewidth',2)
        text(CurrentGroundDronePos(:,2),CurrentGroundDronePos(:,3),CurrentGroundDronePos(:,4),num2str(CurrentGroundDronePos(:,1)));
        
    end
    view(90,-90)
    axis equal tight
    drawnow
    hold off
    
    if (NumberOfAirDrones ~= 0) && (NumberOfGroundDrones ~= 0)
        droneLocTemp = [CurrentAirDronePos ; CurrentGroundDronePos];
    elseif (NumberOfAirDrones == 0) && (NumberOfGroundDrones ~= 0)
        droneLocTemp = [CurrentGroundDronePos]  ;  
    elseif (NumberOfAirDrones ~= 0) && (NumberOfGroundDrones == 0)
        droneLocTemp = [CurrentAirDronePos];
    end
    DroneData = droneLocTemp;
    
    Time01 = clock;
    Time02 = round(Time01(1,6)*100)/100;
    Timing = rem(Time02,10);
    if (Timing >= 1) && (Timing <= 9)
        Dist_List_Text4 = fopen('Observation_Point_Distribution_Version4.txt','w');
        fprintf(Dist_List_Text4, 'Number_Of_Aircraft, %d, \t Number_Of_Air_Drones, %d, \t Number_Of_Ground_Drones, %d, \t Number_of_Observ_Points, %d\r\n', ...
            NumberOfAirCraft,NumberOfAirDrones,NumberOfGroundDrones,NumberOfObservPoints);
        fprintf(Dist_List_Text4,'DroneID, \t DroneLat, \t\t DroneLon, \t\t DroneHeight, \t DroneType \r\n');
        
        for n = 1 : length(DroneData(:,1))
            fprintf(Dist_List_Text4,'%d, \t\t %f, \t %f, \t\t %f, \t %d, \r\n',DroneData(n,1),DroneData(n,2),...
                DroneData(n,3),DroneData(n,4),DroneData(n,5));
        end
        
        fprintf(Dist_List_Text4, 'Aircraft_ID \t OP_Lattitude \t OP_Longitude \t');
        fprintf(Dist_List_Text4, ' OP_Height \t Cam_Azimuth \t Cam_Angle \t');
        fprintf(Dist_List_Text4, ' Assigned_Drone \t Drone_Type \t Inspected \t Error \r\n');
        
        A2 = size(ObservPointData);
        OPListSize =A2(1,1);
        for n = 1 : OPListSize
            fprintf(Dist_List_Text4, '%d,\t\t %4.8f,\t %4.8f,\t %4.6f,\t %4.8f,\t %4.8f,\t   %d,\t\t   %d,\t\t   %d,\t\t   %d, \r\n',...
                ObservPointData(n,1),ObservPointData(n,2),ObservPointData(n,3),ObservPointData(n,4),ObservPointData(n,5),...
                ObservPointData(n,6),ObservPointData(n,7),ObservPointData(n,8),ObservPointData(n,9),ObservPointData(n,10));
        end
        fclose(Dist_List_Text4);
    end
    
    if length(ObservPointsLeftToInspect) ~= 0
        Lat = ObservPointsLeftToInspect(:,2);
        Lon = ObservPointsLeftToInspect(:,3);
        [x,y,utmzone] = deg2utm(Lat,Lon);
        
        ObservPointsLeftToInspect(:,2) = y;
        ObservPointsLeftToInspect(:,3) = x;
    end
    Lat = DroneData(:,2);
    Lon = DroneData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    
    DroneData(:,2) = y;
    DroneData(:,3) = x;
    
    Lat = ObservPointData(:,2);
    Lon = ObservPointData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    ObservUTMzone = utmzone;
    ObservPointData(:,2) = y;
    ObservPointData(:,3) = x;
    i = 0;
    k = 0;
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
    
    t = t + 1; %counts number of cycles
end