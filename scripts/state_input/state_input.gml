/// @des
function state_input()
{
	if mouse_check_button_released(mb_left)
	{
		var _instance = instance_position(mouse_x, mouse_y, objUI_Button)
		if _instance != noone
		{
			if _instance.object_index == objUI_weapon
			{
				player_rps = _instance.buttonType;
			}
		}
	}
	
	// Keyboard input
	if keyboard_check_released(vk_anykey)
	{
		var _key = keyboard_lastchar;
		if is_real(_key)
		{
			player_rps = clamp(_key - 1, 0, 2);	// Clamp the rps value if number key is pressed.
		}
		else	// Player is using Alphabetical keys
		{
			switch( string_upper(_key))
			{
				// Letter keys
				case "R":
					player_rps = 0;
					break;
				case "P":
					player_rps = 1;
					break;
				case "S":
					player_rps = 2;
					break;
			}
		}
	}
	
	
	// CPU makes it's choice and moves to the next state
	if(player_rps != noone)
	{	
		// CPU makes its choice
		if array_length(player_array) < 10	// CPU picks randomly
		{
			// Randomly roll a number
			cpu_rps	= irandom(2)
		}
		else	// CPU is a cheating B@$T#%D and uses weighted choice
		{
			cpu_rps = computerChoice(player_array);
			array_delete(player_array, 0, 1);	// Delete oldest entry
		}
		
		// Store player's choice
		player_array[array_length(player_array)] = player_rps;
		
		// Graphics
		//----------------------------------------------
		with(objUI_weapon)	{	visible = false;}			// Make UI buttons invisible
		
		// Set chosen RPS sprites
		sprite_index		= rps_get_sprite(player_rps);	// Player Sprite
		objCPU.sprite_index = rps_get_sprite(cpu_rps);		// CPU sprite
		game_string = text.fight;
		
		// Move to next state
		alarm[0] = 60 * 1;		// Delay next state progression by X seconds.
		rounds_played++;		// Increase the total number of rounds played.
		state = state_chosen;	
	}
}