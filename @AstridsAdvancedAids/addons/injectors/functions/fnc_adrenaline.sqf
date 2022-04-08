#include "script_component.hpp"
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

params ["_medic", "_patient", "bodyPart", "_treatment"];

if(_treatment != "Adrenaline") exitwith {
	hint "Error: function reserved for Adrenaline"
};

if (local _patient) then {
    ["adrenalineTreatment", [_medic, _patient, _bodyPart, _treatment]] call CBA_fnc_localEvent;
} else {
    ["adrenalineTreatment", [_medic, _patient, _bodyPart, _treatment], _patient] call CBA_fnc_targetEvent;
};

true;