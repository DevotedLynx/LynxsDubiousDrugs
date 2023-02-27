#include "\x\ldd\addons\injectors\script_component.hpp"
/*
* DESIGNED TO BE CALLED AFTER FILTERED TO BE CALLED LOCALLY ON THE PLAYERS SIDE
* lowers or increases fatigue 
* 0: percentage from 0 to 1 to increase fatgiue (negative values will recover fatigue)
* 1: waitTime how long until effects are perceived in seconds 
* 2: time limit how long the effect will last 
* 3: rebound if there is a time limit for the effect or if it has no rebound effect
*
* returns nothing 

[0.5, 15, 300, false] call ldd_injectors_fnc_adjustAnFatigueLocal

*/

params ["_percentage","_waitTime","_timeLimit","_rebound"];
private timeLimit = _timeLimit + _waitTime;
[
	{
		params["_player","_percentage"];
		ace_advanced_fatigue_anFatigue) - _percentage;
	},
	[_player,_percentage],
	_waitTime
] call CBA_fnc_waitAndExecute;
if (_rebound) then {
	[
		{
			params["_player"];
			_currentFatigue + _percentage;
			missionNameSpace setVariable ["ace_advanced_fatigue_AnFatigue",_currentFatigue];
		},
		[_player,],
		_timelimit
	] call CBA_fnc_waitAndExecute;
};