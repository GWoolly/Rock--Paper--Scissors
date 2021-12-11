/// @des
function computerChoice(_array)		/// @arg {array}	player_choices_array
{
	// Do the magic here
	//----------------------------------------------
	
	// Get weight of each index of the array
	var _weight = 10000 / array_length(_array);
	
	// Tally the totals
	var _tally = [0,0,0];
	for(var i = 0;	i < array_length(_array);	i++)
	{
		_tally[_array[i]] += _weight;
	}
	
	// Roll on the weighted table twice before forcing winner.
	var _diceFaces = array_length(_tally);
	
	// Do a weighted roll
	//----------------------------------------------
	var _roll = irandom(_diceFaces-1);	// Fully scalable!
	repeat(_diceFaces-1)
	{
		var _chance = clamp(_tally[_roll], 2500, 5000);		// Get weighted chance clamped between 25%~50%
		var _weightedRoll	= irandom(10000);				// Dice roll to compare weighted chance.
		
		
		if(_weightedRoll < _chance)
		{
			_roll = (_roll+1) %(_diceFaces);	// Make roll in CPU's favour
			break;							// Return the result
		}	
		
		_roll = ++_roll %(_diceFaces);	// Roll again
	}
	
	
	// Output probabliity table to the debug draw event.
	_tally[_array[0]] -= _weight;
	_tally[player_rps]+= _weight;
	probabilityTable = ("\nPlayer Probability Table:"
						+"\nRock: "		+string(clamp(_tally[0], 2500, 5000)	/100)+"%"
						+"\nPaper: "	+string(clamp(_tally[1], 2500, 5000)	/100)+"%"
						+"\nScissors: "	+string(clamp(_tally[2], 2500, 5000)	/100)+"%"
						+"\nCPU last picked: "+string(rps_get_name(_roll))
						);
		
	// Return the roll
	return _roll;
}