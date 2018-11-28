function  [ObsPointlist] = C130InitializationVisualization(ACLocInMeter)
    % C-130 LOCATION
    C130BUNO     = [ACLocInMeter(:,1)']; % Stores AC ID as variable that can be used in this function
    C130LattitM  = [ACLocInMeter(:,2)']; % Stores AC Lattitude as variable that can be used in this function
    C130LongitM  = [ACLocInMeter(:,3)']; % Stores AC Longitude as variable that can be used in this function
    C130HeightM  = [ACLocInMeter(:,4)']; % Stores AC Height Position as variable that can be used in this function
    C130AzimuthM = [ACLocInMeter(:,5)']; % Stores AC azimuth as variable that can be used in this function
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% PLOTS A C-130 WIRE FRAME FOR VISUALIZTION
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ACTUAL C130 DIMENSIONS, which will be used for scaling
    ActLengthFT = 98; % Length in ft of real C130 and will be used for sacaling
    ActLengthIN = 9;  % additional inches of length of 
    ActWingspanFT = 132; %Wingspane in ft
    ActWingspanIN = 7;  %additional inches of wingspan
    
    % Compiles Dimensions of C-130 in American units. USA USA USA USA USA
    ActLength = ActLengthFT + (ActLengthIN/12);
    ActWingspan = ActWingspanFT + (ActWingspanIN/12);
    
    % Converts Dimensions of actual C130 to metric
    LengthMeters = ActLength*0.3048;
    WingspanMeters = ActWingspan*0.3048;
    
    % LOAD C-130 MODEL FROM .dat FILES. This is the wire frame we are using
    % to show the C130
    load C130BodyX.dat;
    load C130BodyY.dat;
    load C130BodyZ.dat;
    load C130WingsX.dat;
    load C130WingsY.dat;
    load C130WingsZ.dat;
    
    % TAKES MEASURMENTS OF LENGTH I.E. SCALE
    modelLength =  max(C130BodyY) - min(C130BodyY);
    % modelWingspan =  max(C130WingsX) - min(C130WingsX)
    
    % GETS THE SCALE OF THE ACTUAL TO THE MODEL
    LengthProportion = LengthMeters/modelLength;
    
    %% PLOTS AIRCRAFT MODELS, AND POPULATES OBSERVATION POINTS
C = 1;
D = 0;
for ACnum = 1 : length(C130BUNO) % Will run for as many tumes there are aircraft
    C130Lattit(1,1) = C130LattitM(1,ACnum);
    C130Longit(1,1) = C130LongitM(1,ACnum);
    C130Height(1,1) = C130HeightM(1,ACnum);
    azimuth(1,1) = C130AzimuthM(1,ACnum);
    
    % SCALES MODEL DIMENSIONS TO PROPER MEASURMENTS, BUILDS THE MODEL, AND PUTS IT IN ITS LOCATION
    FixedC130LengthX = (LengthProportion*C130BodyX) + C130Longit - (WingspanMeters/2) + 17.9;
    FixedC130LengthY = (LengthProportion*C130BodyY) + C130Lattit - LengthMeters - 1.25;
    FixedC130LengthZ = (LengthProportion*C130BodyZ) + C130Height + .48;
    FixedC130WingsX = (LengthProportion*C130WingsX) + C130Longit - (WingspanMeters/2);
    FixedC130WingsY = (LengthProportion*C130WingsY) + C130Lattit - LengthMeters;
    FixedC130WingsZ = (LengthProportion*C130WingsZ) + C130Height;
    
    % ROTATES C-130 MODEL BASED OFF AZIMUTH
    [FixedC130LengthX,FixedC130LengthY] = C130RotationBodyModel(C130Lattit,C130Longit,azimuth,FixedC130LengthX,FixedC130LengthY);
    [FixedC130WingsX,FixedC130WingsY] = C130RotationWingsModel(C130Lattit,C130Longit,azimuth,FixedC130WingsX,FixedC130WingsY);
    
    
    % PLOTS C-130 WIREFRAME WITH A TOP VIEW
    plot3(FixedC130LengthX,FixedC130LengthY, FixedC130LengthZ,'-k','linewidth',1)
    hold on;
    plot3(FixedC130WingsX,FixedC130WingsY, FixedC130WingsZ,'-k','linewidth',1)
    title([{' Top View','C-130(s) & Observation Points'}],'Fontsize',14)
    xlabel('Longitude in meters','Fontsize',11)
    ylabel('Lattitude in meters','Fontsize',11)
    zlabel('Height')
    axis equal
    view(0,90)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% OBSERVATION WAYPOINTS AROUND AIRCRAFT
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    ObservWPx = [ 18, 15, 11, 09, 08, 08, 09, 11, 13, 13, 13, 13, 13, 10, 08, 06, 04, 02, 00, ...
        -1, -3, -3, -3, -3, 01, 03, 06, 07, 09, 11, 13, 15, 16, 16, 18, 20, 22, 24, ...
        24, 25, 27, 29, 31, 33, 34, 37, 39, 43, 43, 43, 43, 41, 40, 38, 36, 34, 32, ...
        30, 27, 27, 27, 27, 27, 29, 31, 32, 32, 31, 29, 25, 22, 09, 15, 25, 31, 16, ...
        24, 20, 20, 20] + C130Longit - (WingspanMeters/2);
    ObservWPy = [ -4, -3, -2, 00, 01, 03, 05, 06, 07, 08, 09, 10, 11, 11, 11, 12, 12, 13, 13, ...
        13, 14, 16, 17, 18, 19, 20, 20, 22, 23, 23, 23, 23, 25, 28, 30, 31, 30, 28, ...
        25, 23, 23, 23, 23, 22, 20, 20, 19, 18, 17, 16, 14, 13, 13, 13, 12, 12, 11, ...
        11, 11, 10, 09, 08, 07, 06, 05, 03, 01, 00, -2, -3, -4, 16, 16, 16, 16, 04, ...
        04, 08, 16, 25] + C130Lattit - LengthMeters;
    ObservWPz = [  7, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, ...
        07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, ...
        07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, ...
        07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 12, 12, 12, 12, 12, ...
        12, 11, 11, 11] + C130Height;
    
    % ROTATES THE OBSERVATION POINTS BASED OFF THE AC AZIMUTH
    [ObservWPx,ObservWPy] = C130RotationObsPoint(C130Lattit,C130Longit,azimuth,ObservWPx,ObservWPy);
      
    % PLOTS C-130 OBSERVATION POINTS WITH A TOP VIEW
    plot3(ObservWPx(1,:), ObservWPy(1,:), ObservWPz(1,:),'*w','linewidth',5)
    plot3(ObservWPx(1,:), ObservWPy(1,:), ObservWPz(1,:),'*r','linewidth',3)
    plot3(0,0,0,'xy','linewidth',3)
    
    hold on;
    
    % MAKE AIRWAYPOINT DISTRIBUTUION LIST FROM OBSERVATION POINTS BY ADDING
    % THIS GROUP OF OBSERVATION POINTS TO THE END OF THE CURRENT MASTER
    % LIST "ObsPointList"
    L = length(ObservWPx);
    D = D + L; % Length of rows that will be added to current list
    ObsPointlist(C:D,1) = ObservWPx'; % Observation point Longitudes
    ObsPointlist(C:D,2) = ObservWPy'; % Observation point Lattitudes
    ObsPointlist(C:D,3) = ObservWPz'; % Observation point Heights
    C = C + L; % In next iteration, the added group of points will be added starting at C
end