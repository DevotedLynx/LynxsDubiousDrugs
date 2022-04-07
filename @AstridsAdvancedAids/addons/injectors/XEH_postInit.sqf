#include "script_component.hpp"

[] call FUNC(adrenaline);
[] call FUNC(adrenaline_local);
["adrenalineTreatment", {_this call FUNC(adrenaline_local)}] call CBA_fnc_addEventHandeler;