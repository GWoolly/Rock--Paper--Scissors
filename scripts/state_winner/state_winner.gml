/// @des
function state_winner()
{
	if(alarm[0] == 0)
	{
		// Make UI buttons visible
		with(objUI_weapon){visible = true;}	// Make the UI choices visible.
		rps_cleanup();				// Clean up the previous match.
		state = state_input;			// Return to the player input choices state.
	}
}
