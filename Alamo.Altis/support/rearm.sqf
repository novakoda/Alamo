_price = rearmPrice;
_cash = player getVariable "lmo_cash";

if (_cash < _price) exitWith {
	hint "You don't have enough money.";
	_rearm = [player,"rearm"] remoteExec ["BIS_fnc_addCommMenuItem"];
	"loadgun" remoteExec ["playSound"];
  rearm = _rearm;
};

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;
