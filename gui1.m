function varargout = gui1(varargin)
% GUI1 MATLAB code for gui1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui1

% Last Modified by GUIDE v2.5 23-Nov-2016 01:55:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui1_OpeningFcn, ...
                   'gui_OutputFcn',  @gui1_OutputFcn, ...
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


% --- Executes just before gui1 is made visible.
function gui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui1 (see VARARGIN)

% Choose default command line output for gui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = get(handles.listbox1,'Value');
if contents == 1
    Population = 2891203;
elseif contents == 2
    Population = 72079;
elseif contents == 3
    Population = 3032664;
elseif contents == 4
    Population = 8588982;
elseif contents == 5
    Population = 9946946;
elseif contents == 6
    Population = 9499565;
elseif contents == 7
    Population = 11404771;
elseif contents == 8
    Population = 3804584;
elseif contents == 9
    Population = 7079355;
elseif contents == 10
    Population = 4219329;
elseif contents == 11
    Population = 1183355;
elseif contents == 12
    Population = 10556720;
elseif contents == 13
    Population = 5703156;
elseif contents == 14
    Population = 1304421;
elseif contents == 15
    Population = 5543519;
elseif contents == 16
    Population = 64806587;
elseif contents == 17
    Population = 3924819;
elseif contents == 18
    Population = 81294532;
elseif contents == 19
    Population = 10893812;
elseif contents == 20
    Population = 9812193;
elseif contents == 21
    Population = 332749;
elseif contents == 22
    Population = 4708979;
elseif contents == 23
    Population = 59873673;
elseif contents == 24
    Population = 18012374;
elseif contents == 25
    Population = 1862381;
elseif contents == 26
    Population = 1935554;
elseif contents == 27
    Population = 37872;
elseif contents == 28
    Population = 2808100;
elseif contents == 29
    Population = 585311;
elseif contents == 30
    Population = 2083143;
elseif contents == 31
    Population = 420727;
elseif contents == 32
    Population = 3559501;
elseif contents == 33
    Population = 37588;
elseif contents == 34
    Population = 626996;
elseif contents == 35
    Population = 17008289;
elseif contents == 36
    Population = 5303804;
elseif contents == 37
    Population = 38629796;
elseif contents == 38
    Population = 10287733;
elseif contents == 39
    Population = 19287745;
elseif contents == 40
    Population = 146383747;
elseif contents == 41
    Population = 32315;
elseif contents == 42
    Population = 8793838;
elseif contents == 43
    Population = 5431862;
elseif contents == 44
    Population = 2072519;
elseif contents == 45
    Population = 46009407;
elseif contents == 46
    Population = 9894463;
elseif contents == 47
    Population = 8436753;
elseif contents == 48
    Population =80588485 ;
elseif contents == 49
    Population = 42477818;
elseif contents == 50
    Population = 65291920;
end
set(handles.text4,'String',Population);

switch contents
    
    case 1
        a = imread('albania.jpg');
        imshow(a);
        
    case 2
        a = imread('andorra.jpg');
        imshow(a)
        
    case 3
        a = imread('armenia.jpg');
        imshow(a)
        
    case 4
        a = imread('austria.jpg');
        imshow(a)
        
    case 5
        a = imread('az.jpg');
        imshow(a)
        
    case 6 
        a = imread('belarus.jpg');
        imshow(a)
        
    case 7 
        a = imread('belgium.jpg');
        imshow(a)
        
    case 8 
        a = imread('bh.jpg');
        imshow(a)
        
    case 9
        a = imread('bulgaria.jpg');
        imshow(a)
        
    case 10
        a = imread('croatia.jpg');
        imshow(a)
        
    case 11
        a = imread('cyprus.jpg');
        imshow(a)
        
    case 12
        a = imread('czech.jpg');
        imshow(a)
        
    case 13
        a = imread('denmark.jpg');
        imshow(a)
        
    case 14
        a = imread('estonia.jpg');
        imshow(a)
        
    case 15
        a = imread('finland.jpg');
        imshow(a)
        
    case 16 
        a = imread('france.jpg');
        imshow(a)
        
    case 17
        a = imread('georgia.jpg');
        imshow(a)
        
    case 18
        a = imread('germany.jpg');
        imshow(a)
        
    case 19
        a = imread('greece.jpg');
        imshow(a)
        
    case 20
        a = imread('hungary.jpg');
        imshow(a)
        
    case 21
        a = imread('iceland.jpg');
        imshow(a)
        
    case 22
        a = imread('ireland.jpg');
        imshow(a)
        
    case 23
        a = imread('italy.jpg');
        imshow(a)
        
    case 24
        a = imread('k.jpg');
        imshow(a)
        
    case 25
        a = imread('kosovo.jpg');
        imshow(a)
        
    case 26
        a = imread('latvia.jpg');
        imshow(a)
        
    case 27
        a = imread('l.jpg');
        imshow(a)
        
    case 28
        a = imread('lithuania.jpg');
        imshow(a)
        
    case 29
        a = imread('luxembourg.jpg');
        imshow(a)
        
    case 30 
        a = imread('macedonia.jpg');
        imshow(a)
        
    case 31
        a = imread('malta.jpg');
        imshow(a)
        
    case 32
        a = imread('moldova.jpg');
        imshow(a)
        
    case 33
        a = imread('monaco.jpg');
        imshow(a)
        
    case 34 
        a = imread('montenegro.jpg');
        imshow(a)
        
    case 35
        a = imread('netherlands.jpg');
        imshow(a)
        
    case 36
        a = imread('norway.jpg');
        imshow(a)
        
    case 37
        a = imread('poland.jpg');
        imshow(a)
        
    case 38
        a = imread('portugal.jpg');
        imshow(a)
        
    case 39
        a = imread('romania.jpg');
        imshow(a)
        
    case 40
        a = imread('russia.jpg');
        imshow(a)
        
    case 41
        a = imread('san.jpg');
        imshow(a)
        
    case 42
        a = imread('serbia.jpg');
        imshow(a)
        
    case 43
        a = imread('slovakia.jpg');
        imshow(a)
        
    case 44
        a = imread('slovenia.jpg');
        imshow(a)
        
    case 45
        a = imread('spain.jpg');
        imshow(a)
        
    case 46
        a = imread('sweden.jpg');
        imshow(a)
        
    case 47
        a = imread('swit.jpg');
        imshow(a)
        
    case 48
        a = imread('turkey.jpg');
        imshow(a)
        
    case 49
        a = imread('ukraine.jpg');
        imshow(a)
        
    case 50
        a = imread('uk.jpg');
        imshow(a)
end
