%  Resets the figure and button colours
 set(handles.figure1,'Color','blue');
 set(handles.pushbutton1,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton2,'BackgroundColor',[1 1 1]);
 set(handles.pushbutton3,'BackgroundColor',[1 1 1]);
global counter
% This is the question order
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
'What nationality was the painter Paul Klee, who died in 1940?';
'Which Apollo mission landed the first humans on the Moon?';
'What is the International Air Transport Association airport code for Heathrow Airport?';
'The reactor at the site of the Chernobyl nuclear disaster is in which country?';
'Which volcano is best known for its eruption in AD 79 that led to the destruction of Pompeii?';
'Which event from the 2012 Summer Olympics will be held at Lords Cricket Ground?';
'Who plays Lara Croft in the Tomb Raider series of films?';
'Who is the only British Prime Minister to have received the Nobel Prize in Literature?';
'What is the highest rank in the British Army?';
'What is the name of the tallest structure ever built?';
'Which skyscraper in New York City stands at the intersection of Fifth Avenue and West 34th Street?'};

      
             
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
 'Swiss';
 'Apollo 11';
 'LHR';
 'Ukraine';
 'Mount Vesuvius';
 'Archery';
 'Angelina Jolie';
 'Sir Winston Churchill';
 'Field Marshal';
 'Burj Khalifa';
 'Empire State Building'};

 
  
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
'Dutch';
'Apollo 9';
'HRW';
'Russia';
'Mount Etna';
'Shooting';
'Minnie Driver';
'Anthony Eden';
'Brigadier';
'CN Tower';
'Trump World Tower'};


 
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
'Swedish';
'Apollo 13';
'LHW';
'Hungary';
'Mount Stromboli';
'Fencing';
'Jennifer Aniston';
'Clement Attlee';
'Major General';
'Taipei 101';
'Chrysler Building'};



%if counter = 0 then it generates a matrix where it contains no repeating
%numbers from 1 to length(myquestion).
if counter == 0
questionorder = randperm(length(myquestion));
end
% increases counter vaule by 1
counter = counter +1;
% comply the question and answers into a cell(the question and answer bank)
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

%randomly assign answers to buttons
  set(handles.pushbutton1,'string',B(Q(1,1),1));
  set(handles.pushbutton2,'string',B(Q(1,2),1));
  set(handles.pushbutton3,'string',B(Q(1,3),1));
 
 
 global cash
 %set edit2 to show cash buildt up
set(handles.edit2,'string',cash);
% enable answer buttons
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')


