#include "\x\astrid\addons\injectors\script_component.hpp"
/*

applies the speed

Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
hint "hello world";
params ["_medic", "_patient", "_bodyPart","_classname"];

[_patient, "Adrenaline"] call ace_medical_treatment_fnc_addToTriageCard;
[_patient, "activity", "%1 used %2", [[_medic] call ace_common_fnc_getName, "Adrenaline"]] call ace_medical_treatment_fnc_addToLog;
[_patient, "Adrenaline", 5, 300, 50, 0, 0] call ace_medical_status_fnc_addMedicationAdjustment;

private _deInhibiter = 0;
ace_advanced_fatigue_setAnimExclusions  pushBack _deInhibiter;
private _animCoEf = (getAnimSpeedCoef _patient);
sleep 5;
if(ace_advanced_fatigue_setAnimExclusions != []) then {
	_animCoEf + 0.5;
	_patient setAnimSpeedCoef _animCoEf;
	hint "speed applied";
};

[
	{
		ace_advanced_fatigue_setAnimExclusions  deleteAt 0;
	},
	[
		_patient
	],
	300
] call CBA_fnc_waitAndExecute;