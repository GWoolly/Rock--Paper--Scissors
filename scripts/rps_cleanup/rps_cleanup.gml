/// @des
function rps_cleanup()
{
		// Begin round cleanup
		//-----------------------------------------------
		
		// Reset player and CPU state
		// Player vars
		player_rps		= noone
		player_string	= "";	// String of RPS choice
		
		// CPU vars
		cpu_rps			= noone;// CPU's rps choice
		cpu_string		= "";	// String of RPS choice	
		
		// Text
		game_string = text.input;
		
		// Graphics
		y = ystart;
		objCPU.y = objCPU.ystart;
		
		sprite_index		= -1;
		objCPU.sprite_index = -1; 
}