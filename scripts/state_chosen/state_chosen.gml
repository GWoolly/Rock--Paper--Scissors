/// @des
function state_chosen()
{		
	// Find a winner!
	if(alarm[0] == 0)
	{
		var _result = (3 + player_rps) - cpu_rps;	// Use maths to work out the winner from the integer values of the player's and cpu's choices.
		_result = _result %3;				// Modulo the value if the result overflows;
		
		// Tally the round
		switch(_result)
		{
			case 0:	// Draw
				game_string = text.draw;
				break;
			case 1: // Player wins
				game_string = text.win;
				player_round++;
				break;
			case 2: // CPU wins
				game_string = text.lose;
				cpu_round++;
				break;
		}
		
		// Graphics
		visible = true;
		
		// Progress to next state
		alarm[0] = 60 * 2;		// Delay until the next state performs its end action.
		state = state_reveal;
		data = _result;			// This just tells the next state who won in order to do the "death" animation.
	}
}
