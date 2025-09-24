# Ongoing Dev Log - Look here for each assignment!

[Assignment 3 - Juice & Polish]
Audio credits: https://freesound.org/people/Jofae/sounds/368651 https://freesound.org/people/hotpin7/sounds/819269 https://freesound.org/people/high_festiva/sounds/194439 https://freesound.org/people/ryansitz/sounds/387834/ https://freesound.org/people/Sunsai/sounds/415804/ 
Confetti particle tutorial: https://gist.github.com/benmccown/52eb2d9b0a2899fe4d6d6aea6514eafb

* The goal for polishing here was to learn how to use GPU and CPU particle system 2D nodes {Est. time: 4 hrs}
     * Collectible gems now play a sound and display sparks
     * When the player levels up they emit stars and a jingle plays
* A large portion of my time was consumed with trying to create a global class which would allow for particles to be spawned in by referring to a dictionary system which would then play corresponding audio however this created some headaches with establishing proper references

* Secondary goal was to implement audio {Est. time: 2 hrs}
     * The game now has background music!
     * A victory fanfare jingle plays if the player reaches the end
* Freesound.org was crucial for finding audio clips and Godot's system is relatively easy to use



[Assignment 2 - 3 Gameplay Loops]
1) The player has a HARD GATE of reaching 175 kills to win the game {Est. time: 30 mins}
2) The player can collect gems dropped by enemies (FUNNEL), and those can be spent (SINK) on upgrading movement speed, fire speed, or a health refil {Est. time: 3 hrs}
     as the player buys more of each of these upgrades, they become more expensive which presents a SOFT GATE
     these upgrades also serve as PLAYER PROGRESSION
3) The player can access the level up shop after a certain number of kills which gradually increases presenting more PLAYER PROGRESSION {Est. time: 1 hr}

[Assignment 1 - 3 Changes]
The main 3 changes made to the game are as follows:
  1) created a restart button so the player can replay easily from within the application {Est. time: 30mins}
     --> by extention alterations were done to several object's processing state so that they would/would not run when paused (ie the node with survivors_game.gd can keep going while the  player, gun, and enemies do not)

     *big thanks to this website for info on how to change these: https://docs.godotengine.org/en/stable/tutorials/scripting/pausing_games.html
     
  2) allow the player to aim with the mouse by setting the gun's look_at parameter to get_global_mouse_position() {Est. time: 2mins}

   
  3) track the score of the player earned by killing enemies and display it on the game over screen {Est. time: 20mins}
  
