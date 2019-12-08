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
		_gun = selectRandom pistol;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom hats;
	};
	case "arm0_SMG" :
	{
		_gun = selectRandom smg;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom hats;
	};
	case "arm0_Rifle" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom hats;
	};
	case "arm0_GL" :
	{
		_gun = selectRandom gl;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_gl = (getArray (configFile >> "CfgWeapons" >> _gun >> "muzzles")) select 1;
		_glMag = (getArray ( configFile >> "CfgWeapons" >> _gun >> _gl >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addPrimaryWeaponItem _glMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 5 do {_currentUnit addItemToBackpack _glMag;};
		_currentUnit addHeadgear selectRandom hats;

	};
	case "arm0_MG" :
	{
		_gun = selectRandom mg;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom hats;
	};
	case "arm0_AT" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_launcher = selectRandom at;
		_launcherMag = ( getArray ( configFile >> "CfgWeapons" >> _launcher >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addWeapon _launcher;
		_currentUnit addSecondaryWeaponItem _launcherMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack _launcherMag;};
		_currentUnit addHeadgear selectRandom hats;
	};
	case "arm1_Rifle" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest1;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm1_GL" :
	{
		_gun = selectRandom gl;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_gl = (getArray (configFile >> "CfgWeapons" >> _gun >> "muzzles")) select 1;
		_glMag = (getArray ( configFile >> "CfgWeapons" >> _gun >> _gl >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addPrimaryWeaponItem _glMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest1;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 5 do {_currentUnit addItemToBackpack _glMag;};
		_currentUnit addHeadgear selectRandom helm;

	};
	case "arm1_MG" :
	{
		_gun = selectRandom mg;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest1;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm1_AT" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_launcher = selectRandom at;
		_launcherMag = ( getArray ( configFile >> "CfgWeapons" >> _launcher >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addWeapon _launcher;
		_currentUnit addSecondaryWeaponItem _launcherMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest1;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack _launcherMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm2_Rifle" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest2;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm2_GL" :
	{
		_gun = selectRandom gl;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_gl = (getArray (configFile >> "CfgWeapons" >> _gun >> "muzzles")) select 1;
		_glMag = (getArray ( configFile >> "CfgWeapons" >> _gun >> _gl >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addPrimaryWeaponItem _glMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest2;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 5 do {_currentUnit addItemToBackpack _glMag;};
		_currentUnit addHeadgear selectRandom helm;

	};
	case "arm2_MG" :
	{
		_gun = selectRandom mg;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest2;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm2_AT" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_launcher = selectRandom at;
		_launcherMag = ( getArray ( configFile >> "CfgWeapons" >> _launcher >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addWeapon _launcher;
		_currentUnit addSecondaryWeaponItem _launcherMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest2;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack _launcherMag;};
		_currentUnit addHeadgear selectRandom helm;
	};
	case "arm3_Rifle" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest3;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
		_currentUnit addGoggles selectRandom masks;
	};
	case "arm3_GL" :
	{
		_gun = selectRandom gl;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_gl = (getArray (configFile >> "CfgWeapons" >> _gun >> "muzzles")) select 1;
		_glMag = (getArray ( configFile >> "CfgWeapons" >> _gun >> _gl >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addPrimaryWeaponItem _glMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest3;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 5 do {_currentUnit addItemToBackpack _glMag;};
		_currentUnit addHeadgear selectRandom helm;
		_currentUnit addGoggles selectRandom masks;

	};
	case "arm3_MG" :
	{
		_gun = selectRandom mg;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest3;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom helm;
		_currentUnit addGoggles selectRandom masks;
	};
	case "arm3_AT" :
	{
		_gun = selectRandom rifle;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_launcher = selectRandom at;
		_launcherMag = ( getArray ( configFile >> "CfgWeapons" >> _launcher >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addWeapon _launcher;
		_currentUnit addSecondaryWeaponItem _launcherMag;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest3;
		_currentUnit addBackpack selectRandom backpacks;
		for "_i" from 1 to 7 do {_currentUnit addItemToVest _gunMag;};
		for "_i" from 1 to 2 do {_currentUnit addItemToBackpack _launcherMag;};
		_currentUnit addHeadgear selectRandom helm;
		_currentUnit addGoggles selectRandom masks;
	};
	case "Sniper" :
	{
		_gun = selectRandom dmr;
		_gunMag = ( getArray ( configFile >> "CfgWeapons" >> _gun >> "magazines" )) select 0 ;
		_currentUnit addWeapon _gun;
		_currentUnit addPrimaryWeaponItem _gunMag;
		_currentUnit addPrimaryWeaponItem selectRandom sniperOptic;
		_currentUnit forceAddUniform selectRandom uniforms;
		_currentUnit addVest selectRandom vest0;
		for "_i" from 1 to 10 do {_currentUnit addItemToVest _gunMag;};
		_currentUnit addHeadgear selectRandom hats;
		_currentUnit addItemToUniform "FirstAidKit";
		_currentUnit addItemToUniform "FirstAidKit";
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
