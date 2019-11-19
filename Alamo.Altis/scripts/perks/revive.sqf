_player = _this select 1;
_action = _this select 2;
_perkBox = _this select 3 select 0;
_price = _this select 3 select 1;
_cash = player getVariable "lmo_cash";

player setUnitTrait ["Medic",true];

titleText ["<t size='3' color='#00ff00'> CLUTCH PERC POPPED </t><br/>Revive da homies twice as fast", "PLAIN DOWN", -1, true, true];
playSound "perk";

player setVariable ["revivePerk", true, false];
player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
