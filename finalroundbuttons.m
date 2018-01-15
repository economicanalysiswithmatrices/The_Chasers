global A
%this is the number of question you got right in the first part of the
%final round
global point
%determines which answer button has been clicked
global numbutton
%determines whether it is the first or second part of the final round
global round
%changes to 0 when answers is wrong and 1 when answer is right
global check
if numbutton ==1
    answer= get(handles.pushbutton1, 'string');
    
elseif numbutton==2
    answer= get(handles.pushbutton2, 'string');
    
elseif numbutton ==3
    answer = get(handles.pushbutton3, 'string');
else
    answer = "";

end

set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
global timer_switch
timer_switch = 1;
if strcmp(answer,A(2,1))
     set(handles.figure,'Color','green');
     check = 1;
     pause(0.5)
     if  round == 0
     point = point +1;
     end
else
   check = 0;
 set(handles.figure,'Color','red');
  X = get(handles.pushbutton1, 'string');
Y = get(handles.pushbutton2, 'string');
Z = get(handles.pushbutton3, 'string');

%compares string from button and correct answer and highlights the correct
%answer green
if strcmp(X,A(2,1))
set(handles.pushbutton1,'BackgroundColor','green');
elseif strcmp(Y,A(2,1))
set(handles.pushbutton2,'BackgroundColor','green');
else
set(handles.pushbutton3,'BackgroundColor','green');
end
  pause(0.5)
    
end
 

  numbutton = 0;