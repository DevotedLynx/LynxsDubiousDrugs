#include "\x\astrid\addons\injectors\script_component.hpp"
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
if(_classname != "Adrenaline") exitwith {
	hint "Error: function reserved for Adrenaline"
};

if (local _patient) then {
    [QGVAR(adrenalineTreatment), [_medic, _patient, _classname]] call CBA_fnc_localEvent;
} else {
    [QGVAR(adrenalineTreatment), [_medic, _patient, _classname], _patient] call CBA_fnc_targetEvent;
};