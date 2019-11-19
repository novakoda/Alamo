if (!local (_this select 0)) exitWith {};

private "_currentUnit";
private "_type";

_currentUnit = (_this select 0);
_type = (_this select 1);

removeAllWeapons _currentUnit;
removeAllItems _currentUnit;
removeAllAssignedItems _currentUnit;
removeUniform _currentUnit;
removeVest _currentUnit;
removeBackpack _currentUnit;
removeHeadgear _currentUnit;
removeGoggles _currentUnit;

switch (_type) do
{
	case "arm0_Pistol" :
	{
		_currentUnit addWeapon "hgun_P07_F";
		_currentUnit addPrimaryWeaponItem "16Rnd_9x21_Mag";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		for "_i" from 1 to 10 do {_currentUnit addItemToVest "16Rnd_9x21_Mag";};
		_currentUnit addHeadgear "H_Booniehat_dgtl";

	};
	case "arm0_Basic" :
	{
		_currentUnit addWeapon "SMG_02_F";
		_currentUnit addPrimaryWeaponItem "30Rnd_9x21_Mag_SMG_02";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		for "_i" from 1 to 6 do {_currentUnit addItemToVest "30Rnd_9x21_Mag_SMG_02";};
		_currentUnit addHeadgear "H_Booniehat_dgtl";
	};
	case "arm0_Rifle" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		_currentUnit addHeadgear "H_Booniehat_dgtl";
	};
	case "arm0_GL" :
	{
		_currentUnit addWeapon "arifle_Mk20_GL_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		_currentUnit addItemToUniform "1Rnd_HE_Grenade_shell";
		for "_i" from 1 to 5 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_currentUnit addItemToVest "1Rnd_HE_Grenade_shell";};
		_currentUnit addHeadgear "H_Booniehat_dgtl";
	};
	case "arm0_MG" :
	{
		_currentUnit addWeapon "LMG_Mk200_F";
		_currentUnit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		_currentUnit addItemToVest "200Rnd_65x39_cased_Box";
		_currentUnit addHeadgear "H_Booniehat_dgtl";
	};
	case "arm0_AT" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addWeapon "launch_NLAW_F";
		_currentUnit addSecondaryWeaponItem "NLAW_F";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_BandollierB_rgr";
		_currentUnit addBackpack " I_Fieldpack_oli";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack "NLAW_F";};
		_currentUnit addHeadgear "H_Booniehat_dgtl";
	};
	case "arm1_Rifle" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_TacVest_oli";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm1_GL" :
	{
		_currentUnit addWeapon "arifle_Mk20_GL_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_TacVest_oli";
		_currentUnit addItemToUniform "1Rnd_HE_Grenade_shell";
		for "_i" from 1 to 5 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_currentUnit addItemToVest "1Rnd_HE_Grenade_shell";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm1_MG" :
	{
		_currentUnit addWeapon "LMG_Mk200_F";
		_currentUnit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_TacVest_oli";
		_currentUnit addItemToVest "200Rnd_65x39_cased_Box";
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm1_AT" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addWeapon "launch_NLAW_F";
		_currentUnit addSecondaryWeaponItem "NLAW_F";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_TacVest_oli";
		_currentUnit addBackpack " I_Fieldpack_oli";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack "NLAW_F";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm2_Rifle" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIA1_dgtl";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm2_GL" :
	{
		_currentUnit addWeapon "arifle_Mk20_GL_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIA1_dgtl";
		_currentUnit addItemToUniform "1Rnd_HE_Grenade_shell";
		for "_i" from 1 to 5 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_currentUnit addItemToVest "1Rnd_HE_Grenade_shell";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm2_MG" :
	{
		_currentUnit addWeapon "LMG_Mk200_F";
		_currentUnit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIA1_dgtl";
		_currentUnit addItemToVest "200Rnd_65x39_cased_Box";
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm2_AT" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addWeapon "launch_NLAW_F";
		_currentUnit addSecondaryWeaponItem "NLAW_F";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIA1_dgtl";
		_currentUnit addBackpack " I_Fieldpack_oli";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack "NLAW_F";};
		_currentUnit addHeadgear "H_HelmetIA";
	};
	case "arm3_Rifle" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIAGL_dgtl";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		_currentUnit addHeadgear "H_HelmetIA";
		_currentUnit addGoggles "G_Balaclava_oli";
	};
	case "arm3_GL" :
	{
		_currentUnit addWeapon "arifle_Mk20_GL_F";
		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIAGL_dgtl";
		_currentUnit addItemToUniform "1Rnd_HE_Grenade_shell";
		for "_i" from 1 to 5 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 4 do {_currentUnit addItemToVest "1Rnd_HE_Grenade_shell";};
		_currentUnit addHeadgear "H_HelmetIA";
		_currentUnit addGoggles "G_Balaclava_oli";
	};
	case "arm3_MG" :
	{
		_currentUnit addWeapon "LMG_Mk200_F";
		_currentUnit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIAGL_dgtl";
		_currentUnit addItemToVest "200Rnd_65x39_cased_Box";
		_currentUnit addHeadgear "H_HelmetIA";
		_currentUnit addGoggles "G_Balaclava_oli";
	};
	case "arm3_AT" :
	{
		_currentUnit addWeapon "arifle_Mk20C_F";

		_currentUnit addPrimaryWeaponItem "optic_ACO_grn_smg";
		_currentUnit addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		_currentUnit addWeapon "launch_NLAW_F";
		_currentUnit addSecondaryWeaponItem "NLAW_F";
		_currentUnit forceAddUniform "U_I_CombatUniform_shortsleeve";
		_currentUnit addVest "V_PlateCarrierIAGL_dgtl";
		_currentUnit addBackpack " I_Fieldpack_oli";
		for "_i" from 1 to 7 do {_currentUnit addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack "NLAW_F";};
		_currentUnit addHeadgear "H_HelmetIA";
		_currentUnit addGoggles "G_Balaclava_oli";
	};
	case "Sniper" :
	{

		_currentUnit addWeapon "srifle_EBR_F";
		_currentUnit addPrimaryWeaponItem "optic_DMS";
		_currentUnit addPrimaryWeaponItem "20Rnd_762x51_Mag";
		_currentUnit addPrimaryWeaponItem "bipod_03_F_blk";
		_currentUnit forceAddUniform "U_I_CombatUniform";
		_currentUnit addVest "V_Chestrig_oli";
		_currentUnit addItemToUniform "FirstAidKit";
		_currentUnit addItemToUniform "20Rnd_762x51_Mag";
		_currentUnit addItemToUniform "Chemlight_green";
		for "_i" from 1 to 11 do {_currentUnit addItemToVest "20Rnd_762x51_Mag";};
		_currentUnit addItemToVest "Chemlight_green";
		_currentUnit addHeadgear "H_MilCap_dgtl";
	};
};

_primary = primaryWeapon _currentUnit;
if (_primary == "") then {_currentUnit addPrimaryWeaponItem "acc_flashlight";};
_currentUnit linkItem "ItemMap";
_currentUnit linkItem "ItemCompass";
_currentUnit linkItem "ItemWatch";

 if (_primary == "srifle_EBR_F") exitWith {};
for "_i" from 1 to 3 do {_currentUnit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_currentUnit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_currentUnit addItemToVest "HandGrenade";};
