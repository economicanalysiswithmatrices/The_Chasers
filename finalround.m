function varargout = finalround(varargin)
% FINALROUND MATLAB code for finalround.fig
%      FINALROUND, by itself, creates a new FINALROUND or raises the existing
%      singleton*.
%
%      H = FINALROUND returns the handle to a new FINALROUND or the handle to
%      the existing singleton*.
%
%      FINALROUND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALROUND.M with the given input arguments.
%
%      FINALROUND('Property','Value',...) creates a new FINALROUND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalround_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalround_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalround

% Last Modified by GUIDE v2.5 12-Jan-2018 18:04:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalround_OpeningFcn, ...
                   'gui_OutputFcn',  @finalround_OutputFcn, ...
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


% --- Executes just before finalround is made visible.
function finalround_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalround (see VARARGIN)

% Choose default command line output for finalround
handles.output = hObject;
bg_image = imread('bradleywalsh.jpg');
set(handles.pushbutton6, 'CData', bg_image);
global point
point = 0;
global round
round = 0;
global counter
counter = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalround wait for user response (see UIRESUME)
% uiwait(handles.finalRound);


% --- Outputs from this function are returned to the command line.
function varargout = finalround_OutputFcn(~, eventdata, handles) 
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
global numbutton
numbutton =1;
finalroundbuttons
global round
if round == 0
finalroundquestionbank
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numbutton
numbutton =2;
finalroundbuttons
global round
if round == 0
finalroundquestionbank
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numbutton
numbutton =3;
finalroundbuttons
global round
if round == 0
finalroundquestionbank
end



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
  global point
  global check 
  global numbutton
  global prizepot
  global timer_switch
  timer_switch = 0;
  
   numbutton = 0;
  target = point;
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
set(handles.pushbutton4,'visible','off')
score = 0;
ax2=axes('Units','pix','Position',[100 350 500 20]);
set(ax2,'Xtick',[],'Ytick',[],'Xlim',[0 1000]);
box on;
 global  chasersuccess
  finalroundtimer = 30;
  pause(1)
while finalroundtimer > 0
  timer_switch = 0;
   finalroundtimer=  finalroundtimer-1;
   set(handles.edit3,'Visible','on')
   set(handles.edit3,'string',finalroundtimer)
if point==0   
set(handles.edit4,'String','You have failed to get a single point!')
set(handles.Restart,'visible','on')
break
end
   chaseprob = randi(10);
if chaseprob <  chasersuccess
    score = score + 1;
    
    
%if the chaser is wrong
else
set(handles.edit4,'String','Stop the clock')
pause(1)
set(handles.edit4,'String','Answer the following question')

set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.edit1,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit3,'Visible','on')
set(handles.edit4,'String','You have 5 seconds to push the chaser back one step!')
check = 0;
  finalroundquestionbank
  for t2=0:5
    if timer_switch == 1
       set(handles.edit3,'Visible','off')
        break
    end
    minitimer =5-t2;
    set(handles.edit3,'string',minitimer);
    pause(1)
    
  end
  
 

set(handles.pushbutton1,'Visible','off')
set(handles.pushbutton2,'Visible','off')
set(handles.pushbutton3,'Visible','off')
set(handles.edit1,'Visible','off')

    
    if check == 1
        if score > 0
            score = score - 1;
            set(handles.edit4,'String','You have pushed the chaser back one step!')

        else
            target = target +1;
            set(handles.edit4,'String','You have pushed one space further ahead')
            set(handles.edit2,'string',target)
        end
        
    elseif check == 0
         set(handles.edit4,'String','You have failed to answer the question correctly')
    
    end
        pause (2)
        set(handles.edit4,'String','Start the clock')
        set(handles.figure,'Color','blue');    
end
     
    y = (round(1000*score/target));
 
    axes(ax2)
    cla
	rectangle('Position',[0,0,y,20],'FaceColor','r','EdgeColor','b'); 
    text(480,10,[num2str(round(score)),'']);
  if target == score
      set(handles.edit4,'String','You have been caught')
      set(handles.Restart,'visible','on')
      break
  elseif finalroundtimer==0
   
       set(handles.edit4,'String',('Congratulation,you have won'));
       set(handles.Restart,'visible','on')
        break
  end
      
    pause(1)
    
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
global numbutton
numbutton = 0;
global round
set(handles.text4,'Visible','off')
set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.edit1,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit3,'Visible','on')
set(handles.pushbutton7,'Visible','off')
finalroundquestionbank


 global point
 point = 0;

for t=0:30
    Timer =30-t;
    set(handles.edit3,'string',Timer);
    pause(1)
if t==30
round = 1;
clear sound

set(handles.pushbutton1,'Visible','off')
set(handles.pushbutton2,'Visible','off')
set(handles.pushbutton3,'Visible','off')
set(handles.edit1,'Visible','off')
set(handles.edit3,'Visible','off')
set(handles.pushbutton4,'visible','on')

 set(handles.edit4,'String','Press start for the chasers turn to commence')
    
end
    
end

% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Restart.
function Restart_Callback(hObject, eventdata, handles)
% hObject    handle to Restart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close finalround
FirstRound
