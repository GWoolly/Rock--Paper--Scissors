/// @des
function state_reveal()
{
	// Method variable - Resets variables to begin a new match
	_reset_rounds = function()	/// @func _reset_rounds		
	{
		// Reset round tallys
		player_round	= 0;
		cpu_round	= 0;
		
		// Reset debug strings
		player_string	= "";
		cpu_string	= "";
		
		alarm[0] = 60 * 2;	// Duration of the next state
	}

	// Kill the loser by sliding their choice off of the screen.
	if( data < 1){;}			// Draw - Do nothing.
	else if( data <2){	objCPU.y += 3;}	// CPU
	else{	y += 3;}			// Player
	
	
	// Progress to next round or declare a winner!
	if(alarm[0] == 0)
	{
		if player_round > 1
		{
			// Player has won best of three games!
			player_wins++;
			game_string = text.playerWin;	
			
			_reset_rounds();		// Reset the match
			
			state = state_winner;		// Change state to the "victory" state.
		}
		else if cpu_round > 1
		{
			// CPU has won best of three games!
			cpu_wins++;
			game_string = text.cpuWin;
			
			_reset_rounds();		// Reset the match
			
			state = state_winner;		// Change state to the "victory" state.
		}
		else
		{
			// No clear winner yet!
			// Make UI buttons visible
			with(objUI_weapon){visible = true;}	// Make UI visible
			game_string = text.input;		// Change broadcast message to input instruction
			rps_cleanup();				// Reset round without cleaning up the round tallies
			state = state_input;			// Return back to the input state
		}
		

	}
}
