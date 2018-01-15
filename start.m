global cash
cash = 0;
clear sound
[y,Fs] = audioread('Cash-Builder_Music.mp3');
sound(y,Fs)
% score and timer labels visible
set(handles.text2,'Visible','on')
set(handles.text3,'Visible','on')
%make instructions invisible
set(handles.text4,'Visible','off')
%make answer buttons visible
set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
% score and timer  visible
set(handles.edit1,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit2,'string',cash)
set(handles.edit3,'Visible','on')
%make the difficulty buttons invisble
set(handles.pushbutton6,'Visible','off')
set(handles.pushbutton7,'Visible','off')
set(handles.pushbutton8,'Visible','off')
% starts the questions being answered
firstroundquestionbank
%starts the timer which changes the textbox display every second
for t=0:30
    Timer =30-t;
    set(handles.edit3,'string',Timer);
    pause(1)
if t==30
    
clear sound
%deactivate answer buttons
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')

%when the timer countsdown to 0 it will close the firstround and open the
%secondround
secondround2
close FirstRound
end
    
end