function varargout = Charles_Rabolli_gui2(varargin)
% CHARLES_RABOLLI_GUI2 MATLAB code for Charles_Rabolli_gui2.fig
%      CHARLES_RABOLLI_GUI2, by itself, creates a new CHARLES_RABOLLI_GUI2 or raises the existing
%      singleton*.
%
%      H = CHARLES_RABOLLI_GUI2 returns the handle to a new CHARLES_RABOLLI_GUI2 or the handle to
%      the existing singleton*.
%
%      CHARLES_RABOLLI_GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHARLES_RABOLLI_GUI2.M with the given input arguments.
%
%      CHARLES_RABOLLI_GUI2('Property','Value',...) creates a new CHARLES_RABOLLI_GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Charles_Rabolli_gui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Charles_Rabolli_gui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Charles_Rabolli_gui2

% Last Modified by GUIDE v2.5 23-Nov-2016 16:13:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Charles_Rabolli_gui2_OpeningFcn, ...
                   'gui_OutputFcn',  @Charles_Rabolli_gui2_OutputFcn, ...
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


% --- Executes just before Charles_Rabolli_gui2 is made visible.
function Charles_Rabolli_gui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Charles_Rabolli_gui2 (see VARARGIN)

% Choose default command line output for Charles_Rabolli_gui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Charles_Rabolli_gui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Charles_Rabolli_gui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



Vir = get(handles.slider1,'Value');
assignin('base', 'Vir', Vir)
x= 1:12;
x1 = [3,3];
x2 = 9;
x3 = 3:5;
x4 = [5,5];
x5 = 5:6;
x6 = [6,7];
x7 = [7,7];
x8 = 7:9;
x9 = [9,9];
y1 = 10*(get(handles.slider1,'Value'));
y2 = [10*(get(handles.slider1,'Value')),20*(get(handles.slider1,'Value')),30*(get(handles.slider1,'Value'))];
y3 = [30*(get(handles.slider1,'Value')),60*(get(handles.slider1,'Value'))];
y4 = [30*(get(handles.slider1,'Value')),20*(get(handles.slider1,'Value'))];
y5 = [60*(get(handles.slider1,'Value')),70*(get(handles.slider1,'Value'))];
y6 = [20*(get(handles.slider1,'Value')),30*(get(handles.slider1,'Value'))];
y7 = [70*(get(handles.slider1,'Value')),60*(get(handles.slider1,'Value'))];
y8 = [30*(get(handles.slider1,'Value')),60*(get(handles.slider1,'Value'))];
y9 = [30*(get(handles.slider1,'Value')),20*(get(handles.slider1,'Value')),10*(get(handles.slider1,'Value'))];



plot(handles.axes1,x1,[0,y1])
axis([0,12,0,100])
hold on
plot(handles.axes1,x3,y2)
plot(handles.axes1,x4,y3)
plot(handles.axes1,x5,y4)
plot(handles.axes1,x5,y5)
plot(handles.axes1,x6,y6)
plot(handles.axes1,x6,y7)
plot(handles.axes1,x7,y8)
plot(handles.axes1,x8,y9)
plot(handles.axes1,x9,[0,y1])
hold off

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.slider1,'Value') == 0
    Charles_Rabolli_End1
else
Charles_Rabolli_gui3
end
