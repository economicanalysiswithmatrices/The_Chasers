global A
global point
global numbutton
global round
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
  pause(0.5)
    
end
 
 set(handles.figure,'Color','blue');
  numbutton = 0;