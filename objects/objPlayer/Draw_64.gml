/// @desc 
//if (live_call()) return live_result; // GMLIVE

if debug
{
	// Game Info - Center
	//draw_set_halign(fa_center)
	//draw_text(display_get_gui_width()*0.5, 0, game_string);
	//draw_text((display_get_gui_width()*0.5)-32, 16, player_round);
	//draw_text((display_get_gui_width()*0.5)+32, 16, cpu_round);
	
	// Draw Player - Left
	draw_set_halign(fa_left)
	draw_text(4, 0, rps_get_name(player_rps));
	draw_text(150, 128, probabilityTable);
	
	// Draw the array
	for(var i = 0;	i<array_length(player_array);	i++)
	{
		draw_text(4, 128+(i*16), rps_get_name(player_array[i]));
	}
	
	// CPU - right
	draw_set_halign(fa_right)
	draw_text(display_get_gui_width()-4, 0, rps_get_name(cpu_rps));
}