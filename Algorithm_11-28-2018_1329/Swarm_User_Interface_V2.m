function varargout = Swarm_User_Interface_V2(varargin)
% Swarm_User_Interface_V2 MATLAB code for Swarm_User_Interface_V2.fig
%      Swarm_User_Interface_V2, by itself, creates a new Swarm_User_Interface_V2 or raises the existing
%      singleton*.
%
%      H = Swarm_User_Interface_V2 returns the handle to a new Swarm_User_Interface_V2 or the handle to
%      the existing singleton*.
%
%      Swarm_User_Interface_V2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Swarm_User_Interface_V2.M with the given input arguments.
%
%      Swarm_User_Interface_V2('Property','Value',...) creates a new Swarm_User_Interface_V2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Swarm_User_Interface_V2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Swarm_User_Interface_V2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Swarm_User_Interface_V2

% Last Modified by GUIDE v2.5 22-Oct-2018 15:48:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Swarm_User_Interface_V2_OpeningFcn, ...
    'gui_OutputFcn',  @Swarm_User_Interface_V2_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Swarm_User_Interface_V2 is made visible.
function Swarm_User_Interface_V2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Swarm_User_Interface_V2 (see VARARGIN)

% Choose default command line output for Swarm_User_Interface_V2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Swarm_User_Interface_V2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Swarm_User_Interface_V2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%% %%%%%%%%%%%%% CREATES THE INPUT BOXES FOR GCS AND AC %%%%%%%%%%%%%%%%%%%
% The following portion creates the boxes where the information for the
% Ground Control Station and Air Craft in the GUI. It is stored in handles
% that will later be accessed by the save button.
function GCS_Lat_Callback(hObject, eventdata, handles)

function GCS_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GCS_Lon_Callback(hObject, eventdata, handles)

function GCS_Lon_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function GCS_Height_Callback(hObject, eventdata, handles)

function GCS_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Lat_Callback(hObject, eventdata, handles)

function AC_1_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Long_Callback(hObject, eventdata, handles)

function AC_1_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Height_Callback(hObject, eventdata, handles)

function AC_1_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Azimuth_Callback(hObject, eventdata, handles)

function AC_1_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Buno_Callback(hObject, eventdata, handles)

function AC_1_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_1_Type_Callback(hObject, eventdata, handles)

function AC_1_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Lat_Callback(hObject, eventdata, handles)

function AC_2_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Long_Callback(hObject, eventdata, handles)

function AC_2_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Height_Callback(hObject, eventdata, handles)

function AC_2_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Azimuth_Callback(hObject, eventdata, handles)

function AC_2_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Buno_Callback(hObject, eventdata, handles)

function AC_2_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_2_Type_Callback(hObject, eventdata, handles)

function AC_2_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Lat_Callback(hObject, eventdata, handles)

function AC_3_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Long_Callback(hObject, eventdata, handles)

function AC_3_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Height_Callback(hObject, eventdata, handles)

function AC_3_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Azimuth_Callback(hObject, eventdata, handles)

function AC_3_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Buno_Callback(hObject, eventdata, handles)

function AC_3_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_3_Type_Callback(hObject, eventdata, handles)

function AC_3_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Lat_Callback(hObject, eventdata, handles)

function AC_4_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Long_Callback(hObject, eventdata, handles)

function AC_4_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Height_Callback(hObject, eventdata, handles)

function AC_4_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Azimuth_Callback(hObject, eventdata, handles)

function AC_4_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Buno_Callback(hObject, eventdata, handles)

function AC_4_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_4_Type_Callback(hObject, eventdata, handles)

function AC_4_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Lat_Callback(hObject, eventdata, handles)

function AC_5_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Long_Callback(hObject, eventdata, handles)

function AC_5_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Height_Callback(hObject, eventdata, handles)

function AC_5_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Azimuth_Callback(hObject, eventdata, handles)

function AC_5_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Buno_Callback(hObject, eventdata, handles)

function AC_5_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_5_Type_Callback(hObject, eventdata, handles)

function AC_5_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Lat_Callback(hObject, eventdata, handles)

function AC_6_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Long_Callback(hObject, eventdata, handles)

function AC_6_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Height_Callback(hObject, eventdata, handles)

function AC_6_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Azimuth_Callback(hObject, eventdata, handles)

function AC_6_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Buno_Callback(hObject, eventdata, handles)

function AC_6_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_6_Type_Callback(hObject, eventdata, handles)

function AC_6_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Lat_Callback(hObject, eventdata, handles)

function AC_7_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Long_Callback(hObject, eventdata, handles)

function AC_7_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Height_Callback(hObject, eventdata, handles)

function AC_7_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Azimuth_Callback(hObject, eventdata, handles)

function AC_7_Azimuth_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Buno_Callback(hObject, eventdata, handles)

function AC_7_Buno_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AC_7_Type_Callback(hObject, eventdata, handles)

function AC_7_Type_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Save_Button.
function Save_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Save_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% AC_Table_i = 0;
% mathOperator = ["+","-","*","/","!","@","<",">","?","\","|"];
inputError = 0;     % Initializes an input error variable that will be used towards the end of this function
handles.Status.String = 'Input Information';                               % Changes the status message seen on GUI to input information
ACinfoFormat = '%4.8f ,\t %4.8f ,\t %4.4f ,\t %4.4f ,\t %d ,\t %d, \r\n';  % Sets the format in which the Aircraft information will be saved to txt document
DroneinfoFormat = '%4.8f, \t %4.8f, \t %4.4f, \t %4.4f, \t %d, \r\n';      % Sets the format in which the Drone information will be saved
%% %%%%%%%%%%%%%%%% SAVES INFORMATION OF GROUND CONTROL STATION %%%%%%%%%%%
GCS_Info_Text = fopen('Ground_Control_Station_Info.txt','w');   % Opens a TXT document to store the Ground Control Station information
handles.GCS_Lat.BackgroundColor = [1 1 1];      % Resets color of the GCS Lattitude input box to white
handles.GCS_Lon.BackgroundColor = [1 1 1];      % Resets color of the GCS Longitude input box to white
handles.GCS_Height.BackgroundColor = [1 1 1];   % Resets color of the GCS Height input box to white
if isnan(str2double(handles.GCS_Lat.String))    % Checks to see if GCS Lat box is empty. If empty it will trigger the input error flag and change the box background red
    handles.GCS_Lat.BackgroundColor = [1 0 0]; inputError = 1;
end
if isnan(str2double(handles.GCS_Lon.String))    % Checks to see if GCS Lon box is empty. If empty it will trigger the input error flag and change the box background red
    handles.GCS_Lon.BackgroundColor = [1 0 0]; inputError = 1;
end
if isnan(str2double(handles.GCS_Height.String)) % Checks to see if GCS Height box is empty. If empty it will trigger the input error flag and change the box background red
    handles.GCS_Height.BackgroundColor = [1 0 0]; inputError = 1;
end
fprintf(GCS_Info_Text,'%s \t %s \t %s\r\n',handles.GCS_Lat.String,...
    handles.GCS_Lon.String,handles.GCS_Height.String);  % Saves the 3 parameters retrieved from the input boxes into the txt document
fclose(GCS_Info_Text);  % Closes the document where the GCS info is saved
%% %%%%%%%%%%%%%%%% SAVES INFORMATION OF AIRCRAFT TO BE INSPECTED %%%%%%%%%
AC1Type = handles.AC_1_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC2Type = handles.AC_2_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC3Type = handles.AC_3_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC4Type = handles.AC_4_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC5Type = handles.AC_5_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC6Type = handles.AC_6_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC7Type = handles.AC_7_Type.Value;  % Saves the value in the type drop down box from aircraft one. If empty it will stay one
AC_Info_Text = fopen('AirCraft_To_Inspect_Info.txt','w'); % Opens file to save Aircraft Information
if AC1Type ~= 1         % If an aircraft is selected Aircraft type box, it stores the values in that row
    AC1Lat = str2double(handles.AC_1_Lat.String);
    AC1Long = str2double(handles.AC_1_Long.String);
    AC1Height = str2double(handles.AC_1_Height.String);
    AC1Azimuth = str2double(handles.AC_1_Azimuth.String);
    AC1Buno = str2double(handles.AC_1_Buno.String);
    handles.AC_1_Lat.BackgroundColor = [1 1 1]; %Resets color of input boxes to white
    handles.AC_1_Long.BackgroundColor = [1 1 1];
    handles.AC_1_Height.BackgroundColor = [1 1 1];
    handles.AC_1_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_1_Buno.BackgroundColor = [1 1 1];
    if isnan(AC1Lat) % if there is an illegal character input, turns box red and raises "inputError" flag   
        handles.AC_1_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC1Long)
        handles.AC_1_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC1Height)
        handles.AC_1_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC1Azimuth)
        handles.AC_1_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC1Buno)
        handles.AC_1_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0) % If no error it saves the aircraft information
        AC1_info = [AC1Lat, AC1Long, AC1Height, AC1Azimuth, AC1Buno,AC1Type]; % An array with all the information in it for this line
        fprintf(AC_Info_Text, ACinfoFormat, AC1_info); %first part: txt file where it will be saved. 2nd part: format in which it will be save (specified around line 449) creates new line for subsuquent information. Part3: the info to be saved 
    end
end
if AC2Type ~= 1
    AC2Lat = str2double(handles.AC_2_Lat.String);
    AC2Long = str2double(handles.AC_2_Long.String);
    AC2Height = str2double(handles.AC_2_Height.String);
    AC2Azimuth = str2double(handles.AC_2_Azimuth.String);
    AC2Buno = str2double(handles.AC_2_Buno.String);
    handles.AC_2_Lat.BackgroundColor = [1 1 1];
    handles.AC_2_Long.BackgroundColor = [1 1 1];
    handles.AC_2_Height.BackgroundColor = [1 1 1];
    handles.AC_2_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_2_Buno.BackgroundColor = [1 1 1];
    if isnan(AC2Lat)
        handles.AC_2_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC2Long)
        handles.AC_2_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC2Height)
        handles.AC_2_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC2Azimuth)
        handles.AC_2_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC2Buno)
        handles.AC_2_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC2_info = [AC2Lat, AC2Long, AC2Height, AC2Azimuth, AC2Buno,AC2Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC2_info')
end
if AC3Type ~= 1
    AC3Lat = str2double(handles.AC_3_Lat.String);
    AC3Long = str2double(handles.AC_3_Long.String);
    AC3Height = str2double(handles.AC_3_Height.String);
    AC3Azimuth = str2double(handles.AC_3_Azimuth.String);
    AC3Buno = str2double(handles.AC_3_Buno.String);
    handles.AC_3_Lat.BackgroundColor = [1 1 1];
    handles.AC_3_Long.BackgroundColor = [1 1 1];
    handles.AC_3_Height.BackgroundColor = [1 1 1];
    handles.AC_3_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_3_Buno.BackgroundColor = [1 1 1];
    if isnan(AC3Lat)
        handles.AC_3_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC3Long)
        handles.AC_3_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC3Height)
        handles.AC_3_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC3Azimuth)
        handles.AC_3_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC3Buno)
        handles.AC_3_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC3_info = [AC3Lat, AC3Long, AC3Height, AC3Azimuth, AC3Buno,AC3Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC3_info)
end
if AC4Type ~= 1
    AC4Lat = str2double(handles.AC_4_Lat.String);
    AC4Long = str2double(handles.AC_4_Long.String);
    AC4Height = str2double(handles.AC_4_Height.String);
    AC4Azimuth = str2double(handles.AC_4_Azimuth.String);
    AC4Buno = str2double(handles.AC_4_Buno.String);
    handles.AC_4_Lat.BackgroundColor = [1 1 1];
    handles.AC_4_Long.BackgroundColor = [1 1 1];
    handles.AC_4_Height.BackgroundColor = [1 1 1];
    handles.AC_4_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_4_Buno.BackgroundColor = [1 1 1];
    if isnan(AC4Lat)
        handles.AC_4_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC4Long)
        handles.AC_4_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC4Height)
        handles.AC_4_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC4Azimuth)
        handles.AC_4_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC4Buno)
        handles.AC_4_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC4_info = [AC4Lat, AC4Long, AC4Height, AC4Azimuth, AC4Buno,AC4Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC4_info')
end
if AC5Type ~= 1
    AC5Lat = str2double(handles.AC_5_Lat.String);
    AC5Long = str2double(handles.AC_5_Long.String);
    AC5Height = str2double(handles.AC_5_Height.String);
    AC5Azimuth = str2double(handles.AC_5_Azimuth.String);
    AC5Buno = str2double(handles.AC_5_Buno.String);
    handles.AC_5_Lat.BackgroundColor = [1 1 1];
    handles.AC_5_Long.BackgroundColor = [1 1 1];
    handles.AC_5_Height.BackgroundColor = [1 1 1];
    handles.AC_5_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_5_Buno.BackgroundColor = [1 1 1];
    if isnan(AC5Lat)
        handles.AC_5_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC5Long)
        handles.AC_5_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC5Height)
        handles.AC_5_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC5Azimuth)
        handles.AC_5_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC5Buno)
        handles.AC_5_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC5_info = [AC5Lat, AC5Long, AC5Height, AC5Azimuth, AC5Buno,AC5Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC5_info)
end
if AC6Type ~= 1
    AC6Lat = str2double(handles.AC_6_Lat.String);
    AC6Long = str2double(handles.AC_6_Long.String);
    AC6Height = str2double(handles.AC_6_Height.String);
    AC6Azimuth = str2double(handles.AC_6_Azimuth.String);
    AC6Buno = str2double(handles.AC_6_Buno.String);
    handles.AC_6_Lat.BackgroundColor = [1 1 1];
    handles.AC_6_Long.BackgroundColor = [1 1 1];
    handles.AC_6_Height.BackgroundColor = [1 1 1];
    handles.AC_6_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_6_Buno.BackgroundColor = [1 1 1];
    if isnan(AC6Lat)
        handles.AC_6_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC6Long)
        handles.AC_6_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC6Height)
        handles.AC_6_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC6Azimuth)
        handles.AC_6_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC6Buno)
        handles.AC_6_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC6_info = [AC6Lat, AC6Long, AC6Height, AC6Azimuth, AC6Buno,AC6Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC6_info)
end
if AC7Type ~= 1
    AC7Lat = str2double(handles.AC_7_Lat.String);
    AC7Long = str2double(handles.AC_7_Long.String);
    AC7Height = str2double(handles.AC_7_Height.String);
    AC7Azimuth = str2double(handles.AC_7_Azimuth.String);
    AC7Buno = str2double(handles.AC_7_Buno.String);
    handles.AC_7_Lat.BackgroundColor = [1 1 1];
    handles.AC_7_Long.BackgroundColor = [1 1 1];
    handles.AC_7_Height.BackgroundColor = [1 1 1];
    handles.AC_7_Azimuth.BackgroundColor = [1 1 1];
    handles.AC_7_Buno.BackgroundColor = [1 1 1];
    if isnan(AC7Lat)
        handles.AC_7_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC7Long)
        handles.AC_7_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC7Height)
        handles.AC_7_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC7Azimuth)
        handles.AC_7_Azimuth.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(AC7Buno)
        handles.AC_7_Buno.BackgroundColor = [1 0 0]; inputError = 1;
    end
    AC7_info = [AC7Lat, AC7Long, AC7Height, AC7Azimuth, AC7Buno,AC7Type];
    fprintf(AC_Info_Text, ACinfoFormat, AC7_info)
end
%% %%%%%%%%%%%%%%%% SAVES INFORMATION INSPECTION DRONES  %%%%%%%%%%%%%%%%%%
% The structure of this portion is similar to the previous aircraft part
% but instead it is for drones and saves it to Drone info txt document
Drone1Type = handles.Drone_1_Type.Value;
Drone2Type = handles.Drone_2_Type.Value;
Drone3Type = handles.Drone_3_Type.Value;
Drone4Type = handles.Drone_4_Type.Value;
Drone5Type = handles.Drone_5_Type.Value;
Drone6Type = handles.Drone_6_Type.Value;
Drone7Type = handles.Drone_7_Type.Value;
Drone8Type = handles.Drone_8_Type.Value;
Drone9Type = handles.Drone_9_Type.Value;
Drone10Type = handles.Drone_10_Type.Value;
Drone11Type = handles.Drone_11_Type.Value;
Drone_Info_Text = fopen('Drone_Info.txt','w');
if Drone1Type ~= 1
    Drone1Lat = str2double(handles.Drone_1_Lat.String);
    Drone1Long = str2double(handles.Drone_1_Long.String);
    Drone1Height = str2double(handles.Drone_1_Height.String);
    Drone1ID = str2double(handles.Drone_1_ID.String);
    handles.Drone_1_Lat.BackgroundColor = [1 1 1];
    handles.Drone_1_Long.BackgroundColor = [1 1 1];
    handles.Drone_1_Height.BackgroundColor = [1 1 1];
    handles.Drone_1_ID.BackgroundColor = [1 1 1];
    if isnan(Drone1Lat)
        handles.Drone_1_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone1Long)
        handles.Drone_1_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone1Height)
        handles.Drone_1_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone1ID)
        handles.Drone_1_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone1_info = [Drone1Lat, Drone1Long, Drone1Height, Drone1ID,Drone1Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone1_info);
    end
end
if Drone2Type ~= 1
    Drone2Lat = str2double(handles.Drone_2_Lat.String);
    Drone2Long = str2double(handles.Drone_2_Long.String);
    Drone2Height = str2double(handles.Drone_2_Height.String);
    Drone2ID = str2double(handles.Drone_2_ID.String);
    handles.Drone_2_Lat.BackgroundColor = [1 1 1];
    handles.Drone_2_Long.BackgroundColor = [1 1 1];
    handles.Drone_2_Height.BackgroundColor = [1 1 1];
    handles.Drone_2_ID.BackgroundColor = [1 1 1];
    if isnan(Drone2Lat)
        handles.Drone_2_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone2Long)
        handles.Drone_2_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone2Height)
        handles.Drone_2_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone2ID)
        handles.Drone_2_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone2_info = [Drone2Lat, Drone2Long, Drone2Height, Drone2ID,Drone2Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone2_info);
    end
end
if Drone3Type ~= 1
    Drone3Lat = str2double(handles.Drone_3_Lat.String);
    Drone3Long = str2double(handles.Drone_3_Long.String);
    Drone3Height = str2double(handles.Drone_3_Height.String);
    Drone3ID = str2double(handles.Drone_3_ID.String);
    handles.Drone_3_Lat.BackgroundColor = [1 1 1];
    handles.Drone_3_Long.BackgroundColor = [1 1 1];
    handles.Drone_3_Height.BackgroundColor = [1 1 1];
    handles.Drone_3_ID.BackgroundColor = [1 1 1];
    if isnan(Drone3Lat)
        handles.Drone_3_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone3Long)
        handles.Drone_3_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone3Height)
        handles.Drone_3_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone3ID)
        handles.Drone_3_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone3_info = [Drone3Lat, Drone3Long, Drone3Height, Drone3ID,Drone3Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone3_info);
    end
end
if Drone4Type ~= 1
    Drone4Lat = str2double(handles.Drone_4_Lat.String);
    Drone4Long = str2double(handles.Drone_4_Long.String);
    Drone4Height = str2double(handles.Drone_4_Height.String);
    Drone4ID = str2double(handles.Drone_4_ID.String);
    handles.Drone_4_Lat.BackgroundColor = [1 1 1];
    handles.Drone_4_Long.BackgroundColor = [1 1 1];
    handles.Drone_4_Height.BackgroundColor = [1 1 1];
    handles.Drone_4_ID.BackgroundColor = [1 1 1];
    if isnan(Drone4Lat)
        handles.Drone_4_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone4Long)
        handles.Drone_4_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone4Height)
        handles.Drone_4_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone4ID)
        handles.Drone_4_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone4_info = [Drone4Lat, Drone4Long, Drone4Height, Drone4ID,Drone4Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone4_info);
    end
end
if Drone5Type ~= 1
    Drone5Lat = str2double(handles.Drone_5_Lat.String);
    Drone5Long = str2double(handles.Drone_5_Long.String);
    Drone5Height = str2double(handles.Drone_5_Height.String);
    Drone5ID = str2double(handles.Drone_5_ID.String);
    handles.Drone_5_Lat.BackgroundColor = [1 1 1];
    handles.Drone_5_Long.BackgroundColor = [1 1 1];
    handles.Drone_5_Height.BackgroundColor = [1 1 1];
    handles.Drone_5_ID.BackgroundColor = [1 1 1];
    if isnan(Drone5Lat)
        handles.Drone_5_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone5Long)
        handles.Drone_5_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone5Height)
        handles.Drone_5_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone5ID)
        handles.Drone_5_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone5_info = [Drone5Lat, Drone5Long, Drone5Height, Drone5ID,Drone5Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone5_info);
    end
end
if Drone6Type ~= 1
    Drone6Lat = str2double(handles.Drone_6_Lat.String);
    Drone6Long = str2double(handles.Drone_6_Long.String);
    Drone6Height = str2double(handles.Drone_6_Height.String);
    Drone6ID = str2double(handles.Drone_6_ID.String);
    handles.Drone_6_Lat.BackgroundColor = [1 1 1];
    handles.Drone_6_Long.BackgroundColor = [1 1 1];
    handles.Drone_6_Height.BackgroundColor = [1 1 1];
    handles.Drone_6_ID.BackgroundColor = [1 1 1];
    if isnan(Drone6Lat)
        handles.Drone_6_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone6Long)
        handles.Drone_6_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone6Height)
        handles.Drone_6_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone6ID)
        handles.Drone_6_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone6_info = [Drone6Lat, Drone6Long, Drone6Height, Drone6ID,Drone6Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone6_info);
    end
end
if Drone7Type ~= 1
    Drone7Lat = str2double(handles.Drone_7_Lat.String);
    Drone7Long = str2double(handles.Drone_7_Long.String);
    Drone7Height = str2double(handles.Drone_7_Height.String);
    Drone7ID = str2double(handles.Drone_7_ID.String);
    handles.Drone_7_Lat.BackgroundColor = [1 1 1];
    handles.Drone_7_Long.BackgroundColor = [1 1 1];
    handles.Drone_7_Height.BackgroundColor = [1 1 1];
    handles.Drone_7_ID.BackgroundColor = [1 1 1];
    if isnan(Drone7Lat)
        handles.Drone_7_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone7Long)
        handles.Drone_7_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone7Height)
        handles.Drone_7_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone7ID)
        handles.Drone_7_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone7_info = [Drone7Lat, Drone7Long, Drone7Height, Drone7ID,Drone7Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone7_info);
    end
end
if Drone8Type ~= 1
    Drone8Lat = str2double(handles.Drone_8_Lat.String);
    Drone8Long = str2double(handles.Drone_8_Long.String);
    Drone8Height = str2double(handles.Drone_8_Height.String);
    Drone8ID = str2double(handles.Drone_8_ID.String);
    handles.Drone_8_Lat.BackgroundColor = [1 1 1];
    handles.Drone_8_Long.BackgroundColor = [1 1 1];
    handles.Drone_8_Height.BackgroundColor = [1 1 1];
    handles.Drone_8_ID.BackgroundColor = [1 1 1];
    if isnan(Drone8Lat)
        handles.Drone_8_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone8Long)
        handles.Drone_8_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone8Height)
        handles.Drone_8_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone8ID)
        handles.Drone_8_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone8_info = [Drone8Lat, Drone8Long, Drone8Height, Drone8ID,Drone8Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone8_info);
    end
end
if Drone9Type ~= 1
    Drone9Lat = str2double(handles.Drone_9_Lat.String);
    Drone9Long = str2double(handles.Drone_9_Long.String);
    Drone9Height = str2double(handles.Drone_9_Height.String);
    Drone9ID = str2double(handles.Drone_9_ID.String);
    handles.Drone_9_Lat.BackgroundColor = [1 1 1];
    handles.Drone_9_Long.BackgroundColor = [1 1 1];
    handles.Drone_9_Height.BackgroundColor = [1 1 1];
    handles.Drone_9_ID.BackgroundColor = [1 1 1];
    if isnan(Drone9Lat)
        handles.Drone_9_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone9Long)
        handles.Drone_9_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone9Height)
        handles.Drone_9_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone9ID)
        handles.Drone_9_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone9_info = [Drone9Lat, Drone9Long, Drone9Height, Drone9ID,Drone9Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone9_info);
    end
end
if Drone10Type ~= 1
    Drone10Lat = str2double(handles.Drone_10_Lat.String);
    Drone10Long = str2double(handles.Drone_10_Long.String);
    Drone10Height = str2double(handles.Drone_10_Height.String);
    Drone10ID = str2double(handles.Drone_10_ID.String);
    handles.Drone_10_Lat.BackgroundColor = [1 1 1];
    handles.Drone_10_Long.BackgroundColor = [1 1 1];
    handles.Drone_10_Height.BackgroundColor = [1 1 1];
    handles.Drone_10_ID.BackgroundColor = [1 1 1];
    if isnan(Drone10Lat)
        handles.Drone_10_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone10Long)
        handles.Drone_10_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone10Height)
        handles.Drone_10_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone10ID)
        handles.Drone_10_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone10_info = [Drone10Lat, Drone10Long, Drone10Height, Drone10ID,Drone10Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone10_info);
    end
end
if Drone11Type ~= 1
    Drone11Lat = str2double(handles.Drone_11_Lat.String);
    Drone11Long = str2double(handles.Drone_11_Long.String);
    Drone11Height = str2double(handles.Drone_11_Height.String);
    Drone11ID = str2double(handles.Drone_11_ID.String);
    handles.Drone_11_Lat.BackgroundColor = [1 1 1];
    handles.Drone_11_Long.BackgroundColor = [1 1 1];
    handles.Drone_11_Height.BackgroundColor = [1 1 1];
    handles.Drone_11_ID.BackgroundColor = [1 1 1];
    if isnan(Drone11Lat)
        handles.Drone_11_Lat.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone11Long)
        handles.Drone_11_Long.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone11Height)
        handles.Drone_11_Height.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if isnan(Drone11ID)
        handles.Drone_11_ID.BackgroundColor = [1 0 0]; inputError = 1;
    end
    if (inputError == 0)
        Drone11_info = [Drone11Lat, Drone11Long, Drone11Height, Drone11ID,Drone11Type];
        fprintf(Drone_Info_Text, DroneinfoFormat, Drone11_info);
    end
end

%% %%%%%%%%%%%%% ERROR CHECKING PORTION FOR GUI INPUTS %%%%%%%%%%%%%%%%%%%%
% This portion checks for several possible input errors, or whether the 
% error flag was previously raised, and dispalys the appropriate error
% message
handles.Status.String = 'Standing By For Mission';
handles.Status.BackgroundColor = [0 1 0];
ACinputError = 0;
DroneinputError = 0;
if (AC1Type==1)&&(AC2Type==1)&&(AC3Type==1)&&(AC4Type==1)&&(AC5Type==1)&&(AC6Type==1)&&(AC7Type==1) 
    ACinputError = 1; % ACinputError set to 1 if no aircraft were selected 
end
if (Drone1Type==1)&&(Drone2Type==1)&&(Drone3Type==1)&&(Drone4Type==1)&&(Drone5Type==1)&&(Drone6Type==1)&&(Drone7Type==1)&&(Drone8Type==1)&&(Drone9Type==1)&&(Drone10Type==1)&&(Drone11Type==1)
    DroneinputError = 1; % DroneinputError set to 1 if no Drone were selected 
end
if inputError == 1 % Turns message box red and displays message if there was an input error 
    handles.Status.String = 'Error: Only Input Numbers in Highlighted Regions';
    handles.Status.BackgroundColor = [1 0 0]; 
end
if ACinputError == 1
    handles.Status.String = 'Error: No Aircraft Information Input';
    handles.Status.BackgroundColor = [1 0 0];
end
if DroneinputError == 1
    handles.Status.String = 'Error: No Drone Information Input';
    handles.Status.BackgroundColor = [1 0 0];
end
if (ACinputError == 1)&&(DroneinputError == 1)
    handles.Status.String = 'Error: No Information Input';
    handles.Status.BackgroundColor = [1 0 0];
end
fclose(AC_Info_Text);

%% %%%%%%%%%%%%%%%%%%%% WILL POPULATE MISSION WINDOW IF ALL GOOD %%%%%%%%%%
if (ACinputError ~= 1)&&(DroneinputError ~= 1)&&(inputError~=1)
    %%%%%%%%%%%%%% MAKES ARRAY WITH GROUND CONTROL STATION INFORMATION%%%%%%%%%
    formatSpec = '%f %f %f';
    GCSfileID = fopen('Ground_Control_Station_Info.txt');
    GCSfile = fscanf(GCSfileID,formatSpec);
    GCSdata = GCSfile';
    fclose(GCSfileID);
    %%%%%%%%%%%%%%%%%%%%%% MAKES ARRAY WITH AC INFORMATION%%%%%%%%%%%%%%%%%
    % This info is read from the fdocument "AirCraft_To_Inspect_info" that
    % was created in the previous portion. It then restructures this read
    % information into an N x 6 table. Since 6 fields of info.
    formatSpec = '%f ,%f ,%f ,%f ,%f ,%f,';
    ACfileID = fopen('AirCraft_To_Inspect_Info.txt');
    ACfile = fscanf(ACfileID,formatSpec);
    sizeACfile = size(ACfile);
    lengthACdata = sizeACfile(1,1);
    i = 0;
    for m = 1 : lengthACdata/6
        for n = 1 : 6
            i = 1 + i;
            AirCraftData(m,n) = ACfile(i,1);
        end
    end
    fclose(ACfileID);
    %%%%%%%%%%%%%%%%%%% MAKES ARRAY WITH DRONE INFORMATION%%%%%%%%%%%%%%%%%%%%%
    % This info is read from the fdocument "Drone_info" that was created
    % in the previous portion. It then restructures this read information 
    % into an N x 5 table. Since 5 fields of info.   
    formatSpec = '%f ,%f ,%f ,%f ,%f,';
    DronefileID = fopen('Drone_Info.txt');
    Dronefile = fscanf(DronefileID,formatSpec);
    sizeDronefile = size(Dronefile);
    lengthDronedata = sizeDronefile(1,1);
    i = 0;
    for m = 1 : lengthDronedata/5
        for n = 1 : 5
            i = 1 + i;
            DroneData(m,n) = Dronefile(i,1);
        end
    end
    fclose(DronefileID);
    DroneDataSave = DroneData; %This is storing the initial list for use in printing. 
    % DroneData will be changed in algorithm. When inspection is completed 
    % this initial list ("DroneDataSave") is reprinted to the output txt document. In turn
    % telling the drones to return home

%% %%%%%%%%%%%%%%%%%%%%% CONVERTS INPUT COORDINATES INTO METERS %%%%%%%%%%%%
    Lat = GCSdata(1,1);
    Lon = GCSdata(1,2);
    GroundHeight = GCSdata(1,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    GSCnormLat = y;
    GSCnormLon = x;
    
    %%%%%%%%%%% REORDER THE INPUT TABLE SO THE ALGORITHM CAN USE IT %%%%%%%
    % This is my mistake from not keeping the same format as last semester.
    % Imagine this next part of codes as a small conversion adaper.
    AirCraftDataTemp(:,1) = AirCraftData(:,5);  %AC ID
    AirCraftDataTemp(:,2) = AirCraftData(:,1);  %AC Lattitude
    AirCraftDataTemp(:,3) = AirCraftData(:,2);  %AC Longitude
    AirCraftDataTemp(:,4) = AirCraftData(:,3);  %AC Height
    AirCraftDataTemp(:,5) = AirCraftData(:,4);  %AC Azimuth
    AirCraftDataTemp(:,6) = AirCraftData(:,6);  %AC Type
    AirCraftData = AirCraftDataTemp; % ARRAY with information in the proper format
    
    DroneDataTemp(:,1) = DroneData(:,4);  %AC ID
    DroneDataTemp(:,2) = DroneData(:,1);  %AC Lattitude
    DroneDataTemp(:,3) = DroneData(:,2);  %AC Longitude
    DroneDataTemp(:,4) = DroneData(:,3);  %AC Height
    DroneDataTemp(:,6) = DroneData(:,5);  %AC Type
    DroneData = DroneDataTemp; % ARRAY with information in the proper format
    
    
    %%%%%%%%% CONVERTS AIRCRAFT LOCATIONs TO METERS %%%%%%%%%%%%%%%%%%%%%%%
    Lat = AirCraftData(:,2);
    Lon = AirCraftData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    ACnormLat = y;
    ACnormLon = x;
    
    % Array with all info in meters and in right format
    format long
    ACLocInMeter = [AirCraftData(:,1), (ACnormLat - GSCnormLat), ( ACnormLon - GSCnormLon),...
        (AirCraftData(:,4)-GroundHeight), AirCraftData(:,5), AirCraftData(:,6)];
    hold off
    plot3(0,0,0) % here to clear graphic window
    hold on
    
    % C-130 AIRCRAFT OBSERVATION POINT, AND MODEL POPULATION AND VISUALIZATION
    if AirCraftData(:,6) == 2;   %Checks to see if its a C-130
        [ObsPointlist] = C130InitializationVisualization(ACLocInMeter);
    end
    
    %%%%%%%%% CONVERTS Drone LOCATIONS TO METERS %%%%%%%%%%%%%%%%%%%%%%%%%% 
    Lat = DroneData(:,2);
    Lon = DroneData(:,3);
    DroneHeight = DroneData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    DronenormLat = y;
    DronenormLon = x;
    
    % Array with all info in meters and in right format
    DroneLocInMeter = [DroneData(:,1), (DronenormLat - GSCnormLat), ( DronenormLon - GSCnormLon),...
        (DroneData(:,4)-GroundHeight), DroneData(:,5), DroneData(:,6)];
    
    %% SEPARATE DRONE LIST TO 2 LISTS AND PLOTS THEM
    % This portion separates the drone list into 2 list. One for Air drones
    % and one for Ground drones. This is done by going line by line of the
    % drone list and checking what type it is (column 6 is type at this point)
    DroneInfoTableSize = size(DroneLocInMeter);
    NumberOfDrones = DroneInfoTableSize(1,1);
    i = 1;
    n1 = 0;
    n2 = 0;
    for i = 1 : NumberOfDrones
        if (DroneLocInMeter(i,6) == 2)
            n1 = n1 + 1;
            AirDroneLocInMeters(n1,:) = DroneLocInMeter(i,:);
            plot3(AirDroneLocInMeters(n1,3),AirDroneLocInMeters(n1,2),AirDroneLocInMeters(n1,4),'xb','linewidth',4);
        end
        if (DroneLocInMeter(i,6) == 3)
            n2 = n2 + 1;
            GroundDroneLocInMeters(n2,:) = DroneLocInMeter(i,:);
            plot3(GroundDroneLocInMeters(n2,3),GroundDroneLocInMeters(n2,2),GroundDroneLocInMeters(n2,4),'x','color',[0.65 0 0],'linewidth',4)
        end
    end
    hold off
end



function Drone_1_Lat_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function Drone_1_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_1_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_1_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_1_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_1_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_2_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_2_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_2_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_2_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_2_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_2_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_3_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_3_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_3_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_3_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_3_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_3_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_4_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_4_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Drone_4_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_4_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_4_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_4_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_5_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_5_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_5_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_5_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_5_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_5_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_6_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_6_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_6_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_6_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_6_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_6_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_7_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_7_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_7_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_7_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_7_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_7_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_8_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_8_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_8_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_8_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_8_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_8_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_9_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_9_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_9_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_9_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Drone_9_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_9_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_10_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_10_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_10_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_10_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_10_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_10_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_11_Lat_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_11_Lat_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_11_Long_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_11_Long_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_11_ID_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_11_ID_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_11_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_11_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_1_Type.
function Drone_1_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_1_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_2_Type.
function Drone_2_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_2_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_3_Type.
function Drone_3_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_3_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_4_Type.
function Drone_4_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_4_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_5_Type.
function Drone_5_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_5_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_6_Type.
function Drone_6_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_6_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_7_Type.
function Drone_7_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_7_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_8_Type.
function Drone_8_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_8_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Drone_9_Type.
function Drone_9_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_9_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Drone_10_Type.
function Drone_10_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_10_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Drone_11_Type.
function Drone_11_Type_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_11_Type_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_1_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_1_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_2_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_2_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_3_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_3_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_4_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_4_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_5_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_5_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_6_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_6_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_7_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_7_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_8_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_8_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_9_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_9_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Drone_10_Height_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Drone_10_Height_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%% --- Executes on button press in Run_Button.
function Run_Button_Callback(hObject, eventdata, handles)

StatusMsgGood = strcmp(handles.Status.String,'Standing By For Mission'); % CHECKS to see if string in message window says 'Standing By For Mission'. if not it assumes an error and refuses to run the algorithm
if (StatusMsgGood == 1) % That check to see if there was no error during input
    format long
    handles.Status.String = 'Calculating'; % Changes message window to this
    handles.Status.BackgroundColor = [1 1 0];
    
%% Recreates tables based off the txt documents created in save button portion    
    %%%%%%%%%%%%%% MAKES ARRAY WITH GROUND CONTROL STATION INFORMATION%%%%%%%%%
    formatSpec = '%f %f %f';
    GCSfileID = fopen('Ground_Control_Station_Info.txt');
    GCSfile = fscanf(GCSfileID,formatSpec);
    GCSdata = GCSfile';
    fclose(GCSfileID);
    %%%%%%%%%%%%%%%%%%%%%% MAKES ARRAY WITH AC INFORMATION%%%%%%%%%%%%%%%%%%%%%
    formatSpec = '%f ,%f ,%f ,%f ,%f ,%f,';
    ACfileID = fopen('AirCraft_To_Inspect_Info.txt');
    ACfile = fscanf(ACfileID,formatSpec);
    sizeACfile = size(ACfile);
    lengthACdata = sizeACfile(1,1);
    i = 0;
    for m = 1 : lengthACdata/6
        for n = 1 : 6
            i = 1 + i;
            AirCraftData(m,n) = ACfile(i,1);
        end
    end
    fclose(ACfileID);
    %%%%%%%%%%%%%%%%%%% MAKES ARRAY WITH DRONE INFORMATION%%%%%%%%%%%%%%%%%%%%%
    formatSpec = '%f ,%f ,%f ,%f ,%f,';
    DronefileID = fopen('Drone_Info.txt');
    Dronefile = fscanf(DronefileID,formatSpec);
    sizeDronefile = size(Dronefile);
    lengthDronedata = sizeDronefile(1,1);
    i = 0;
    for m = 1 : lengthDronedata/5
        for n = 1 : 5
            i = 1 + i;
            DroneData(m,n) = Dronefile(i,1);
        end
    end
    fclose(DronefileID);
    
%% COPY OF THE CONVERSION PART SEEN IN THE SAVE BUTTON FUNCTION %%%%%%%%%%%    
    %%%%%%%%%%%%%%%%%%%%%%% CONVERTS INPUT COORDINATES INTO METERS %%%%%%%%%%%%
    Lat = GCSdata(1,1);
    Lon = GCSdata(1,2);
    GroundHeight = GCSdata(1,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    GSCnormLat = y;
    GSCnormLon = x;
    
    % REORDER THE INPUT TABLE SO THE ALGORITHM CAN USE IT
    AirCraftDataTemp(:,1) = AirCraftData(:,5);  %AC ID
    AirCraftDataTemp(:,2) = AirCraftData(:,1);  %AC Lattitude
    AirCraftDataTemp(:,3) = AirCraftData(:,2);  %AC Longitude
    AirCraftDataTemp(:,4) = AirCraftData(:,3);  %AC Height
    AirCraftDataTemp(:,5) = AirCraftData(:,4);  %AC Azimuth
    AirCraftDataTemp(:,6) = AirCraftData(:,6);  %AC Type
    AirCraftData = AirCraftDataTemp;
    
    DroneDataTemp(:,1) = DroneData(:,4);  %AC ID
    DroneDataTemp(:,2) = DroneData(:,1);  %AC Lattitude
    DroneDataTemp(:,3) = DroneData(:,2);  %AC Longitude
    DroneDataTemp(:,4) = DroneData(:,3);  %AC Height
    DroneDataTemp(:,6) = DroneData(:,5);  %AC Type
    DroneData = DroneDataTemp;
    
    
    Lat = AirCraftData(:,2);
    Lon = AirCraftData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    ACnormLat = y;
    ACnormLon = x;
    
    
    ACLocInMeter = [AirCraftData(:,1), (ACnormLat - GSCnormLat), ( ACnormLon - GSCnormLon),...
        (AirCraftData(:,4)-GroundHeight), AirCraftData(:,5), AirCraftData(:,6)];
    hold off
    plot3(0,0,0)
    hold on
    % C-130 AIRCRAFT OBSERVATION POINT, AND MODEL POPULATION AND VISUALIZATION
    if AirCraftData(:,6) == 2;   %Checks to see if its a C-130
        [ObsPointlist] = C130ObservationPointGeneration(ACLocInMeter);
    end
    

    Lat = DroneData(:,2);
    Lon = DroneData(:,3);
    DroneHeight = DroneData(:,3);
    [x,y,utmzone] = deg2utm(Lat,Lon);
    DronenormLat = y;
    DronenormLon = x;
    DroneLocInMeter = [DroneData(:,1), (DronenormLat - GSCnormLat), ( DronenormLon - GSCnormLon),...
        (DroneData(:,4)-GroundHeight), DroneData(:,5), DroneData(:,6)];
    DroneInfoTableSize = size(DroneLocInMeter);
    NumberOfDrones = DroneInfoTableSize(1,1);
    i = 1;
    n1 = 0;
    n2 = 0;
    numOfAirDrones = 0;
    numOfGroundDrones = 0;
    for i = 1 : NumberOfDrones
        if (DroneLocInMeter(i,6) == 2)
            n1 = n1 + 1;
            numOfAirDrones = numOfAirDrones + 1;
            AirDroneLocInMeters(n1,:) = DroneLocInMeter(i,:);
            plot3(AirDroneLocInMeters(n1,3),AirDroneLocInMeters(n1,2),AirDroneLocInMeters(n1,4),'xb','linewidth',4);
        end
        if (DroneLocInMeter(i,6) == 3)
            n2 = n2 + 1;
            numOfGroundDrones = numOfGroundDrones + 1;
            GroundDroneLocInMeters(n2,:) = DroneLocInMeter(i,:);
            plot3(GroundDroneLocInMeters(n2,3),GroundDroneLocInMeters(n2,2),GroundDroneLocInMeters(n2,4),'x','color',[0.65 0 0],'linewidth',4)
        end
    end
    
    
    %% INITIAL PATH DISTRIBUTION CALCULATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    A = size(ObsPointlist); % GETS DIMENSIONS OF ObsPointList
    NumOfObservPoint = A(1,1); % Extract length of ObsPointList (how many rows) to get number of observation points
    i = 0;
    k = 0;
    numOfAirObservPoints = 0; % Creation of variable that will count how many air observation points there are
    numOfGroundObservPoints = 0; % Creation of variable that will count how many ground observation points there are
    AirObservPointList = []; % Creation of empty array where air observation points will be stored
    GroundObservPointList = []; % Creation of empty array where ground observation points will be stored
    GroundDroneInspectionThreshold = 7; % Any observation points below this height will be sorted to the ground list. Anything above will be given to the air drone
    for n = 1 : NumOfObservPoint % Goes through whole list comparing whether column 4 (height) of ObsPointList is less than threshold
        if (ObsPointlist(n,4) > GroundDroneInspectionThreshold)
            i = i +1;
            numOfAirObservPoints = numOfAirObservPoints +1;
            AirObservPointList(i,:) = ObsPointlist(n,:); % Saves current row of ObsPointList to next row of AirObservPointList
        end
        if (ObsPointlist(n,4) <= GroundDroneInspectionThreshold)
            k = k +1;
            numOfGroundObservPoints = numOfGroundObservPoints +1;
            GroundObservPointList(k,:) = ObsPointlist(n,:); % Saves current row of ObsPointList to next row of AirObservPointList
        end
    end
    
    
%% %%%%%%%%%%%%%%%% RUNS THE INITIAL PATH DISTRIBUTION %%%%%%%%%%%%%%%%%%%%    
    if (numOfAirObservPoints ~= 0)&&(numOfAirDrones ~= 0) % Only runs if there are air drones and air observation points
        
        % Calculates the center position of all Air drones. Angle to each Air Observ point is calculated from here
        AirDroneStartpoint = [ mean(AirDroneLocInMeters(:,2)) mean(AirDroneLocInMeters(:,3)) 0];
        plot3(AirDroneStartpoint(:,2),AirDroneStartpoint(:,1),AirDroneStartpoint(:,3),'xk','linewidth',3) % and plots it. Really not necissary but it doesnt take alot of time
        
        % Calulates center of all air observation points
        AirObservPointCenter = [mean(AirObservPointList(:,2)) mean(AirObservPointList(:,3)) mean(AirObservPointList(:,4))];
        plot3(AirObservPointCenter(:,1),AirObservPointCenter(:,2),AirObservPointCenter(:,3),'ok','linewidth',3) % plotting is also unecessary but whatevs. it doesnt hurt
        
        % Sorts Drones by angle based off drone center point compared to observation point center
        [AirDroneLocInMeters] = AirdroneIDpositionSort(AirDroneLocInMeters, AirObservPointCenter);
        
        % Distributes air waypoints among the air drones
        [assignedAirCPlist] = AirWayPointDistributionOpt(numOfAirObservPoints, AirObservPointList, AirDroneStartpoint,numOfAirDrones, AirDroneLocInMeters);
        assignedAirCPlist(:,7) = 2; %Somehow the drone types got lost along the way. We know these are air drones so just setting column 7 to reflect these being air drones
    end
    if (numOfGroundObservPoints ~= 0)&&(numOfGroundDrones ~= 0) % Only runs if there are air drones and air observation points
        
        % Calculates the center position of all ground drones. Angle to each ground Observ point is calculated from here
        GroundDroneStartpoint = [ mean(GroundDroneLocInMeters(:,2)) mean(GroundDroneLocInMeters(:,3)) 0];
        plot3(GroundDroneStartpoint(:,2),GroundDroneStartpoint(:,1),GroundDroneStartpoint(:,3),'xk','linewidth',3)
        
        % Calulates center of all air observation points
        GroundObservPointCenter = [mean(GroundObservPointList(:,2)) mean(GroundObservPointList(:,3)) mean(GroundObservPointList(:,4))];
        plot3(GroundObservPointCenter(:,1),GroundObservPointCenter(:,2),GroundObservPointCenter(:,3),'ok','linewidth',3)
        
        % Sorts Drones by angle based off drone center point compared to observation point center
        [GroundDroneLocInMeters] = GrounddroneIDpositionSort(GroundDroneLocInMeters, GroundObservPointCenter);
        [assignedGroundCPlist] = GroundWayPointDistributionOpt(numOfGroundObservPoints, GroundObservPointList, GroundDroneStartpoint,numOfGroundDrones, GroundDroneLocInMeters);
        assignedGroundCPlist(:,7) = 3; %Somehow the drone types got lost along the way. We know these are ground drones so just setting column 7 to reflect these being ground drones
    end
    
    %% Begin Plotting things nicely
    hold off
    
    
    %Definetaly more efficient way to plot Air Craft Models..... but I'm just to lazy to write it out. SO RECALCULATION IT IS!!!
    if AirCraftData(:,6) == 2;   %Checks to see if its a C-130
        [ObsPointlist] = C130ObservationPointGeneration(ACLocInMeter);
    end
    hold on
    if numOfAirDrones ~= 0; % plots the air drones if any
        plot3(AirDroneLocInMeters(:,3),AirDroneLocInMeters(:,2),AirDroneLocInMeters(:,4),'xb','linewidth',4);
    end
    if numOfGroundDrones ~= 0 % plots ground drones if any
        plot3(GroundDroneLocInMeters(:,3),GroundDroneLocInMeters(:,2),GroundDroneLocInMeters(:,4),'x','color',[0.65 0 0],'linewidth',4)
    end
    
    %% PLOTS LINES THAT SHOW THE WayPointS PATHS
    %%%%%%%%%%%%%%%%% PLOTS GROUND DRONE PATHS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if numOfAirDrones ~= 0
        currentdroneID = assignedAirCPlist(1,8);
        nextDroneID = currentdroneID;
        n = 0;
        m = 0;
        count = 1;
        for i = 1 : numOfAirDrones
            AirdroneLinex = 0; % craeates and Resets the x-list of coordinates
            AirdroneLiney = 0; % craeates and Resets the y-list of coordinates
            AirdroneLinez = 0; % craeates and Resets the z-list of coordinates
            while currentdroneID == nextDroneID % Runs while drone ID (COLUMN 5 of AirCPList) is the same
                n = n +1;
                m = m +1;
                AirdroneLinex(m,1) = assignedAirCPlist(n,2); % Extracts X part of AirCP list
                AirdroneLiney(m,1) = assignedAirCPlist(n,3); % Extracts Y part of AirCP list
                AirdroneLinez(m,1) = assignedAirCPlist(n,4); % Extracts Z part of AirCP list
                
                
                if ( n < length( assignedAirCPlist(:,1) ) ) % Here to prevent overflow of matrix
                    nextDroneID = assignedAirCPlist(n+1,8); % Updates the drone id to the one in the next row.
                else
                    nextDroneID = 0; %HERE
                end
            end % Once new drone ID reached, it will break the while loop and plot that set of WayPoints
            hold on;
            m = 0;
            % ADDS THE ASSIGNED DRONE POSITION AS ORIGIN AND FINAL DESTINATION
            AirdroneLinex2 = [ AirDroneLocInMeters(i,3) ; AirdroneLinex ; AirDroneLocInMeters(i,3) ];
            AirdroneLiney2 = [ AirDroneLocInMeters(i,2) ; AirdroneLiney ; AirDroneLocInMeters(i,2) ];
            AirdroneLinez2 = [ AirDroneLocInMeters(i,4) ; AirdroneLinez ; AirDroneLocInMeters(i,4) ];
            % PLOTS THE LINES
            plot3(AirdroneLinex2,AirdroneLiney2,AirdroneLinez2,'linewidth',2) ;
            view(0,90)
            if ( i >= numOfAirDrones)
            else
                currentdroneID = AirDroneLocInMeters(i+1,1);
            end
        end
    end
    
    %%%%%%%%%%%%%%%%% PLOTS GROUND DRONE PATHS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %     if numOfGroundDrones ~= 0
    currentdroneID = assignedGroundCPlist(1,8);
    nextDroneID = currentdroneID;
    n = 0;
    m = 0;
    count = 1;
    for i = 1 : numOfGroundDrones
        GrounddroneLinex = 0; % craeates and Resets the x-list of coordinates
        GrounddroneLiney = 0; % craeates and Resets the y-list of coordinates
        GrounddroneLinez = 0; % craeates and Resets the z-list of coordinates
        while currentdroneID == nextDroneID % Runs while drone ID (COLUMN 5 of GroundCPList) is the same
            n = n +1;
            m = m +1;
            GrounddroneLinex(m,1) = assignedGroundCPlist(n,2); % Extracts X part of GroundCP list
            GrounddroneLiney(m,1) = assignedGroundCPlist(n,3); % Extracts Y part of GroundCP list
            GrounddroneLinez(m,1) = assignedGroundCPlist(n,4); % Extracts Z part of GroundCP list
            
            
            if ( n < length( assignedGroundCPlist(:,1) ) ) % Here to prevent overflow of matrix
                nextDroneID = assignedGroundCPlist(n+1,8);
            else
                nextDroneID = 0; %HERE
            end
        end % Once new drone ID reached, it will break the while loop and plot that set of WayPoints
        hold on;
        m = 0;
        % ADDS THE ASSIGNED DRONE POSITION AS ORIGIN AND FINAL DESTINATION
        GrounddroneLinex2 = [ GroundDroneLocInMeters(i,3) ; GrounddroneLinex ; GroundDroneLocInMeters(i,3) ];
        GrounddroneLiney2 = [ GroundDroneLocInMeters(i,2) ; GrounddroneLiney ; GroundDroneLocInMeters(i,2) ];
        GrounddroneLinez2 = [ GroundDroneLocInMeters(i,4) ; GrounddroneLinez ; GroundDroneLocInMeters(i,4) ];
        % PLOTS THE LINES
        plot3(GrounddroneLinex2,GrounddroneLiney2,GrounddroneLinez2,'linewidth',2) ;
        view(0,90)
        if ( i >= numOfGroundDrones)
        else
            currentdroneID = GroundDroneLocInMeters(i+1,1);
        end
    end

    handles.Status.String = ' Mission Running';
    handles.Status.BackgroundColor = [0 1 0];
    
%% CONVERTS THE POSITIONS FROM METERS BACK TO DEGREE COORDINATES    
    % only converts if there are any air drones
    if numOfAirDrones ~= 0
        xx = assignedAirCPlist(:,2) + GSCnormLon;
        yy = assignedAirCPlist(:,3) + GSCnormLat;
        for n = 1 : numOfAirObservPoints
            utmzoneM(n,:) = utmzone(1,:);
        end
        utmzone = utmzoneM;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        assignedAirCPlist(:,2) = Lon;
        assignedAirCPlist(:,3) = Lat;
    end
    
    % only converts if there are any ground drones
    if numOfGroundDrones ~= 0
        xx = assignedGroundCPlist(:,2) + GSCnormLon;
        yy = assignedGroundCPlist(:,3) + GSCnormLat;
        for n = 1 : numOfGroundObservPoints
            utmzoneM(n,:) = utmzone(1,:);
        end
        utmzone = utmzoneM;
        [Lat,Lon] = utm2deg(xx,yy,utmzone);
        assignedGroundCPlist(:,2) = Lon;
        assignedGroundCPlist(:,3) = Lat;
    end
    
    % Combines observe point lists to one big list
    if (numOfAirDrones ~= 0)&&(numOfGroundDrones == 0)
        AssignedOPList = [assignedAirCPlist];
    elseif(numOfAirDrones == 0)&&(numOfGroundDrones ~= 0)
        AssignedOPList = [assignedGroundCPlist];
    else
        AssignedOPList = [assignedAirCPlist ; assignedGroundCPlist];
    end
    
    
    % Prints out the document
    ObservDocumentFormat = '%4.8f ,\t %4.8f ,\t %4.4f ,\t %4.4f ,\t %d ,\t %d, \r\n';

    
    A00 = size(AssignedOPList);
    NumOfObservPoint = A00(1,1);
    tic; %TEST LINE CODE
    
%% SAVES INFORMATION TO TEXT DOCUMENT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Dist_List_Text4 = fopen('Observation_Point_Distribution_Version4.txt','w');
    A1 = size(ACLocInMeter);
    numOfAirCraft = A1(1,1);
    fprintf(Dist_List_Text4, 'Number_Of_Aircraft, %d, \t Number_Of_Air_Drones, %d, \t Number_Of_Ground_Drones, %d, \t Number_of_Observ_Points, %d\r\n', ...
        numOfAirCraft,numOfAirDrones,numOfGroundDrones,NumOfObservPoint);
    fprintf(Dist_List_Text4,'DroneID, \t DroneLat, \t\t DroneLon, \t\t DroneHeight, \t DroneType \r\n')
    for n = 1 : length(DroneData(:,1))
        fprintf(Dist_List_Text4,'%d, \t\t %f, \t %f, \t\t %f, \t %d, \r\n',DroneData(n,1),DroneData(n,2),...
            DroneData(n,3),DroneData(n,4),DroneData(n,6));
    end
    
    fprintf(Dist_List_Text4, 'Aircraft_ID \t OP_Lattitude \t OP_Longitude \t');
    fprintf(Dist_List_Text4, ' OP_Height \t Cam_Azimuth \t Cam_Angle \t');
    fprintf(Dist_List_Text4, ' Assigned_Drone \t Drone_Type \t Inspected \t Error \r\n');
    
    A2 = size(AssignedOPList);
    OPListSize =A2(1,1);
    for n = 1 : OPListSize
        fprintf(Dist_List_Text4, '%d,\t\t %4.8f,\t %4.8f,\t %4.6f,\t %4.8f,\t %4.8f,\t   %d,\t\t   %d,\t\t   0,\t\t   0, \r\n',...
            AssignedOPList(n,1),AssignedOPList(n,3),AssignedOPList(n,2),AssignedOPList(n,4),...
            AssignedOPList(n,5),AssignedOPList(n,6),AssignedOPList(n,8),AssignedOPList(n,7));
    end
    fclose(Dist_List_Text4)
    time2write = toc; %TEST LINE CODE
    
    drawnow
    
%% This part runs continuously checking the flags for mission completion
    MissionComplete = 0;
    t = 0;
    DroneStartPoints = DroneDataTemp(:,[1, 2, 3, 4, 6]);
    RTB = 0;
    AllHome = 0;
    handles.Status.String = 'Mission Running';
    handles.Status.BackgroundColor = [0 1 0];
    
    % Runs as long as mission is not complete
    while(MissionComplete == 0)
        
        %checks laptop clock and reads text document only once every 10 seconds
        format long
        Time01 = clock;
        Time02 = round(Time01(1,6)*100)/100;
        Timing = rem(Time02,10);
        if Timing < 1
            
            i = 0;
            
            fileID2 = fopen('Observation_Point_Distribution_Version4.txt'); % Opens file
            C_text0 = textscan(fileID2,'%s'); % Copies strings in file
            fclose(fileID2); % closes file
            
            a = C_text0{1,1}; %makes 1 column of all strings in the txt file
            inputDataLength = length(a);
            coolA =erase(a,','); % removes all commas
            NumberOfAircraft = str2num(coolA{2,1}); % gets number of aircraft from saved copy of txt document
            NumberOfAirDrones = str2num(coolA{4,1}); % gets number of airdrones from saved copy of txt document
            NumberOfGroundDrones = str2num(coolA{6,1}); % gets number of ground drones from saved copy of txt document
            NumberOfObservPoints = str2num(coolA{8,1}); % gets number of obervation points from saved copy of txt document
            i = 13;
            % goes through txt document compiling array of drone information
            for n = 1 : (NumberOfAirDrones+NumberOfGroundDrones)
                for m = 1 : 5
                    i = i + 1;
                    DroneData(n,m) = str2num(coolA{i,1});
                end
            end
            i = i + 10;
            % goes through txt document compiling array of observation point information
            for n = 1 : NumberOfObservPoints
                for m = 1 : 10
                    i = i +1;
                    ObservPointData(n,m) = str2num(coolA{i,1});
                end
            end
            
            %% %%%%%%%%% Checks column 9 of Read observpoint data %%%%%%%%%
            % If all the Observation points have been inspected then the
            % mean of column 9 will be 1. signifying mission completion
%%%%%%%%%%%%% THINGS FALL APART PAST THIS POINT REALLY %%%%%%%%%%%%%%%%%%%%
            if mean(ObservPointData(:,9)) ~= 1;
                MissionComplete = 0;            
            elseif (mean(ObservPointData(:,9)) == 1)&&(RTB == 0)&&(AllHome  == 0);
                MissionComplete = 1
            elseif (mean(ObservPointData(:,9)) == 1)&&(RTB == 1)&&(AllHome  == 0);
                MissionComplete = 1
                handles.Status.String = 'Mission Complete: Returning to Base';
                handles.Status.BackgroundColor = [0 .5 0];
            elseif (mean(ObservPointData(:,9)) == 1)&&(AllHome  == 1)&&(RTB == 0);
                MissionComplete = 1
                handles.Status.String = 'Mission Complete';
                handles.Status.BackgroundColor = [1 1 1];
            end
            
            %             if mean(ObservPointData(:,10)) ~= 0;
            %                 for n = 1 : NumberOfObservPoints
            %
            %                 end
            %             end
        end
        
        
        %% SENDS DRONES TO ORIGINAL START LOCATIONS WHEN MISSION IS DONE OR EMERGENCY STOP
        % Writes the saved original positions from the start to the txt
        % document to tell the drones to return to their start points
        if (MissionComplete == 1)&&(RTB ~= 1)
            Dist_List_Text4A = fopen('Observation_Point_Distribution_Version4.txt','w');
            A1 = size(ACLocInMeter);
            numOfAirCraft = A1(1,1);
            NumOfObservPoint = numOfAirDrones + numOfGroundDrones;
            fprintf(Dist_List_Text4A, 'Number_Of_Aircraft, %d, \t Number_Of_Air_Drones, %d, \t Number_Of_Ground_Drones, %d, \t Number_of_Observ_Points, %d\r\n', ...
                numOfAirCraft,numOfAirDrones,numOfGroundDrones,NumOfObservPoint);
            fprintf(Dist_List_Text4A,'DroneID, \t DroneLat, \t\t DroneLon, \t\t DroneHeight, \t DroneType \r\n')
            for n = 1 : length(DroneData(:,1))
                fprintf(Dist_List_Text4A,'%d, \t\t %f, \t %f, \t\t %f, \t %d, \r\n',DroneData(n,1),DroneData(n,2),...
                    DroneData(n,3),DroneData(n,4),DroneData(n,6));
            end
            
            fprintf(Dist_List_Text4A, 'Aircraft_ID \t OP_Lattitude \t OP_Longitude \t');
            fprintf(Dist_List_Text4A, ' OP_Height \t Cam_Azimuth \t Cam_Angle \t');
            fprintf(Dist_List_Text4A, ' Assigned_Drone \t Drone_Type \t Inspected \t Error \r\n');
            
            for nDSP = 1 : (length(DroneData(:,1)))
                fprintf(Dist_List_Text4A, '0,\t\t %4.8f,\t %4.8f,\t %4.6f,\t 0,\t 0,\t   %d,\t\t   %d,\t\t   0,\t\t   0, \r\n',...
                    DroneStartPoints(nDSP,2),DroneStartPoints(nDSP,3),DroneStartPoints(nDSP,4),...
                    DroneStartPoints(nDSP,1),DroneStartPoints(nDSP,5));
            end
            fclose(Dist_List_Text4)
%             'test point 2158'
            RTB = 1;
            MissionComplete = 0;
        end
        if RTB == 1
            RTBmean = mean(ObservPointData(:,9))
            if RTBmean == 1
                AllHome = 1;
            end
        end
    end
    
end

'test point 2166'

% --- Executes during object creation, after setting all properties.
function MissionDisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MissionDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate MissionDisplay


% --- Executes on selection change in PresetInputs.
function PresetInputs_Callback(hObject, eventdata, handles)

%% Populates the GUI with input data reflecting aricraft at  MCAS Cherry Point
if handles.PresetInputs.Value == 2
    handles.AC_1_Lat.String = '34.906788'; handles.AC_1_Long.String = '-76.892202'; handles.AC_1_Height.String = '0';
    handles.AC_1_Azimuth.String = '315'; handles.AC_1_Buno.String = '123456'; handles.AC_1_Type.Value = 2;
    
    handles.AC_2_Lat.String = '34.907089 '; handles.AC_2_Long.String = '-76.891824 '; handles.AC_2_Height.String = '0';
    handles.AC_2_Azimuth.String = '315'; handles.AC_2_Buno.String = '951846'; handles.AC_2_Type.Value = 2;
    
    handles.AC_3_Lat.String = '34.907360'; handles.AC_3_Long.String = '-76.892857'; handles.AC_3_Height.String = '0';
    handles.AC_3_Azimuth.String = '315'; handles.AC_3_Buno.String = '789456'; handles.AC_3_Type.Value = 2;
    
    handles.AC_4_Lat.String = '34.907661'; handles.AC_4_Long.String = '-76.892508'; handles.AC_4_Height.String = '0';
    handles.AC_4_Azimuth.String = '315'; handles.AC_4_Buno.String = '741963'; handles.AC_4_Type.Value = 2;
    
    handles.AC_5_Lat.String = '34.907390'; handles.AC_5_Long.String = '-76.891442'; handles.AC_5_Height.String = '0';
    handles.AC_5_Azimuth.String = '315'; handles.AC_5_Buno.String = '258369'; handles.AC_5_Type.Value = 2;
    
    handles.Drone_1_Lat.String = '34.9068048'; handles.Drone_1_Long.String = '-76.8929948'; handles.Drone_1_Height.String = '0';
    handles.Drone_1_ID.String = '1111'; handles.Drone_1_Type.Value = 2;
    
    handles.Drone_2_Lat.String = '34.906799'; handles.Drone_2_Long.String = '-76.8934162';
    handles.Drone_2_Height.String = '0'; handles.Drone_2_ID.String = '2222'; handles.Drone_2_Type.Value = 3;
    
    handles.Drone_3_Lat.String = '34.906878'; handles.Drone_3_Long.String = '-76.8934992'; handles.Drone_3_Height.String = '0';
    handles.Drone_3_ID.String = '3333'; handles.Drone_3_Type.Value = 2;
    
    handles.Drone_4_Lat.String = '34.906797'; handles.Drone_4_Long.String = '-76.8930342'; handles.Drone_4_Height.String = '0';
    handles.Drone_4_ID.String = '4444'; handles.Drone_4_Type.Value = 3;
    
    handles.Drone_5_Lat.String = '34.906953'; handles.Drone_5_Long.String = '-76.8930992';
    handles.Drone_5_Height.String = '0'; handles.Drone_5_ID.String = '5555'; handles.Drone_5_Type.Value = 2;
    
    handles.Drone_6_Lat.String = '34.906847'; handles.Drone_6_Long.String = '-76.8931872';
    handles.Drone_6_Height.String = '0'; handles.Drone_6_ID.String = '6666'; handles.Drone_6_Type.Value = 3;
    
    handles.Drone_7_Lat.String = '34.907'; handles.Drone_7_Long.String = '-76.8927972';
    handles.Drone_7_Height.String = '0'; handles.Drone_7_ID.String = '7777'; handles.Drone_7_Type.Value = 2;
    
    handles.Drone_8_Lat.String = '34.906847'; handles.Drone_8_Long.String = '-76.8925552';
    handles.Drone_8_Height.String = '0'; handles.Drone_8_ID.String = '8888'; handles.Drone_8_Type.Value = 3;
    
    handles.Drone_9_Lat.String = '34.906537'; handles.Drone_9_Long.String = '-76.8924395';
    handles.Drone_9_Height.String = '0'; handles.Drone_9_ID.String = '9999'; handles.Drone_9_Type.Value = 2;
    
    handles.Drone_10_Lat.String = '34.906436'; handles.Drone_10_Long.String = '-76.8927435';
    handles.Drone_10_Height.String = '0';  handles.Drone_10_ID.String = '6969'; handles.Drone_10_Type.Value = 3;
    
    handles.Drone_11_Lat.String = '34.907216'; handles.Drone_11_Long.String = '-76.8931872';
    handles.Drone_11_Height.String = '0'; handles.Drone_11_ID.String = '1234'; handles.Drone_11_Type.Value = 2;
    
    handles.GCS_Height.String = '0'; handles.GCS_Lat.String = '34.906483  '; handles.GCS_Lon.String = '-76.892583 ';
    
    
end


% --- Executes during object creation, after setting all properties.
function PresetInputs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
