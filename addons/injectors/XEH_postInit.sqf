#include "script_component.hpp"

[QGVAR(adrenalineTreatment), {_this call FUNC(adrenalineLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(MuleTreatment), {_this call FUNC(MuleLocal)}] call CBA_fnc_addEventHandler;

["ace_common_setAnimSpeedCoef", {
    params ["_unit", "_value"];
    if (_value == 1) then {
    private _speed = _patient getVariable ["astrid_Speed",0];
	_unit setAnimSpeedCoef _speed+1
    }
}] call CBA_fnc_addEventHandler;

["Astrid_Adrenaline",
{
	params ["_patient"];
	private _count_adrenaline = {(_x select 0) == "adrenaline"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_adrenaline > 0) exitwith {1-(0.25*_count_adrenaline)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor;

["Astrid_Mule",
{
	params ["_patient"];
	private _count_Mule = {(_x select 0) == "Mule"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_Mule > 0) exitwith {1-(0.15*_count_Mule)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor