/// @des
function state_reveal()
{
	// Method variable - Resets variables to begin a new match
	_reset_rounds = function()	/// @func _reset_rounds		
	{
		// Reset round tallys
		player_round	= 0;
		cpu_round		= 0;
		
		// Reset strings
		player_string	= "";
		cpu_string		= "";
		
		alarm[0] = 60 * 2;
	}

	// Kill the loser
	if( data < 1){;}				// Draw
	else if( data <2){	objCPU.y += 3;}	// CPU
	else{	y += 3;}			// Player
	
	
	// Progress to next round or declare a winner!
	if(alarm[0] == 0)
	{
		//var _tallyRounds = (player_round - cpu_round);
		if player_round > 1
		{
			// Player has won best of three games!
			player_wins++;
			game_string = text.playerWin;	
			
			_reset_rounds();
			
			state = state_winner;
		}
		else if cpu_round > 1
		{
			// CPU has won best of three games!
			cpu_wins++;
			game_string = text.cpuWin;
			
			_reset_rounds();
			
			state = state_winner;
		}
		else
		{
			// No clear winner yet!
			// This isn't needed but I might put something here for fun.
			// :P
			
			// Make UI buttons visible
			with(objUI_weapon)	{	visible = true;}
			game_string		= text.input;
			rps_cleanup();
			state = state_input;
		}
		

	}
}