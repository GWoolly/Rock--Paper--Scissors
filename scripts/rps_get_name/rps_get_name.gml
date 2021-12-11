/// @des	Returns a string of the RPS value chosen.
function rps_get_name(_x)	/// @arg {int}	x
{
	switch(_x)
	{
		case 0: 
			return "Rock";
		case 1:
			return "Paper";
		case 2:
			return	"Scissors";
	}
}