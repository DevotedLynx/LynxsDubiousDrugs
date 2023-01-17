#include "\x\astrid\addons\injectors\script_component.hpp"
/*
Arguments:
* 0: Medic <OBJECT>
* 1: Patient <OBJECT>
* 2: Body Part <STRING>
* 3: Treatment <STRING>



*/ 
params ["_medic", "_patient", "_classname", "_Treatment"];

private _currentae1Reserve = missionNamespace getVariable "ace_advanced_fatigue_ae1Reserve";
private _currentae2Reserve = missionNamespace getVariable "ace_advanced_fatigue_ae2Reserve";
private _currentanReserve = missionNamespace getVariable "ace_advanced_fatigue_anReserve";
_currentae1Reserve = _currentae1Reserve + 1600000;
_currentae2Reserve = _currentae2Reserve + 3,360;
_currentanReserve = _currentanReserve + 920;
missionNamespace setVariable ["ace_advanced_fatigue_ae1Reserve",_currentae1Reserve, false];
missionNamespace setVariable ["ace_advanced_fatigue_ae2Reserve",_currentae2Reserve, false];
missionNamespace setVariable ["ace_advanced_fatigue_anReserve",_currentanReserve, false];