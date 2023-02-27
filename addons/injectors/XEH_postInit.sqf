#include "script_component.hpp"

GVAR(beserkDmgTypeImmunity) = ["ropeburn","punch","stab","backblast","falling","vehiclecrash","grenade","bullet"];
GVAR(beserk) = true;
GVAR(tempWoundStorage) = [];

[QGVAR(adrenalynTreatment), {_this call FUNC(adrenalynLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(muleTreatment), {_this call FUNC(muleLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(StaminAidTreatment), {_this call FUNC(StaminAidLocal)}] call CBA_fnc_addEventHandler;
[QGVAR(AmanitaTreatment), {_this call FUNC(beserkLocal)}] call CBA_fnc_addEventHandler;

["ace_common_setAnimSpeedCoef", {
    params ["_unit", "_value"];
    if (_value == 1) then {
    private _speed = _patient getVariable ["ldd_Speed",0];
	_unit setAnimSpeedCoef _speed+1
    }
}] call CBA_fnc_addEventHandler;

["ldd_adrenalyn",
{
	params ["_patient"];
	private _count_adrenalyn = {(_x select 0) == "adrenalyn"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_adrenalyn > 0) exitwith {1-(0.25*_count_adrenalyn)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor;

["ldd_mule",
{
	params ["_patient"];
	private _count_mule = {(_x select 0) == "mule"} count (_patient getVariable ["ace_medical_medications", []]);
	if (_count_mule > 0) exitwith {1-(0.20*_count_mule)};
	1
}] call ace_advanced_fatigue_fnc_addDutyFactor;