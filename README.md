# FirstGame_3Changes

The main 3 changes made to the game are as follows:
  1) created a restart button so the player can replay easily from within the application Est. time: 30mins
     --> by extention alterations were done to several object's processing state so that they would/would not run when paused (ie the node with survivors_game.gd can keep going while the  player, gun, and enemies do not)

     *big thanks to this website for info on how to change these: https://docs.godotengine.org/en/stable/tutorials/scripting/pausing_games.html
     
  2) allow the player to aim with the mouse by setting the gun's look_at parameter to get_global_mouse_position() Est. time: 2mins

   
  3) track the score of the player earned by killing enemies and display it on the game over screen Est. time: 20mins
  
