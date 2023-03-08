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
LDD_injectors_unitHit = "";
LDD_injectors_unitallDamages = [];
LDD_injectors_unittypeOfDamage = "";
LDD_injectors_WHhandoff = [];

LDD_injectors_unitHit = str _unit;
LDD_injectors_unitallDamages pushback _allDamages;
LDD_injectors_unittypeOfDamage = str _typeOfDamage;

if ((EGVAR(injectors,beserk) && (_typeOfDamage in EGVAR(injectors,beserkDmgTypeImmunity)))) then {
	EGVAR(injectors,tempWoundStorage) pushBack [_unit,_allDamages,_typeOfDamage];
} else {
	[_unit,_allDamages,_typeOfDamage] call ace_medical_damage_fnc_woundsHandlerBase;
	EGVAR(injectors,WHhandoff) pushback [_unit,_allDamages,_typeOfDamage];
};