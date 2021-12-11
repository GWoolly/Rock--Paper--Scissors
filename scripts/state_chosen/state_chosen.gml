/// @des
function state_chosen()
{	
	// Put fancy animations here!
	
	// Find a winner!
	if(alarm[0] == 0)
	{
		var _result = (3 + player_rps) - cpu_rps;	// Oh boy am I glad that I used numbers instead of strings here, imagine having to write out results for each permutation! :D
		_result = _result %3;						// Modulo the value if the result overflows;
		
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
		//objUI_Button.visible = true;
		
		// Progress to next state
		alarm[0] = 60 * 2;
		//*
		state = state_reveal;
		data = _result;
		/*/
		state = script_execute(state_reveal, _result);
		//*/
	}
}