









params ["_medic", "_patient","_classname"];

private _duty = _patient getVariable ["Astrid_MULE",0];
_duty = _duty + 0.2;
_patient setVariable ["Astrid_MULE", _duty, true];
["Astrid_MULE", [_patient,0]] call CBA_fnc_localEvent
[
	{
		params ["_patient"];
		private _duty = _patient getVariable ["Astrid_Duty", 0];
		_duty = _duty - 0.2;
		_patient setVariable ["Astrid_Duty", _duty, true];
		["Astrid_MULE", [_patient,0]] call CBA_fnc_localEvent
	},
	[
		_patient,_classname
	],
	180
] call CBA_fnc_waitAndExecute;