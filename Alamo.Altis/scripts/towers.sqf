_player = _this select 1;
_action = _this select 2;
_tower = _this select 3 select 0;
_trigger = _this select 3 select 1;
_price = _this select 3 select 2;
_cash = player getVariable "lmo_cash";

deleteVehicle _trigger;
player removeAction _action;

[_tower, false] remoteExec ["hideObjectGlobal", 0];
[_tower, true] remoteExec ["enableSimulationGlobal", 0];

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

"build" remoteExec ["playSound"];

if (_tower == tower) exitWith {
  tBuilt = true;
  publicVariable "tBuilt";
  ["Reward",["Tower Constructed", "Main Tower Purchased"]] remoteExec ["BIS_fnc_showNotification"];
  [box2, ["Arsenal",{["Open",true] call BIS_fnc_arsenal}]] remoteExec ["addAction"];
};

if (_tower == nTower) then { nBuilt = true; publicVariable "nBuilt";};
if (_tower == sTower) then { sBuilt = true; publicVariable "sBuilt";};
if (_tower == eTower) then { eBuilt = true; publicVariable "eBuilt";};
if (_tower == wTower) then { wBuilt = true; publicVariable "wBuilt";};
["Reward",["Tower Constructed", "Perimeter Tower Purchased"]] remoteExec ["BIS_fnc_showNotification"];
