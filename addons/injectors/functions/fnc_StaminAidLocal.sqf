#include "\x\LDD\addons\injectors\script_component.hpp"
/*
Arguments:
* 0: percentage of max stamina <number>



*/ 
params ["_percentage"];
private _maxAe1 = 4000000;
private _maxAe2 = 84000;
private _maxAn = 2300;
_increaseAe1 = _maxAe1 * (_percentage/100);
_increaseAe2 = _maxAe2 * (_percentage/100);
_increaseAn = _maxAn * (_percentage/100);
private _currentae1Reserve = missionNamespace getVariable "ace_advanced_fatigue_ae1Reserve";
private _currentae2Reserve = missionNamespace getVariable "ace_advanced_fatigue_ae2Reserve";
private _currentanReserve = missionNamespace getVariable "ace_advanced_fatigue_anReserve";
_currentae1Reserve = _currentae1Reserve + _increaseAe1;
_currentae2Reserve = _currentae2Reserve + _increaseAe2;
_currentanReserve = _currentanReserve + _increaseAn;
missionNamespace setVariable ["ace_advanced_fatigue_ae1Reserve",_currentae1Reserve, false];
missionNamespace setVariable ["ace_advanced_fatigue_ae2Reserve",_currentae2Reserve, false];
missionNamespace setVariable ["ace_advanced_fatigue_anReserve",_currentanReserve, false];