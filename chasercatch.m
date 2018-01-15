clear sound
%turn timer box off
set(handles.edit4,'Visible','off')
%determines  the second round 5 second timer
global sec
%determines what button has been pressed
global numbutton
global A
%how far the contestant is from home
global Score
%how far the chaser is from home
global chaser
%whether the loop that emulates the 5 second timer carries on running
global timer_switch
global chasersuccess
global prizepot
%when timer_switch = it is breaks  the loop that emulates the 5 second timer
timer_switch = 1;


% if no answer was chosen when the timer runs out
if sec == -1
   numbutton = 0;
end
% deactivate the buttons
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
%if no answer is chosen 
if numbutton ==0
else
set(handles.edit3,'string','Your answer was');
end

pause(1)
%determining what answer the player chose
if numbutton ==1
    answer= get(handles.pushbutton1, 'string');
    set (handles.pushbutton1,'BackgroundColor','blue')
elseif numbutton==2
    answer= get(handles.pushbutton2, 'string');
    set (handles.pushbutton2,'BackgroundColor','blue')
elseif numbutton ==3
    answer= get(handles.pushbutton3, 'string');
    set (handles.pushbutton3,'BackgroundColor','blue')
else
    %if no answer then answer is blank
    answer = "";
end
    
pause(2)

%get the text from the anserbutton
X = get(handles.pushbutton1, 'string');
Y = get(handles.pushbutton2, 'string');
Z = get(handles.pushbutton3, 'string');


% hightlights the correct answer
set(handles.edit3,'string',"The Correct answer was");

pause(2)

%compares string from button and correct answer and highlights the correct
%answer green
if strcmp(X,A(2,1))
set(handles.pushbutton1,'ForegroundColor','green');
elseif strcmp(Y,A(2,1))
set(handles.pushbutton2,'ForegroundColor','green');
elseif strcmp(Z,A(2,1))
set(handles.pushbutton3,'ForegroundColor','green');
end

 pause(2)
 %determinig if the player was right and to move the closer to 'home'
 %if the answer was right it move the text a button downto the new button and clears the
 %text of the  the original button
 if strcmp(answer,A(2,1))
    Score = Score +1;
    if Score== 3
    set(handles.pushbutton7,'string', get(handles.pushbutton6, 'string'));
    set(handles.pushbutton6,'string',"");
    set(handles.pushbutton7,'BackgroundColor','blue');
    set(handles.pushbutton6,'BackgroundColor',[0 1 1]);
    elseif Score== 4
    set(handles.pushbutton8,'string', get(handles.pushbutton7, 'string'));
    set(handles.pushbutton7,'string',"");
    set(handles.pushbutton8,'BackgroundColor','blue');
     set(handles.pushbutton7,'BackgroundColor',[0 1 1]);
    elseif Score ==5
    set(handles.pushbutton9,'string', get(handles.pushbutton8, 'string'));
    set(handles.pushbutton8,'string',"");
    set(handles.pushbutton9,'BackgroundColor','blue');
     set(handles.pushbutton8,'BackgroundColor',[0 1 1]);
     elseif Score ==6
         %this is the win condtion of this round. It will open the
         %finalround when the player has reached 'home'
    set(handles.edit3,'String','You have beat the chaser.')
    pause(2)
    set(handles.edit3,'String','You will be taken to the final round.')
    pause(3)
    prizepot = get(handles.pushbutton9, 'string');
    finalround
   set(handles.figure1,'visible','off')
   
     end
end

%highlights chaser's answer
chaseprob = randi(10);
set(handles.edit3,'string',"The Chaser's answer was");

pause(2)
 
%if the chaser is correct
if chaseprob <= chasersuccess
    
     if strcmp(X,A(2,1))
     set(handles.pushbutton1,'BackgroundColor','red');
     elseif strcmp(Y,A(2,1))
     set(handles.pushbutton2,'BackgroundColor','red');
     elseif strcmp(Z,A(2,1))
     set(handles.pushbutton3,'BackgroundColor','red');
     end
    chaser = chaser +1;    
    
%if the chaser is wrong
else
    wronganswer = randi(2);
      if strcmp(X,A(2,1))
          if wronganswer ==1
         %set answer button two to chasers wrong answer if wronganswer = 1
          set(handles.pushbutton2,'BackgroundColor','red');
          else
          set(handles.pushbutton3,'BackgroundColor','red');
          end
      elseif strcmp(Y,A(2,1))
          if wronganswer ==1
          set(handles.pushbutton1,'BackgroundColor','red');
          else
          set(handles.pushbutton3,'BackgroundColor','red');
          end
      elseif strcmp(Z,A(2,1))
          if wronganswer ==1
          set(handles.pushbutton1,'BackgroundColor','red');
          else
          set(handles.pushbutton2,'BackgroundColor','red');
          end
      end
end


 pause(2)

 % advance the chaser for each time the chaser get the question right
if chaser == 1
     set(handles.pushbutton5,'BackgroundColor','red');
elseif chaser == 2
    set(handles.pushbutton6,'BackgroundColor','red');
elseif chaser ==3
    set(handles.pushbutton7,'BackgroundColor','red');
elseif chaser ==4
    set(handles.pushbutton8,'BackgroundColor','red');    
end
%when the chaser catches you
if Score == chaser
set(handles.edit3,'String','You have been caught and for you the chase is over')
pause(2)
set(handles.edit3,'String','Click on restart to start from the begining')
set(handles.restart,'visible','on')
elseif chaser < Score && Score< 6  
%when the chaser hasn't caught you and when you haven't won yet
set(handles.edit3,'String','Click ready for next question')
set(handles.pushbutton12,'Enable','on')
end


