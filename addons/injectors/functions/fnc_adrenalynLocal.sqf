#include "\x\LDD\addons\injectors\script_component.hpp"
/*

applies the speed

Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
params ["_medic", "_patient","_classname"];

private _deInhibiter = [_patient,_classname];
ace_advanced_fatigue_setAnimExclusions  pushBack _deInhibiter;

private _speed = _patient getVariable ["LDD_Speed", 0];
_speed = _speed + 0.25;
_patient setVariable ["LDD_Speed", _speed, true];

["ace_common_setAnimSpeedCoef", [_patient,1]] call CBA_fnc_globalEvent;
[
	{
		params ["_patient"];
		private _speed = _patient getVariable ["LDD_Speed", 0];
		_speed = _speed - 0.25;
		_patient setVariable ["LDD_Speed", _speed, true];
		["ace_common_setAnimSpeedCoef", [_patient,1]] call CBA_fnc_globalEvent;
		ace_advanced_fatigue_setAnimExclusions deleteAt (ace_advanced_fatigue_setAnimExclusions find _this)
	},
	[
		_patient,_classname
	],
	180
] call CBA_fnc_waitAndExecute;