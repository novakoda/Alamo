lmo_hudWave_Load = {
  uiNameSpace setVariable ['hudWave', (_this select 0) displayCtrl 1001];
};

lmo_hudCash_Load = {
  uiNameSpace setVariable ['hudCash', (_this select 0) displayCtrl 1000];
};

lmo_waveLvlMP = {
	(uiNameSpace getVariable "hudWave") ctrlSetText format ["Wave Level : %1", waveLvl];
};

lmo_killMoney = {

params ["_killed", "_award", "_myName"];
_award = 0;

	switch (true) do {

		case (_killed isKindOf "Man" && side group _killed == resistance) : {

			_award = manPrice;
      _myName = profileName;
      player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};
		case (typeOf _killed == offroads) : {

			_award = offroadPrice;
			_myName = profileName;
			player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};
    case (typeOf _killed == mraps) : {

			_award = mrapPrice;
			_myName = profileName;
			player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};
		case (typeOf _killed == wheeled) : {

			_award = wheeledPrice;
			_myName = profileName;
			player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};

		case (typeOf _killed == tracked) : {

			_award = trackedPrice;
			_myName = profileName;
			player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};

    case (typeOf _killed == tanks) : {

      _award = tankPrice;
      _myName = profileName;
      player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
    };

		case (_killed isKindOf "Air") : {

			_award = airPrice;
			_myName = profileName;
			player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _award, false];
      _cash = player getVariable "lmo_cash";
      (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];
		};
	};
};

lmo_addMoney = {
	private ["_amount"];
  _amount = _this select 0;
  player setVariable ["lmo_cash",(player getVariable "lmo_cash") + _amount, false];
  _cash = player getVariable "lmo_cash";
  (uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

};

add_tower_action =
{
	_this getVariable "params" params ["_tower", "_price"];

  _cond = false;
  if (_tower == nTower) then { _cond = nBuilt; };
  if (_tower == sTower) then { _cond = sBuilt; };
  if (_tower == eTower) then { _cond = eBuilt; };
  if (_tower == wTower) then { _cond = wBuilt; };
  if (_tower == tower) then { _cond = tBuilt; };

  if (_cond isEqualTo true) exitWith {};

  if ((player getVariable ['lmo_cash', 0] < _price) && (_cond isEqualTo false)) exitWith {
  _this setVariable ["tower_action", player addAction [format ["Purchase Tower <t color='#ff0000'>$%1</t>", _price], {}, [], 5, true, false, "", ""]];
  };

	_this setVariable ["tower_action", player addAction [format ["Purchase Tower <t color='#00ff00'>$%1</t>", _price], "scripts\towers.sqf", [_tower, _this, _price], 5, true, true, "", ""]];
};

remove_tower_action =
{
	player removeAction (_this getVariable ["tower_action", -1]);
	_this setVariable ["tower_action", -1];
};

lmo_towers =
{
	if (!hasInterface) exitWith {};

	params ["_tower", "_price"];

	_trig = createTrigger ["EmptyDetector", getPos _tower, false];
	_trig setVariable ["params", _this];
	_trig setVariable ["tower_action", -1];

	_trig setTriggerArea [5, 5, 0, false];
	_trig triggerAttachVehicle [player];
	_trig setTriggerActivation ["VEHICLE", "PRESENT", true];
	_trig setTriggerStatements ["this", "thisTrigger call add_tower_action", "thisTrigger call remove_tower_action"];
};
