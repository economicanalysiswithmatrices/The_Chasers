 set(handles.pushbutton1,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton2,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton3,'BackgroundColor',[1 1 1]);
 set(handles.figure,'Color','blue');




global point
global round
global counter
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
        

 if counter == 0
questionorder = randperm(length(myquestion));
end
counter = counter +1;
numberofquestion = myquestion;
C = cell(4,length(myquestion));
  C(1,:) = myquestion;
  C(2,:) = myCA;
  C(3,:) = myWA1;
  C(4,:) = myWA2;

global A
  A = C(:,questionorder(:,counter));
  B = A(2:length(A));
if counter == length(myquestion)
  counter = 0;
end
 
 textLabel = (A(1,1));
 set(handles.edit1, 'String', textLabel);

 Q = randperm(3);

 set(handles.pushbutton1,'string',B(Q(1,1),1));
 set(handles.pushbutton2,'string',B(Q(1,2),1));
 set(handles.pushbutton3,'string',B(Q(1,3),1));
  
  set(handles.figure,'Color','blue');
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
if round == 0
set(handles.edit2,'string',point)
end



