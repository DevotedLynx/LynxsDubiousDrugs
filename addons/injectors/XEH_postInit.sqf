#include "script_component.hpp"

[QGVAR(adrenalynTreatment), {_this call FUNC(adrenalynLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(MuleTreatment), {_this call FUNC(MuleLocal)}] call CBA_fnc_addEventHandler;

["ace_common_setAnimSpeedCoef", {
    params ["_unit", "_value"];
    if (_value == 1) then {
    private _speed = _patient getVariable ["astrid_Speed",0];
	_unit setAnimSpeedCoef _speed+1
    }
}] call CBA_fnc_addEventHandler;

["Astrid_adrenalyn",
{
	params ["_patient"];
	private _count_adrenalyn = {(_x select 0) == "adrenalyn"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_adrenalyn > 0) exitwith {1-(0.25*_count_adrenalyn)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor;

["Astrid_Mule",
{
	params ["_patient"];
	private _count_Mule = {(_x select 0) == "Mule"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_Mule > 0) exitwith {1-(0.20*_count_Mule)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor