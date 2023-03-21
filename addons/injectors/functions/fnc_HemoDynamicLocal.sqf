/*








*/

params["_patient","_totalAmmount","_timeLimit"];

private _perCallAmmount = 0;
_perCallAmmount = (_totalAmmount/_timeLimit)*10;

private _currentblood = 0;
_currentblood = _patient getVariable ["ace_medical_bloodVolume",6.0];
private _handle = [
	{
		params ["_args","_idPFH"]; 
    	_args params ["_patient","_perCallAmmount"];
		if (isGamePaused) exitWith {};
		_bloodVolume = _patient getVariable ["ace_medical_bloodVolume",6.0];
		_setBlood = _bloodVolume + _perCallAmmount;
		_patient setVariable ["ace_medical_bloodVolume",_setBlood,true];
	},
	10,
	[_patient,_perCallAmmount]
] call CBA_fnc_addPerFrameHandler;

[{
	params["_handle"];
	[_handle] call CBA_fnc_removePerFrameHandler;},
	[_handle],
	_timeLimit
] call CBA_fnc_waitandExecute;