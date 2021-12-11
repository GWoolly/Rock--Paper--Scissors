/// @desc 
//if (live_call()) return live_result; // GMLIVE

// Draw Wins
draw_set_halign(fa_left);
draw_text_transformed(32,8, player_wins,1, 1,	0.0);

draw_set_halign(fa_right);
draw_text_transformed(288,8,cpu_wins,	1, 1, 0.0);

// Draw Game messages
draw_set_halign(fa_center);
draw_text_transformed(room_width*0.5, 8, game_string,	1, 1, 0.0);


// Draw tally - Player
for(var i = 0;	i< player_round;	i++)
{
	draw_sprite_ext(sprStar, 0, 12+(i*8), 30, 0.1, 0.1, 0.0, c_white, 1.0);
}

// Draw tally - CPU
for(var i = 0;	i < cpu_round;	i++)
{
	draw_sprite_ext(sprStar, 0, 308-(i*8), 30, 0.1, 0.1, 0.0, c_white, 1.0);
}