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

[_currentUnit, _type] call lmo_loadouts;

_primary = primaryWeapon _currentUnit;
if (_primary == "") then {_currentUnit addPrimaryWeaponItem "acc_flashlight";};
_currentUnit linkItem "ItemMap";
_currentUnit linkItem "ItemCompass";
_currentUnit linkItem "ItemWatch";

 if (_primary == "srifle_EBR_F") exitWith {};
for "_i" from 1 to 3 do {_currentUnit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_currentUnit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_currentUnit addItemToVest "HandGrenade";};
