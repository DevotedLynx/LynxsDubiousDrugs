#include "\x\ldd\addons\injectors\script_component.hpp"
/*








*/

params["_receiver","_waitTime","_timeLimit"];

_timeLimit + _waitTime;

[
	{
		params["_receiver"];
		EGVAR(injectors,beserk) = true;
		EGVAR(injectors,tempWoundStorage) = []; //make sure the temp storage is cleared at the start of a new beserk
	},
	[
		_receiver
	],
	_waitTime
] call CBA_fnc_waitAndExecute;

[
	{
		params["_receiver"];
		EGVAR(injectors,beserk) = false;
		{
			// Current result is saved in variable _x
			_x call ace_medical_damage_fnc_woundsHandlerBase;
		} forEach EGVAR(injectors,tempWoundStorage); // each entry is formatted as ["_unit", "_allDamages", "_typeOfDamage"] with values obtained from fnc_customWoundHandler.sqf while EGVAR(injectors,beserk) is true
	},
	[
		_receiver
	],
	_timeLimit
] call CBA_fnc_waitAndExecute;
