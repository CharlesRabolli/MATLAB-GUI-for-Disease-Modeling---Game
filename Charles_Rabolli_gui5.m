function varargout = Charles_Rabolli_gui5(varargin)
% CHARLES_RABOLLI_GUI5 MATLAB code for Charles_Rabolli_gui5.fig
%      CHARLES_RABOLLI_GUI5, by itself, creates a new CHARLES_RABOLLI_GUI5 or raises the existing
%      singleton*.
%
%      H = CHARLES_RABOLLI_GUI5 returns the handle to a new CHARLES_RABOLLI_GUI5 or the handle to
%      the existing singleton*.
%
%      CHARLES_RABOLLI_GUI5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHARLES_RABOLLI_GUI5.M with the given input arguments.
%
%      CHARLES_RABOLLI_GUI5('Property','Value',...) creates a new CHARLES_RABOLLI_GUI5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Charles_Rabolli_gui5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Charles_Rabolli_gui5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Charles_Rabolli_gui5

% Last Modified by GUIDE v2.5 01-Dec-2016 01:51:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Charles_Rabolli_gui5_OpeningFcn, ...
                   'gui_OutputFcn',  @Charles_Rabolli_gui5_OutputFcn, ...
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


% --- Executes just before Charles_Rabolli_gui5 is made visible.
function Charles_Rabolli_gui5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Charles_Rabolli_gui5 (see VARARGIN)

% Choose default command line output for Charles_Rabolli_gui5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Charles_Rabolli_gui5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Charles_Rabolli_gui5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Initial = [1,5];
time = [0,1000];
Population = evalin('base','Population');
Vir = evalin('base','Vir');
f = @(t,y) Infection(t,y, Population, Vir);
[t,y] = ode45(f,time,Initial);
% plot(t,y(:,1),'b',t,y(:,2),'r');
% ylabel('Number of People')
% legend('Dead','Infected')

Researchstart = 0.1*Population; % 10% of population because I previously 
%said that when 10% of populaton dies, vaccine starts being researched
Finding = find(y(:,1) >= Researchstart);
DrugTime = Finding(1);
TimeToStart = evalin('base', 'TimeToStart');
VaccineDispersal = evalin('base','VaccineDispersal');

Initial = [1,5];
time3 = [0,DrugTime + TimeToStart];
f = @(t,y) Infection(t,y, Population, Vir);
[t,y] = ode45(f,time3,Initial);

Initial2 = [y(end,1),y(end,2),0];
time2 = [DrugTime + TimeToStart,1000];
g = @(t,y) Vaccine(t,y,Population,Vir,VaccineDispersal);
[t2,V] = ode23(g,time2,Initial2);
[maxInfect, TimemaxInf] = max(V(:,2));
maxDead = floor(max(V(:,1))); % Get whole number b/c its people
maxVacc = floor(max(V(:,3)));
FinalTime = TimemaxInf + DrugTime + TimeToStart + 20;
axis([0, FinalTime, 0, Population])
hold on
plot(t2,V(:,1),'b',t2,V(:,2),'r',t2,V(:,3),'g');
ylabel('Number of People')
xlabel('Days after patient zero found dead')
legend('Dead','Infected','Vaccinated','location','NW')
hold on
plot(t,y(:,1),'b',t,y(:,2),'r');
title('Outcome of Population')

set(handles.text2,'String',(num2str(maxDead)))
set(handles.text4,'String',(num2str(maxVacc)))


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all
close all
clc
Charles_Rabolli_gui1