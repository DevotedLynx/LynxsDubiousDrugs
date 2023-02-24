#include "\x\LDD\addons\injectors\script_component.hpp"
/*

0: the caller
1: the receiver
2: classname of object (in this implementation the ace medication used)

handles calling for the adjustment of ace duty factor from an administered medication

returns nothing


*/
params ["_medic", "_patient","_classname"];

["LDD_Mule", [_patient,0]] call CBA_fnc_localEvent;
[
	{
		params ["_patient"];
		["LDD_Mule", [_patient,0]] call CBA_fnc_localEvent
	},
	[
		_patient,_classname
	],
	180
] call CBA_fnc_waitAndExecute;