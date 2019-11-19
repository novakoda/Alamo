_price = healPrice;
_cash = player getVariable "lmo_cash";

if (_cash < _price) exitWith {
	hint "You don't have enough money.";

	_heal = [player,"heal"] remoteExec ["BIS_fnc_addCommMenuItem"];
	"hospital" remoteExec ["playSound"];
  heal = _heal;

};

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

player setDamage 0;
