_player = _this select 1;
_action = _this select 2;
_perkBox = _this select 3 select 0;
_price = _this select 3 select 1;
_cash = player getVariable "lmo_cash";

player setAnimSpeedCoef 1.18;

playSound "perk";
titleText ["<t size='3' color='#00ff00'> SPEED PERC POPPED </t><br/>Run up on da ops faster and cap they asses", "PLAIN DOWN", -1, true, true];


player setVariable ["staminaPerk", true, false];
player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
