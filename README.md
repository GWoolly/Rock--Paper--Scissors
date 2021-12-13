# Rock-Paper-Scissors
 Grant's awesome RPS tech challenge.

# Downloads
[Grant_Woolley__Jagex_Rock-Paper_Scissors.zip](https://github.com/Dinocade/Rock--Paper--Scissors/raw/main/Grant_Woolley__Jagex_Rock-Paper_Scissors.zip)

You will need to download and extract all files within the zip file in order to play the game.
## Debug mode
Whilst playing the game, click on the Bug in the bottom-left of the screen to toggle the debug view on/off.

# Important Code
The function for calculating weighted choices can be found here: [computerChoice](scripts/computerChoice/computerChoice.gml)

Calculating the winner of a game is performed within [state_chosen](scripts/state_chosen/state_chosen.gml)


All other code can be found within the .GML files within the "Scripts/" and "Objects/" directories, but the most important are these:
1. [Initialisation](objects/objPlayer/Create_0.gml)
2. [Present inputs to player](scripts/state_input/state_input.gml)
3. [Calculate the winner of the round](scripts/state_chosen/state_chosen.gml)
4. [Reveal the winner of the round, and declare if there is an overall winner](scripts/state_reveal/state_reveal.gml)
5. [Celebrate the overall winner](scripts/state_winner/state_winner.gml)

# Part 3 - Design a Runescape mini-game
Link to the design concept document can be found [here](https://docs.google.com/document/d/1f8o-O7IWEbfdwAn2B7VqKjENxRMs6ubYee24G_YokXI/edit?usp=sharing)
