# The_Chasers

Group Report: The Chasers
The Chase!


Group Member	Student Number	Percentage of Mark Given
Jordan Mencattelli	6418393	20

Samdaniel Gerard		32

Benny Bard	6405552	19

Muneeb Ali	6414223	10

David Medina	6427492	19

We believe that Sam is deserving of a significant proportion of the marks given as he was willing to help each member of the group at each stage in the production process, and was responsible for catching and deleting many of the bugs that we found.

Motivation

Our motivation for the group project came from our desire to create a game to replicate one of TV’s best game shows – The Chase! We were originally inspired to create a TV game show due to the success that other groups have had in past years, we intended to create a fully functional Matlab game with a great degree of replay value, which would allow the end users to enjoy the chase. We believe that creating the chase game show through Matlab is both challenging and interesting, because every team member was already aware of the final model should look like, which meant we had an easily understandable goal to aspire for. We decided to adopt GUI, to make our game more user-friendly and visibly attractive to players.

Methodology

After the initial idea was agreed upon, we decided that the first problem we had to solve was to make a databank of questions. Not all members of the team needed to design the questions, thus we split into two sub-groups with the second being responsible for the original GUI design for each of the rounds. We decided to create our own questions, giving us the opportunity to make our chase game more individual, and allowing us to select questions that we personally felt were exciting. 

Once the dataset was created, we needed to implement a system which would randomise the order that the questions were displayed, but would not repeat them, as well as assigning the answers randomly to the buttons. Further, when the user got a question right or wrong, we needed to offer feedback, thus we decided to change the font colour from black to green or red when the user was right or wrong respectively. However, we realised that in the first round, changing the font colour would slow the user down and not allow them to maximise their potential from the cash-builder round. Due to this, we used a blue background for the first round, and decided to change the background colour to red or green to give immediate feedback.

In the first round, we implemented a system that would give the user +£1000 to take into the second round for each question they answered correctly, using the aforementioned question system. From thereon, the user would be taken into the second round and have the choice of three buttons, which would place them closer to the chaser with a higher monetary reward than gained in round one to further from the chaser with a smaller monetary reward. 

To add the chaser to the game, we decided that the optimal method to do so was by assigning a score system to both the chaser and the contestant. In this case, we kept the chasers score hidden and it always begins at 0. The contestant has a choice of “scores” to start at ranging from 2-4. For each question the user gets right, they gain a point which moves them further towards score 6, which will show a success message and move them to the next round. The chaser has a 60-80% probability to get the correct answer. 
We opted to create our own timer using the for-loop function at all stages in the game.

How to play

Open up FirstRound.m and the game should open immediately. If not, open Matlab and ensure all the files are downloaded. Type the ‘FirstRound’ command, into the Matlab editor and the game should open.
Once the game is open, instructions are available at each key point during the game.

Note. Must be played on the most up-to-date version of Matlab.

Problems and limitations during the development process

At one point during the development process, there was no limit to the number of questions that could be asked, theoretically if the player was extremely weak and unlucky they would be able to run through the entire question bank. Thus, we decided to increase our question bank to 20 questions. Theoretically, it is still possible that both the player and chaser could get most of these questions wrong, however it is statistically very unlikely, even on the easiest difficulty. 

We felt that the chaser having an 80% probability to answer correctly could make the game too difficult for weaker players, thus reducing their enjoyment of the game. Consequently, unlike the actual chase we opted for a three-tier difficulty system, selected upon starting the game, which changes the chaser’s success probability from 60-70-80%. We believed this to be optimal as this would allow the user to increase the chasers expected number of plays needed to win, giving them more potential questions to win. 

A third problem that we encountered was that players who incorrectly answered multiple questions in the first round could choose to play for ≤£0 in the second round. In this scenario, the game would become pointless as no player would be willing to play for a negative cash reward. Due to this, we added a restart button, allowing such a player to retry the game without having to sit through the rest of the rounds.

When we were using the timer function, the timer would not stop once a question had been answered. We decided that the correct way to approach this was to make our own timer, thus we created the Timer_switch variable. When a question was answered, we would set timer_switch = 1, which would break the loop and stop the timer.

References

Author	‘Yuanfei’

Article title:	Embedding Waitbar Inside A GUI - File Exchange - MATLAB Central

Website title:	Uk.mathworks.com

URL:	https://uk.mathworks.com/matlabcentral/fileexchange/47896-embedding-waitbar-inside-a-gui

Yuanfei’s waitbar was used for the chaser bar in the final chase round.
