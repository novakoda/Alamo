_price = invisiblePrice;
_cash = player getVariable "lmo_cash";

if (!incomingEnemy) exitWith {
  hint "Cannot use support between waves.";
  _invisible = ["invisible", invisiblePrice ] remoteExec [ "lmo_addCommMenuItem" ];
  "invisible" remoteExec ["playSound"];
  invisible = _invisible;
};

if (_cash < _price) exitWith {
	hint "You don't have enough money.";
  _invisible = ["invisible", invisiblePrice ] remoteExec [ "lmo_addCommMenuItem" ];
  "invisible" remoteExec ["playSound"];
  invisible = _invisible;
};

player setCaptive true;

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

_time = 60;

while {_time > 0} do {
  _time = _time - 1;

  if (_time <= 10) then {
    titleText [format ["<t size='4' color='#ffa500'>Invisible to Enemies</t><br/>Time Left: <t color='#ff0000'>%1</t>", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring], "PLAIN DOWN", -1, true, true];
    sleep 1;
  } else {
    titleText [format ["<t size='4' color='#ffff00'>Invisible to Enemies</t><br/>Time Left: %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring], "PLAIN DOWN", -1, true, true];
    sleep 1;
  };
};

titleText [format ["<t size='4' color='#ff0000'>No Longer Invisible</t>"], "PLAIN DOWN", -1, true, true];
player setCaptive false;

sleep 5;
_invisible = [player,"invisible"] remoteExec ["BIS_fnc_addCommMenuItem"];
"invisible" remoteExec ["playSound"];
invisible = _invisible;
