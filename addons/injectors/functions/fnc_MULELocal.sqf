#include "\x\LDD\addons\injectors\script_component.hpp"









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