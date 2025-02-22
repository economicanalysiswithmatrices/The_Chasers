
%question bank
global counter
% This is the question order
global questionorder

myquestion={'What do the Danish call Danish pastries?';
    'The German word kummerspeck, meaning weight gained through comfort eating, literally means what?';
    'What is a swede?';
    'Which of these was once the national drink of Scotland?';
    'What was a predecessor of the Milky Way bar?';
    'According to the International Cloud Atlas, which of these is the highest?';
    'Which is the deepest loch in Scotland?';
    'What was the first of Earths supercontinents?';
    'In which country was the Can-Can invented?';
    'The word "absinthe" comes from the Greek apsinthion, meaning what?';
    'Making its debut in September of 2017, "Young Sheldon" is a spin-off prequel to what popular TV sitcom?';
    'Which of the following songs was not a 2017 Billboard hit for Taylor Swift?';
    'Who won the Mens Golf Masters Tournament in April of 2017?'; 
    'Hall, Rosbah and Young shared the 2017 Nobel Prize in which field?';
    'King Salman removed a ban on women driving automobiles in which nation in 2017?';
    'English reality television judge "Simon Cowell" celebrated what birthday in October of 2017?';
    'What former Oasis front man released his debut solo album "As You Were" in 2017?';
    'What Internet search engine company was hit with $2.7 billion fine for engaging in antitrust behavior?';
    'Who won the "Artist of the Year Award" at the 2017 American Music Awards?';
    'Which of the following TV shows did not make its debut in 2017?';
    'The spacecraft Cassini?Huygens ended its 19-year mission by plunging into what planet on September 15, 2017?'; 
    'This nations flag features a gold lion holding a kastane sword with its right forepaw. Can you name which country it belongs to?';
    'The disorder of "rickets" is most often caused by a deficiency of which vitamin?';
    'The Bridal Chorus, generally known today as "Here Comes the Bride", is from the 1850 opera "Lohengrin". Who composed the march?';
    'Who was the first American President to reside at The White House?';
    'What is the longest river in Pakistan?';
    'Within which Italian city does the Vatican City lie?';
    'New York City consists of how many boroughs?';
    'Oceans hold what percentage of the Earths surface water?';
    'What is the name of the fictional manager in "The Office"?';
    'What are embedded in the sidewalk along Hollywood Boulevard and Vine Street in Los Angeles?';
    'Which monarch was on the throne during the Great Fire of London?';
    'How many legs are visible on the Isle Of Man flag?';
    'Which of these Scottish cities is the most northerly?'};

    
myCA={'Viennese bread';
    'Grief bacon';
    'A cross between a cabbage and a turnip';
    'Claret';
    'Fat Emma';
    'Cloud zero';
    'Loch Morar';
    'Rodinia';
    'France';
    'Undrinkable'
    'The Big Bang Theory';
    'Every Little Thing';
    'Sergio Garcia';
    'Medicine'
    'Saudi Arabia';
    '58';
    'Liam Gallagher';
    'Google';
    'Bruno Mars';
    'Stranger Things';
    'Saturn';
    'Sri Lanka';
    'Vitamin D';
    'Richard Wagner';
    'John Adams';
    'Indus';
    'Rome';
    '5';
    '97%';
    'David Brent';
    'Stars';
    'Charles II';
    '3';
    'Inverness'};

 

myWA1={'Danish pastries';
       'Cream guzzling';
       'A cross between a parsnip and a beetroot';
       'Amaretto';
       'Lardy Larry';
       'Cloud nine';
       'Loch Lomand';
       'Pangaea';
       'UK';
       'Green Monster';
       'Two and a Half Men';
       'Gorgeous';
       'Justin Thomas';
       'Literature';
       'France';
       '68';
       'Paul Arthurs';
       'Yahoo';
       'Mark Ronson';
       'The Handmaids Tale';
       'Jupiter';
       'Bangladesh';
       'Vitamin B';
       'Ludwig van Beethoven';
       'George Washington';
       'Indeema';
       'Naples';
       '3';
       '77%';
       'Peter Gent';
       'Crystals';
       'Charles I';
       '4';
       'Stirling'};
 
       
       
myWA2={'Alsatian cakes'
       'Disappointment candy';
       'A cross between fennel and carrots';
       'Vodka';
       'Penny Plump';
       'Fog';
       'Loch Ness';
       'Gondwanaland';
       'Canada';
       'Vomiting';
       'The Middle';
       'Look What You Made Me Do';
       'Jordan Spieth';
       'Peace';
       'Monaco';
       '48';
       'Noel Gallagher';
       'AltaVista';
       'Ed Sheeran';
       'Riverdale';
       'Mars';
       'Bhutan';
       'Vitamin C';
       'Johannes Brahms';
       'Thomas Jefferson';
       'Indira';
       'Venice';
       '7';
       '87%';
       'Michael Trent';
       'Lights';
       'James II';
       '5';
       'Dundee'};

   
   
   
   
%makes answer buttons inactive       
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
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
%selects the questions and answers
global A
%Randomly select a column from from the questionbank by using number in the
%column questionorder determined by the counter
  A = C(:,questionorder(:,counter));
  B = A(2:length(A));
if counter == length(myquestion)
  counter = 0;
end
 %allocates  the questions into edit box
 textLabel = (A(1,1));
 set(handles.edit1, 'String', textLabel);
 
 pause(2)
 %randomly assigns answers to pushbuttons
  Q = randperm(3);
  set(handles.pushbutton1,'string',B(Q(1,1),1));
  pause(1)
  set(handles.pushbutton2,'string',B(Q(1,2),1));
  pause(1)
  set(handles.pushbutton3,'string',B(Q(1,3),1));
  


 