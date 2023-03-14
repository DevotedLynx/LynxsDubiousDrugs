#include "\x\ldd\addons\injectors\script_component.hpp"
#include "\z\ace\addons\advanced_fatigue\script_component.hpp"
/*
Arguments:
* 0: receiver (not used)
* 1: percentage of max stamina / recovery
* 2: wait time before effects perceived

will increase current stamina by the percentage of max stamina

returns nothing

EXTERNAL INPUTS
AE1 AE2 and AN _MAXRESERVE are defined numbers from ace_ADVANCED_FATIGUE's script component
*/ 
params ["_receiver","_percentage","_waitTime"];
private _increaseAe1 = AE1_MAXRESERVE * _percentage;
private _increaseAe2 = AE2_MAXRESERVE * _percentage;
private _increaseAn = AN_MAXRESERVE * _percentage;

[{
	params["_receiver","_increaseAe1","_increaseAe2","_increaseAn"];
	ace_advanced_fatigue_ae1reserve = ace_advanced_fatigue_ae1reserve + _increaseAe1;
	ace_advanced_fatigue_ae2reserve = ace_advanced_fatigue_ae2reserve + _increaseAe2;
	ace_advanced_fatigue_anreserve = ace_advanced_fatigue_anreserve + _increaseAn;
},
[_receiver,_increaseAe1,_increaseAe2,_increaseAn],_waitTime] call CBA_fnc_waitAndExecute;