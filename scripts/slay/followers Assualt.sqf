/*



custo













*/
_baseplacedforsaving = player getVariable [ "baseplacedforsaving", 0];
_basepositionforsave = player getVariable [ "baseposforsaving", 0];
_protectionamount = player getVariable ["totalfollowersAssualt", 0]; //cleans up the parachute script in case you die mid-air.


if (_protectionamount == 0) exitWith {hint "You have no helpers."};




	_incomeCount = -1;
	_limit = _protectionamount;

	while {(_incomeCount) < (_protectionamount)} do {


	    _incomeCount = _incomeCount + 1;
			_formatted = format ["Follower %1 regrouped on your position!",(_incomeCount + 1)];
			systemchat _formatted;






			_unit = group player createUnit ["B_sniper_F", position player, [], 5, "FORM"];

			sleep 0.1;
_loadoutrandom = [["arifle_AK12U_lush_F","","","",["30rnd_762x39_AK12_Lush_Mag_F",30],[],""],[],["hgun_Rook40_F","muzzle_snds_L","","",["16Rnd_9x21_Mag",16],[],""],["U_BG_Guerilla1_1",[["FirstAidKit",3],["16Rnd_9x21_Mag",1,16]]],["V_Chestrig_rgr",[["30rnd_762x39_AK12_Lush_Mag_F",11,30],["HandGrenade",2,1],["SmokeShellGreen",2,1]]],[],"H_Bandanna_camo","G_Balaclava_blk",[],["","","ItemRadio","ItemCompass","ItemWatch",""]];
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
