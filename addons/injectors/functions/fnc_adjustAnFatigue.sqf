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




params ["_percentage","_timelimit"];

private _Convert2Decimal = _percentage/100;
private _CurrentFatigue = missionNamespace getVariable "ace_advanced_fatigue_AnFatigue";
_currentFatigue - _convert2Decimal;
missionNameSpace setVariable ["ace_advanced_fatigue_AnFatigue",_currentFatigue];

[
	{
		_currentFatigue + _convert2Decimal;
		missionNameSpace setVariable ["ace_advanced_fatigue_AnFatigue",_currentFatigue];
	}
	600
] call CBA_fnc_waitAndExecute