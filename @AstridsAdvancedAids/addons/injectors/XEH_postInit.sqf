#include "script_component.hpp"

[QGVAR(adrenalineTreatment), {_this call FUNC(adrenalineLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(adrenalinePropergation), {_this call FUNC(adrenalinePropergation)}] call CBA_fnc_addEventHandler;

["ace_common_setAnimSpeedCoef", {
    params ["_unit", "_value"];
    if (_value == 1) then {
    private _speed = _patient getVariable ["astrid_Speed",0];
	_unit setAnimSpeedCoef _speed+1
    }
}] call CBA_fnc_addEventHandler;

["Astrid_Adrenaline",{
	params ["_patient"];
	private _count = {(_x select 0) == "adrenaline"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count > 0) exitwith {0.5};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor