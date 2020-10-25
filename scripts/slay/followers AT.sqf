/*



custo













*/
_baseplacedforsaving = player getVariable [ "baseplacedforsaving", 0];
_basepositionforsave = player getVariable [ "baseposforsaving", 0];
_protectionamount = player getVariable ["totalfollowersAT", 0]; //cleans up the parachute script in case you die mid-air.


if (_protectionamount == 0) exitWith {hint "You have no helpers."};




	_incomeCount = -1;
	_limit = _protectionamount;

	while {(_incomeCount) < (_protectionamount)} do {


	    _incomeCount = _incomeCount + 1;
			_formatted = format ["Follower %1 regrouped on your position!",(_incomeCount + 1)];
			systemchat _formatted;






			_unit = group player createUnit ["B_sniper_F", position player, [], 5, "FORM"];

			sleep 0.1;
			_loadoutrandom = [[],["launch_RPG7_F","","","",["RPG7_F",1],[],""],[],["U_I_GhillieSuit",[]],[],["B_Bergen_mcamo_F",[["RPG7_F",12,1]]],"","",[],["","","","","",""]];

			_unit setUnitLoadout _loadoutrandom;

			sleep 0.1;

			_unit setDir (getdir player);

			_unit setSkill ["aimingAccuracy", 1];
			_unit setSkill ["aimingShake", 1];
			_unit setSkill ["aimingSpeed", 1];
			_unit setSkill ["spotDistance", 1];
			_unit setSkill ["spotTime", 1];
			_unit setSkill ["courage", 1];
			_unit setSkill ["reloadSpeed", 1];
			_unit setSkill ["commanding", 1];




 };




//titleText [format ["<t color='#OAOAOA' size='3'font='RobotoCondensed'>Friendlies couldn't locate your base!<br/>Do you have a property built and body guards?</t>"], "PLAIN DOWN", 3, true, true];
