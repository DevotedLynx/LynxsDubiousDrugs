#include "\x\ldd\addons\injectors\script_component.hpp"
/*
*
*
*
*
*
*
*
*
*/

params ["_unit", "_allDamages", "_typeOfDamage"];


if (((_unit getVariable [QEGVAR(injectors,beserk),false]) && (_typeOfDamage in EGVAR(injectors,beserkDmgTypeImmunity)))) then {
	EGVAR(injectors,tempWoundStorage) pushBack [_unit,_allDamages,_typeOfDamage];
} else {
	[_unit,_allDamages,_typeOfDamage] call ace_medical_damage_fnc_woundsHandlerBase;
};