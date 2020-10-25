player SetVariable ["loadedcharacter", 1];
sleep 0.5;
[player,true] remoteExecCall ["grad_persistence_fnc_savePlayer"];
sleep 0.5;
[
  [name player],
  {titleText [format ["<t color='#OAOAOA' size='3'font='RobotoCondensed'>%1 has saved their character!</t>",_this#0], "PLAIN DOWN",-1, true, true];}
] remoteExec ["BIS_fnc_spawn",0];
