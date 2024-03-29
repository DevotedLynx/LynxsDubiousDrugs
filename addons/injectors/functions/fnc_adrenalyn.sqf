#include "\x\ldd\addons\injectors\script_component.hpp"
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
if(_classname != "adrenalyn") exitwith {
	hint "Error: function reserved for adrenalyn"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(adrenalynTreatment), [_medic, _patient, _classname]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(adrenalynTreatment), [_medic, _patient, _classname], _patient] call CBA_fnc_targetEvent;

};