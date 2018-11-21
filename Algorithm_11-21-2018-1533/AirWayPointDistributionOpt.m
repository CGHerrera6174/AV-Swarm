function [assignedAirCPlist] = AirWayPointDistributionOpt(numOfAirObservPoints, AirObservPointList, AirDroneStartpoint,numOfAirDrones, AirDroneLocInMeters)
numberOfAirWayPoints = numOfAirObservPoints;
WayPointlist = AirObservPointList;
startpoint = AirDroneStartpoint;
numberOfAirDrones = numOfAirDrones;
AirDroneCoordinates = AirDroneLocInMeters(:, [2 3 4 1 6]);
airDroneIDs = AirDroneLocInMeters(:, 1);
format long;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AirWayPointDistribution:     This function takes a list of WayPoints,
% drone positions, and IDs to distribute the chckpoints amongs the drones
% through the use of sectors.
%
%
% INPUT FORMAT:     numberOfAirWayPoints = INTEGER;
%                   WayPointlist = [ 1lat 1long 1height;
%                                      2lat 2long 2height;
%                                      3lat 3long 3height;
%                                      ..................;
%                                      Nlat Nlong Nheight];
%                   startpoint = [SPlat SPlong SPheight]; %Calculated with
%                                              funtion 'startpointFinder.m'
%                   numberOfAirDrones = INTEGER;
%                   airDroneIDs = [ Drone1ID Drone2ID ... DroneNID ];
%
%
% OUTPUT FORMAT:
% assignedAirCPlist = [CP1lat, CP1long, CP1height, CP1angleFromSP, DroneID;
%                      CP2lat, CP2long, CP2height, CP2angleFromSP, DroneID;
%                      CP3lat, CP3long, CP3height, CP3angleFromSP, DroneID;
%                       .................................................
%                      CPNlat, CPNlong, CPNheight, CP1angleFromSP, DroneID]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% CALCULATE ANGLE FROM CHECK POINT TO STARTPOINT AND SORTS THEM
CPangnum = 0;
angle = 0;
angle = zeros(numberOfAirWayPoints,1);
for ListRow = 1 : numberOfAirWayPoints % GOES THROUGH EINTIRE LIST
    CPangnum = CPangnum +1 ; % IN RETROSPECT, THIS IS NOT NEEDED......
    if WayPointlist(ListRow,1) < startpoint(1,1) % IF CALCULATED ANGLE WILL BE +90deg to -90deg WHEN IT SHOULD BE FROM +90deg to 270deg
        adj = (WayPointlist(ListRow,2) - startpoint(1,2)); % CPlattitude - SPlattitude (lattitude diference)
        opp = WayPointlist(ListRow,3) - startpoint(1,1);  % CPlongitude - SPlongitude (longitude diference)
        angle(CPangnum,1) = rad2deg(atan(opp/adj))+180; % CALCULATED ANGLE PLUS 180deg
    else % FOR WHEN CALCULATED ANGLE WILL BE BETWEEN -90deg to +90deg
        adj = (WayPointlist(ListRow,2) - startpoint(1,2));
        opp = WayPointlist(ListRow,3) - startpoint(1,1);
        angle(CPangnum,1) = rad2deg(atan(opp/adj));
    end
end
% COMBINES WayPoint LAT, LONG, HEIGHT, AND ANGLE FROM STARTPOINT
UnsortedWayPointlist = [WayPointlist angle];
airCPlist = sortrows(UnsortedWayPointlist,7); % Check points sorted from right to left based off angle


% %%%%%%%%%%%%%%%% CAN BE USED TO SHOW ORDER OF OBSERVATION POINTS%%%%%%%%%%%%%%%%%%%%%%%%%%
% for n = 1 : numberOfAirWayPoints
%     plot3(airCPlist(n,2),airCPlist(n,3),airCPlist(n,4),'xg','Linewidth',6)
%     pause(.1)
% end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ASSIGN DRONES TO WayPointS
% START OF GROUND VEHICLE ASSIGNING
[ax ay ] = size(airCPlist);

equalAirDistrib = floor(ax/numberOfAirDrones);  % How many Check points per drone
remAirDistrib = rem(ax,numberOfAirDrones);      % Remaining check point to be added to last drone

airCPassign = [airCPlist zeros(ax,1)]; % Empty array attached to matrix for drone assignment

% ASSIGNS DRONES TO WayPointS "EVENLY" FROM RIGHT TO LEFT
assignedAirCPlist = zeros(numberOfAirWayPoints,8);
droneID = airDroneIDs;
droneIDlistPos = 0;
listnum = 0;
for ACPAnum = 1 : numberOfAirDrones    % GCPAnum: Air WayPoint Assignment number
    droneIDlistPos = droneIDlistPos +1;
    for ACPAnum2 = 1 : equalAirDistrib
        listnum = listnum + 1;
        assignedAirCPlist(listnum,[1 2 3 4 5 6 7]) = airCPassign(listnum,[1 2 3 4 5 6 7]);
        assignedAirCPlist(listnum,8) = droneID(droneIDlistPos,1);
        if listnum == (ax)
            listnum = listnum -1;
        end
    end
    if remAirDistrib ~= 0
        listnum = listnum + 1;
        assignedAirCPlist(listnum,[1 2 3 4 5 6 7]) = airCPassign(listnum,[1 2 3 4 5 6 7]);
        assignedAirCPlist(listnum,8) = droneID(droneIDlistPos,1);
        remAirDistrib = remAirDistrib - 1;
        if listnum == (ax)
            listnum = listnum -1;
        end
    end

end

%% REORDERS PATH OF WayPointS ASSIGNED TO DRONE
C = 1;
D= 0;


DroneNum = 0;
for optCycle = 1 : numberOfAirDrones
    CurrentDroneID = airDroneIDs (optCycle,1);
    m = 0;
    for n = 1 : numberOfAirWayPoints
        if (CurrentDroneID == assignedAirCPlist(n,8))
            m = m + 1;
            UnsortedGrouping(m,:) = assignedAirCPlist(n,:);
        end
        UnsortedGrouping = UnsortedGrouping(1:m,:);
    end
    
    A00 = size(UnsortedGrouping);
    
    for i = 1 : A00(1,1)
        UnsortedGrouping(i,9) = i;  
    end
    A01 = size(UnsortedGrouping);
    L = A01(1,1);
    listLatextract(1:L,1) = UnsortedGrouping(:,2);
    listLongextract(1:L,1) = UnsortedGrouping(:,3);    
    listHeightextract(1:L,1) = UnsortedGrouping(:,4);
    
    % Extracts Lat Long CoOrdinates for Traveling Salesman Lagorithm
    userConfig.xy          = [ listLongextract listLatextract];
    userConfig.dmat        = []; % Creates dynamic matrix
    userConfig.popSize     = L;
    userConfig.numIter     = 1e3;
    userConfig.dronenum    = optCycle;
    userConfig.droneID    = UnsortedGrouping(1,8);
    

    
    PointsPerDrone = numberOfAirWayPoints/numberOfAirDrones;
    if (PointsPerDrone <= 50)
        userConfig.numIter     = 1.55e3;
    end    
    if (PointsPerDrone <= 175) && (PointsPerDrone >= 50)
        userConfig.numIter     = 1.45e4;
    end
    if PointsPerDrone > 175
        userConfig.numIter     = .2e5;
    end
    userConfig.showProg    = true;
    userConfig.showResult  = false;
    
    resultStruct = tsp_ga(userConfig);
    resultStruct.optRoute;
    
    % ASSIGNS WayPointS IN ORDER SPECIFIED BY TRAVELING SALESMAN ALGORITHM
    A02 = size(UnsortedGrouping);
    UGLength =A02(1,1);
    for m =1 : UGLength        
        for n =1 : UGLength
            if (resultStruct.optRoute(1,m) == UnsortedGrouping(n,9))
                temp(m,:) = [UnsortedGrouping(n,[1 2 3 4 5 6 7 8 9])];           
            end
        end
    end   
    
    %% FINDS OBSERVATION POINT CLOSEST TO THE DRONE
    CurrentDronePos = AirDroneCoordinates(optCycle,:);
    Abc = size(temp);
    tempLength = Abc(1,1);
    for m = 1 : tempLength
        a = (CurrentDronePos(1,1) -  temp(m,3))^2;
        b = (CurrentDronePos(1,2) -  temp(m,2))^2;
        distance(m,1) = sqrt(a + b);
        
    end
    % REORDERS THE OPTIMIZED OBSERVATION POINT LIST SO CLOSEST ONE IS FIRST
    temp2 = [temp distance];
    closestCP = min(distance);
    A = size(temp2);
    n = 0;
    for m = 1 : A(1,1)
        n = n +1;
        if temp2(m,10) == closestCP
            foundit = n;
        end      
    end
    
   if foundit == 1
        temp3 = temp2;                
   end
   if foundit > 1
        temp3 = [ temp2(foundit:A(1,1),:);
                  temp2(1:foundit-1,:)];                 
   end
    
    D = D + L;
    SortedGrouping = temp3;
    SortedGroupList(C:D,:) = SortedGrouping(1:L,1:9);
    C = C + L;


    SortedGrouping = [];
    UnsortedGrouping = [];  % Resets Matrix Size
    listLatextract  = [];   % Resets Matrix Size
    listLongextract = [];   % Resets Matrix Size
    listHeightextract = [];
    temp2 = [];
    temp = [];
    distance = [];
end
assignedAirCPlist = [SortedGroupList(:,[1 2 3 4 5 6 7 8])];

end