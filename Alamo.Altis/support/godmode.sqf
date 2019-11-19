_price = godmodePrice;
_cash = player getVariable "lmo_cash";

if (!incomingEnemy) exitWith {
  hint "Cannot use support between waves.";
  _godmode = [player,"godmode"] remoteExec ["BIS_fnc_addCommMenuItem"];
  "godmode" remoteExec ["playSound"];
  godmode = _godmode;
};

if (_cash < _price) exitWith {
	hint "You don't have enough money.";
  _godmode = [player,"godmode"] remoteExec ["BIS_fnc_addCommMenuItem"];
  "godmode" remoteExec ["playSound"];
  godmode = _godmode;
};

player allowDamage false;

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

_time = 60;

while {_time > 0} do {
  _time = _time - 1;

  if (_time <= 10) then {
    titleText [format ["<t size='4' color='#ffa500'>GOD MODE! :D</t><br/>Time Left: <t color='#ff0000'>%1</t>", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring], "PLAIN DOWN", -1, true, true];
    sleep 1;
  } else {
    titleText [format ["<t size='4' color='#ffff00'>GOD MODE! :D</t><br/>Time Left: %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring], "PLAIN DOWN", -1, true, true];
    sleep 1;
  };
};

titleText [format ["<t size='4' color='#ff0000'>GOD MODE OVER :(</t>"], "PLAIN DOWN", -1, true, true];
player allowDamage true;

sleep 5;
_godmode =  [player,"godmode"] remoteExec ["BIS_fnc_addCommMenuItem"];
"godmode" remoteExec ["playSound"];
godmode = _godmode;
