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

if ((_typeOfDamage in EGVAR(injectors,beserkDmgTypeImmunity)) && (EGVAR(injectors,beserk))) then {
	EGVAR(injectors,tempWoundStorage) pushback [_unit,_allDamages,_typeOfDamage]; 
	return [];
	} else {
		return [_unit,_allDamages,_typeOfDamage];
};