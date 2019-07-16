function varargout = Charles_Rabolli_Start(varargin)
% CHARLES_RABOLLI_START MATLAB code for Charles_Rabolli_Start.fig
%      CHARLES_RABOLLI_START, by itself, creates a new CHARLES_RABOLLI_START or raises the existing
%      singleton*.
%
%      H = CHARLES_RABOLLI_START returns the handle to a new CHARLES_RABOLLI_START or the handle to
%      the existing singleton*.
%
%      CHARLES_RABOLLI_START('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHARLES_RABOLLI_START.M with the given input arguments.
%
%      CHARLES_RABOLLI_START('Property','Value',...) creates a new CHARLES_RABOLLI_START or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Charles_Rabolli_Start_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Charles_Rabolli_Start_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Charles_Rabolli_Start

% Last Modified by GUIDE v2.5 23-Nov-2016 12:56:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Charles_Rabolli_Start_OpeningFcn, ...
                   'gui_OutputFcn',  @Charles_Rabolli_Start_OutputFcn, ...
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


% --- Executes just before Charles_Rabolli_Start is made visible.
function Charles_Rabolli_Start_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Charles_Rabolli_Start (see VARARGIN)

% Choose default command line output for Charles_Rabolli_Start
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Charles_Rabolli_Start wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Charles_Rabolli_Start_OutputFcn(hObject, eventdata, handles) 
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
Charles_Rabolli_gui1
