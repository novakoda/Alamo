_player = _this select 1;
_action = _this select 2;
_perkBox = _this select 3 select 0;
_price = _this select 3 select 1;
_cash = player getVariable "lmo_cash";

player addEventHandler ["HandleDamage", {
  _unit = _this select 0;
  _selection = _this select 1;
  _damage = _this select 2;

  if (_selection == "?") exitWith {};

  _curDamage = damage _unit;
  if (_selection != "") then {_curDamage = _unit getHit _selection};
  _newDamage = _damage - _curDamage;

  _damage - _newDamage * 0.75
}];

playSound "perk";
titleText ["<t size='3' color='#00ff00'> BEAST PERC POPPED </t><br/>Dem bitch ass bullets don't hurt like they used to.", "PLAIN DOWN", -1, true, true];

player setVariable ["strongPerk", true, false];
player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
