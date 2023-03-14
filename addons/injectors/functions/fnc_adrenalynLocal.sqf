#include "\x\ldd\addons\injectors\script_component.hpp"
/*

applies the speed

Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
params ["_medic", "_patient","_classname","_effectTime","_rebound"];

private _deInhibiter = [_patient,_classname];
ace_advanced_fatigue_setAnimExclusions  pushBack _deInhibiter;

private _speed = _patient getVariable ["ldd_Speed", 0];
_speed = _speed + 0.25;
_patient setVariable ["ldd_Speed", _speed, true];

["ace_common_setAnimSpeedCoef", [_patient,1]] call CBA_fnc_globalEvent;
private _timeLimit = _effectTime *3;
[0.3,_effectTime,_timeLimit,_rebound] call ldd_injectors_fnc_adjustAnFatigueLocal;
[
	{
		params ["_patient"];
		private _speed = _patient getVariable ["ldd_Speed", 0];
		_speed = _speed - 0.25;
		_patient setVariable ["ldd_Speed", _speed, true];
		["ace_common_setAnimSpeedCoef", [_patient,1]] call CBA_fnc_globalEvent;
		ace_advanced_fatigue_setAnimExclusions deleteAt (ace_advanced_fatigue_setAnimExclusions find _this);
	},
	[
		_patient,_classname
	],
	_effectTime
] call CBA_fnc_waitAndExecute;
