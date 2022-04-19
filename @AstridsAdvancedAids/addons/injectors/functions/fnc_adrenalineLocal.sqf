#include "\x\astrid\addons\injectors\script_component.hpp"
/*

applies the speed

Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
params ["_medic", "_patient", "_bodyPart","_classname"];

private _deInhibiter = [_patient,_classname];
ace_advanced_fatigue_setAnimExclusions  pushBack _deInhibiter;
["ace_common_setAnimSpeedCoef", [_patient,1]] call CBA_fnc_globalEvent;

[
	{
		ace_advanced_fatigue_setAnimExclusions deleteAt (ace_advanced_fatigue_setAnimExclusions find _this)
	},
	[
		_patient, _classname
	],
	300
] call CBA_fnc_waitAndExecute;