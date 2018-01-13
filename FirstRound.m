function varargout = FirstRound(varargin)
% FIRSTROUND MATLAB code for FirstRound.fig
%      FIRSTROUND, by itself, creates a new FIRSTROUND or raises the existing
%      singleton*.
%
%      H = FIRSTROUND returns the handle to a new FIRSTROUND or the handle to
%      the existing singleton*.
%
%      FIRSTROUND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRSTROUND.M with the given input arguments.
%
%      FIRSTROUND('Property','Value',...) creates a new FIRSTROUND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FirstRound_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FirstRound_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FirstRound

% Last Modified by GUIDE v2.5 12-Jan-2018 17:17:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FirstRound_OpeningFcn, ...
                   'gui_OutputFcn',  @FirstRound_OutputFcn, ...
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


% --- Executes just before FirstRound is made visible.
function FirstRound_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FirstRound (see VARARGIN)

% Choose default command line output for FirstRound
handles.output = hObject;





% Update handles structure
guidata(hObject, handles);

%play opening theme tune
[y,Fs] = audioread('Pre-Show_Theme.mp3');
sound(y,Fs)
global counter
counter = 0;




% UIWAIT makes FirstRound wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FirstRound_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure

varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%deactivates the buttons when the question has been answered
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton1, 'string');

global A
global cash
%compares the text of the button with the text of the correct answer
if strcmp(X,A(2,1))
%if answer is right set background to green    
     set(handles.figure1,'Color','green');
     pause(0.5)
%if answer is right add 1000 to winnings
    cash = cash +1000;
else
  %if answer is wrong set background to red
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
firstroundquestionbank


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton2, 'string');
global A
global cash
if strcmp(X,A(2,1))
     set(handles.figure1,'Color','green');
     pause(0.5)
   
    cash = cash +1000;
else
  
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
firstroundquestionbank

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton3, 'string');
global A
global cash

if strcmp(X,A(2,1))
     set(handles.figure1,'Color','green');
     pause(0.5)
   
    cash = cash +1000;
else
     
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
firstroundquestionbank
% --- Executes on button press in pushbutton4.



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set the success rate of the chaser to 70%
global chasersuccess
 chasersuccess = 8;
 start

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set the success rate of the chaser to 80%
global chasersuccess
 chasersuccess = 9;
 start




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set the success rate of the chaser to 60%
global chasersuccess
chasersuccess = 7;
start
