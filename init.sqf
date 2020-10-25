enableSaving [false,false];

player enableFatigue false;
player execvm "scripts\script.sqf";
player addaction ["Test Script",{execvm "scripts\script.sqf"}];


_nearestCity = text nearestLocation [getPos player, "nameCity"];

_time = [dayTime, "HH:MM"] call BIS_fnc_timeToString;

_name = name player;

_dir = (getPos player) call BIS_fnc_locationDescription;;

_text = format ["%1 you're %2 near %3 and the time is %4",_name,_dir,_nearestCity,_time];


[_text] spawn BIS_fnc_dynamicText;


execvm "scripts\slay\addactions.sqf";
