#include "\x\addons\injectors\script_component.hpp"
/*

applies the speed

Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
params ["_medic", "_patient", "_bodyPart", "_treatment"];

[_patient, _treatment] call ace_medical_treatment_fnc_addToTriageCard;
[_target, "activity", LSTRING(push_log), [[_medic] call ace_common_fnc_getName, "Adrenaline"]] call ace_medical_treatment_fnc_addToLog;
[_patient, "Adrenaline", 5, 300, 50, 0, 0] call ace_medical_status_fnc_addMedicationAdjustment;

private _animCoEf = _patient getAnimSpeedCoef;
_animCoEf + 0.5;
_patient setAnimSpeedCoef _animCoEf;

[
	{
		_animCoEf = _patient getAnimSpeedCoef;
		_animCoEf - 0.5;
		_patient setAnimSpeedCoef _animCoEf;
	},
	[
		_patient
	],
	300
] call CBA_fnc_waitAndExecute