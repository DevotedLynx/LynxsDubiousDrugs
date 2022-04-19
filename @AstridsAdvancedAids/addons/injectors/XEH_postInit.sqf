#include "script_component.hpp"

[QGVAR(adrenalineTreatment), {_this call FUNC(adrenalineLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(adrenalinePropergation), {_this call FUNC(adrenalinePropergation)}] call CBA_fnc_addEventHandler;

["ace_common_setAnimSpeedCoef", {
    params ["_patient", "_value"];
    if (_value == 1) then {
        private _count = {(_x select 0) == "adrenaline"} count (_patient getVariable ["ace_medical_medications", []]);
		private _Increase = 1+(_count/2);
		_patient setAnimSpeedCoef _increase
    }
}] call CBA_fnc_addEventHandler;