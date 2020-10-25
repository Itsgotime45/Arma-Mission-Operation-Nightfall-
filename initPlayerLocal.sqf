if !(hasinterface) exitwith {};
waitUntil {!(IsNull (findDisplay 46))};

_radio_save4 = createTrigger["EmptyDetector",[0,0]];
_radio_save4 setTriggerActivation["CHARLIE","PRESENT",true];
_radio_save4 setTriggerStatements["this","[player, 'scripts\Saveplayer.sqf'] remoteExec ['execVM',player]",""];
//_radio_save4 setTriggerStatements["this","[player,true] remoteExecCall ['grad_persistence_fnc_savePlayer']",""];
3 setRadioMsg "Save Character";
sleep 15;
execvm "scripts\Slay\followers.sqf";
execvm "scripts\slay\followers AT.sqf";
systemchat "character fully loaded";
