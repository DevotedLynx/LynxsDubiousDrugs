#include "\x\LDD\addons\injectors\script_component.hpp"
/*
* DESIGNED TO BE CALLED AFTER FILTERED TO BE CALLED LOCALLY ON THE PLAYERS SIDE
* lowers or increases fatigue 
* 
*
*
*
*
*
*/




params ["_percentage","_waitTime","_timeLimit","_rebound"];

[
	{
		params["_player","_percentage"];
		ACEGVAR(advanced_fatigue,anFatigue) - _percentage;
	},
	[_player,_percentage],
	_waitTime
] call CBA_fnc_waitAndExecute
if (_rebound) then {
	[
		{
			params["_player"];
			_currentFatigue + _percentage;
			missionNameSpace setVariable ["ace_advanced_fatigue_AnFatigue",_currentFatigue];
		},
		[_player,],
		_timelimit
	] call CBA_fnc_waitAndExecute
};