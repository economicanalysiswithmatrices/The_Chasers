 %  Resets the figure and answer button colours
 set(handles.pushbutton1,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton2,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton3,'BackgroundColor',[1 1 1]);
 set(handles.figure,'Color','blue');



%the number of correct answers in the first part of the final round
global point
%wheter it is the first or second part of the final round. if 0 first part.
%if 1 second part
global round
% helps determine the question
global counter
% This is the question order
global questionorder
myquestion={'Who wrote the song White Christmas?';
'Where did George Mallory and Andrew Irvine disappear in 1924?';
'The word "impi" means a body of warriors in which African language?';
'What is the Japanese word for "goodbye"?';
'Who is the Premier Leagues all time top scorer?';
'At which Battle did the German army first use lethal chlorine gas during the First World War?';
'Which of the following James Bond films was the first to be released?';
'"Tiny Tim" is a character from Charles Dickens novella "A Christmas Carol", and also a variety of fruit. Which fruit?';
'Which evil film character utters the line "I will get you, my pretty, and your pretty little dog too"?';
'Benedict and Beatrice are featured as lovers in which William Shakespeare comedy?';
'What gland in the human body is responsible for regulating metabolism?';
'In the Disney 1955 animated classic "Lady and the Tramp", what is the name of Ladys owner?';
'What artist holds the record for the most singles listed on the Billboard Hot 100 chart, which did not reach number one?';
'Which of the following celebrities was the first to be born?';
'Useful for calculating internet speed and bandwidth, how many megabits are there in a megabyte?'};
    


myCA={'Irving Berlin';
'Mount Everest';
'Zulu';
'Sayonara';
'Alan Shearer';
'Second Battle of Ypres';
'From Russia with Love';
'Tomato';
'Wicked Witch of the West';
'Much Ado About Nothing';
'Thyroid';
'Darling';
'James Brown';
'Mother Teresa';
'Eight'};
 
 
myWA1={'Ivor Novello';
'Antarctica';
'Afrikaans';
'Origami';
'Wayne Rooney';
'The Somme Offensive';
'Goldfinger';
'Pear';
'Percival C. McLeach';
'The Taming of the Shrew';
'Pituitary';
'Diana';
'Michael Jackson';
'Nelson Mandela';
'Sixteen'};


myWA2={'Cole Porter';
'The Antlantic Ocean';
'Swahili';
'Sukiyaki';
'Thierry Henry';
'Battle of Passchendaele'; 
'You Only Live Twice';
'Plum';
'Cruella Deville Percival';
'Loves Labours Lost'; 
'Mammary';
'Danielle';
'Stevie Wonder';
'Marilyn Monroe'; 
'Twelve'};
%if counter = 0 then it generates a matrix where it contains no repeating
%numbers from 1 to length(myquestion).        
 if counter == 0
questionorder = randperm(length(myquestion));
 end
% increases counter vaule by 1
counter = counter +1;
%compiles the question bank
C = cell(4,length(myquestion));
  C(1,:) = myquestion;
  C(2,:) = myCA;
  C(3,:) = myWA1;
  C(4,:) = myWA2;

global A
%Randomly select a column from from the questionbank by using number in the
%column questionorder determined by the counter
  A = C(:,questionorder(:,counter));
  B = A(2:length(A));
  %if all questions have been asked reset counter to 0
if counter == length(myquestion)
  counter = 0;
end
 %set edit1 to the question
 textLabel = (A(1,1));
 set(handles.edit1, 'String', textLabel);

 Q = randperm(3);

%randomly assign answers to the answer buttons
 set(handles.pushbutton1,'string',B(Q(1,1),1));
 set(handles.pushbutton2,'string',B(Q(1,2),1));
 set(handles.pushbutton3,'string',B(Q(1,3),1));
  
  set(handles.figure,'Color','blue');
% enable answer buttons
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
if round == 0
set(handles.edit2,'string',point)
end



