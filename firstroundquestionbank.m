 set(handles.figure1,'Color','blue');
global counter
global questionorder



   
myquestion ={'How many languages and dialects are spoken by people all over the world?';
'Approximately, how many people speak Chinese language';
'Who is the author of the book: TheTime machine?';
'Who developed the small pox vaccination?';
'Who is American General who led the revolt against the British & declared American independence';
'What did Marco Polo discover?';
'Who was first to reach the South Pole?';
'What is the national sport of Canada';
'Which country is the densest in population?';
'Which country is the biggest in land area?';
'Where is the biggest desert on earth?';
'The highest mountain of the world is in which two countries?';
'Which is the northernmost capital city in the world?';
'Which capital city in the world is at the highest altitude?';
'A string quartet normally includes how many violins?';
'In Roman mythology, who was the father of Romulus and Remus?';
'The dessert dish tiramisu originated in which country?';
'Who played the character Vin in the 1960 western The Magnificent Seven?';
'The Peterloo Massacre took place in 1819 in which English city?';
'How many red boxes feature in the TV game show Deal or No Deal?';
'Mrs Gamp is a character in which Charles Dickens novel?';
'The city of Durham stands on which river?';
'Which English king was nicknamed "Rufus"?';
'Which North African country lies between Tunisia and Egypt?';
'What nationality was the painter Paul Klee, who died in 1940?'};
      
             
 myCA ={'9000';
 '1 billion';
 'H.G. Wells';
 'Edward Jenner';
 'George Washington';
 'Parts of China and India';
 'Captain Amundsen';
 'Lacrosse';
 'Monaco';
 'Russia';
 'Antarctica';
 'Tibet and Nepal';
 'Reykjavik, Iceland';
 'La Paz, Bolivia';
 'Two';
 'Mars';
 'Italy';
 'Steve McQueen';
 'Manchester';
 '22';
 'Martin Chuzzlewit';
 'Wear';
 'William II';
 'Libya';
 'Swiss'};
 
  
myWA1 ={'6000';
'1 million';
'Lewis Carroll';
'Alexander Fleming';
'Bill Clinton';
'Greenland';
'Captain R.E. Scett';
'Tennis';
'China';
'China';
'Siberia';
'China and Tibet';
'Oslo, Norway';
'Bern, Switzerland';
'One';
'Mercury';
'Japan';
'Charles Bronson';
'Birmingham';
'20';
'Bleak House';
'Tyne';
'Edward II';
'Algeria';
'Dutch'};

 
myWA2 ={'4000';
'1 thousand';
'Robert Louis Stevenson';
'Albert Einstein';
'George Bush';
'Canada';
'Sir Edmund Hillary';
'Hockey';
'Bahrain';
'Canada';
'California';
'Pakistan and Nepal';
'Moscow, Russia';
'Katamandu, Nepal';
'Three';
'Jupiter';
'Portugal';
'James Coburn';
'London';
'24';
'David Copperfield';
'Tees';
'Henry II';
'Morocco';
'Swedish'};

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

Q = randperm(3,3);


  set(handles.pushbutton1,'string',B(Q(1,1),1));
  set(handles.pushbutton2,'string',B(Q(1,2),1));
  set(handles.pushbutton3,'string',B(Q(1,3),1));
 
 
 global cash
 
set(handles.edit2,'string',cash);
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')


