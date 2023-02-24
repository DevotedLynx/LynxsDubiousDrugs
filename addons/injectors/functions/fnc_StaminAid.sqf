#include "\x\LDD\addons\injectors\script_component.hpp"
/*
*
* handles localisation
*
* Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>
* 4: Item User (not used) <OBJECT>
* 5: Used Item <STRING>
*
*
*/

params ["_medic", "_patient", "_bodyPart", "_classname","","_usedItem"];
if(_classname != "StaminAid") exitwith {
	hint "Error: function reserved for StaminAid"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(StaminAidTreatment), [_patient,0.4,15]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(StaminAidTreatment), [_patient,0.4,15], _patient] call CBA_fnc_targetEvent;
};