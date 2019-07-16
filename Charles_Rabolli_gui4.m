function varargout = Charles_Rabolli_gui4(varargin)
% CHARLES_RABOLLI_GUI4 MATLAB code for Charles_Rabolli_gui4.fig
%      CHARLES_RABOLLI_GUI4, by itself, creates a new CHARLES_RABOLLI_GUI4 or raises the existing
%      singleton*.
%
%      H = CHARLES_RABOLLI_GUI4 returns the handle to a new CHARLES_RABOLLI_GUI4 or the handle to
%      the existing singleton*.
%
%      CHARLES_RABOLLI_GUI4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHARLES_RABOLLI_GUI4.M with the given input arguments.
%
%      CHARLES_RABOLLI_GUI4('Property','Value',...) creates a new CHARLES_RABOLLI_GUI4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Charles_Rabolli_gui4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Charles_Rabolli_gui4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Charles_Rabolli_gui4

% Last Modified by GUIDE v2.5 23-Nov-2016 16:59:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Charles_Rabolli_gui4_OpeningFcn, ...
                   'gui_OutputFcn',  @Charles_Rabolli_gui4_OutputFcn, ...
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


% --- Executes just before Charles_Rabolli_gui4 is made visible.
function Charles_Rabolli_gui4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Charles_Rabolli_gui4 (see VARARGIN)

% Choose default command line output for Charles_Rabolli_gui4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Charles_Rabolli_gui4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Charles_Rabolli_gui4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on key press with focus on uitable1 and none of its controls.
function uitable1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n1 = str2num(get(handles.edit1,'String'));
n2 = str2num(get(handles.edit3,'String'));
assignin('base', 'TimeToStart', n1);
assignin('base','VaccineDispersal', n2);
if size(n1) == 0;
 set(handles.text3,'String','Error - Box A is not a number');
 elseif size(n2) == 0;
 set(handles.text3,'String','Error - Box B is not a number');
elseif n1 > 20
    set(handles.text3,'String','Error - Box A must be 20 days or less')
else
 Charles_Rabolli_gui5
end
