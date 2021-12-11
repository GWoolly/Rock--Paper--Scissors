/// @des
function rps_get_sprite(_x)		/// @arg {int}	sprite_index
{
	switch( _x)
	{
		case 0:
			return sprIcon_Rock;
		case 1:
			return sprIcon_Paper;
		case 2:
			return sprIcon_Scissors;
	}
}