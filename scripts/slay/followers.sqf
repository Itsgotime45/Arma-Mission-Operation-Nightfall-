/*



custo













*/
_baseplacedforsaving = player getVariable [ "baseplacedforsaving", 0];
_basepositionforsave = player getVariable [ "baseposforsaving", 0];
_protectionamount = player getVariable ["totalfollowers", 0]; //cleans up the parachute script in case you die mid-air.


if (_protectionamount == 0) exitWith {hint "You have no helpers."};




	_incomeCount = -1;
	_limit = _protectionamount;

	while {(_incomeCount) < (_protectionamount)} do {


	    _incomeCount = _incomeCount + 1;
			_formatted = format ["Follower %1 regrouped on your position!",(_incomeCount + 1)];
			systemchat _formatted;






			_unit = group player createUnit ["B_sniper_F", position player, [], 5, "FORM"];

			sleep 0.1;
			_ghillie = ["U_O_FullGhillie_lsh","U_O_FullGhillie_sard","U_O_FullGhillie_ard","U_O_T_FullGhillie_tna_F"] call BIS_fnc_selectRandom;
			_MMGlmg = ["MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F"] call BIS_fnc_selectRandom;
			_MK200LMG = ["LMG_Mk200_F","LMG_Mk200_black_F"] call BIS_fnc_selectRandom;
			_asp = ["srifle_DMR_04_F","srifle_DMR_04_Tan_F"] call BIS_fnc_selectRandom;
			_carrier = ["V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier1_tna_F","V_PlateCarrier1_wdl","V_PlateCarrier2_blk","V_PlateCarrier2_rgr","V_PlateCarrier2_rgr_noflag_F","V_PlateCarrier2_tna_F","V_PlateCarrier2_wdl","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_tna_F","V_PlateCarrierSpec_wdl"] call BIS_fnc_selectRandom;
			_MK1dmr = ["srifle_DMR_03_multicam_F","srifle_DMR_03_khaki_F","srifle_DMR_03_F","srifle_DMR_03_tan_F","srifle_DMR_03_woodland_F"] call BIS_fnc_selectRandom;
			_loadoutrandom = [ [[_MK200LMG,'muzzle_snds_H','acc_flashlight','optic_Arco_blk_F',['200Rnd_65x39_cased_Box',200],[],'bipod_01_F_blk'],[],['hgun_Pistol_heavy_01_green_F','muzzle_snds_acp','acc_flashlight_pistol','optic_MRD_black',['11Rnd_45ACP_Mag',11],[],''],['U_O_FullGhillie_lsh',[['',1,10],['',1,1],['SmokeShell',6,1],['MiniGrenade',3,1]]],[_carrier,[['11Rnd_45ACP_Mag',20,11]]],['B_Bergen_mcamo_F',[['200Rnd_65x39_cased_Box',9,200],['11Rnd_45ACP_Mag',4,11]]],'','',[],['ItemMap','B_UavTerminal','ItemRadio','ItemCompass','ItemWatch','NVGogglesB_grn_F']],

			[[_MMGlmg,'muzzle_snds_338_black','acc_flashlight','optic_Arco_blk_F',['130Rnd_338_Mag',130],[],'CUP_bipod_VLTOR_Modpod_black'],[],['hgun_Pistol_heavy_01_green_F','muzzle_snds_acp','acc_flashlight_pistol','optic_MRD_black',['11Rnd_45ACP_Mag',11],[],''],[_ghillie,[['',1,10],['',1,1],['SmokeShell',6,1],['MiniGrenade',3,1]]],[_carrier,[['11Rnd_45ACP_Mag',8,11],['130Rnd_338_Mag',1,130]]],['B_Bergen_mcamo_F',[['130Rnd_338_Mag',8,130]]],'','',[],['ItemMap','B_UavTerminal','ItemRadio','ItemCompass','ItemWatch','NVGogglesB_grn_F']],

			[[_asp,'','acc_flashlight','optic_ACO_grn_smg',['10Rnd_127x54_Mag',10],[],'bipod_01_F_blk'],[],['hgun_Pistol_heavy_01_green_F','muzzle_snds_acp','acc_flashlight_pistol','optic_MRD_black',['11Rnd_45ACP_Mag',11],[],''],[_ghillie,[['',1,10],['',1,1],['SmokeShell',6,1],['MiniGrenade',3,1],['10Rnd_127x54_Mag',1,10]]],[_carrier,[['11Rnd_45ACP_Mag',15,11],['10Rnd_127x54_Mag',2,10]]],['B_Bergen_mcamo_F',[]],'','',[],['ItemMap','B_UavTerminal','ItemRadio','ItemCompass','ItemWatch','NVGogglesB_grn_F']],

			[[_MK1dmr,'muzzle_snds_B','acc_flashlight','optic_Arco_blk_F',['20Rnd_762x51_Mag',20],[],'bipod_01_F_blk'],[],['hgun_Pistol_heavy_01_green_F','muzzle_snds_acp','acc_flashlight_pistol','optic_MRD_black',['11Rnd_45ACP_Mag',11],[],''],[_ghillie,[['',1,10],['',1,1],['SmokeShell',6,1],['MiniGrenade',3,1]]],[_carrier,[['11Rnd_45ACP_Mag',20,11]]],['B_Bergen_mcamo_F',[['11Rnd_45ACP_Mag',10,11],['20Rnd_762x51_Mag',34,20]]],'','',[],['ItemMap','B_UavTerminal','ItemRadio','ItemCompass','ItemWatch','NVGogglesB_grn_F']]


			] call BIS_fnc_selectRandom;
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
