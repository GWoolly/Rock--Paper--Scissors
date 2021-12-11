/// @des
function state_winner()
{
	if(alarm[0] == 0)
	{
		// Make UI buttons visible
		with(objUI_weapon)	{	visible = true;}
		rps_cleanup();
		state = state_input;
	}
}