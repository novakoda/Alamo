if (UavInUse) exitWith {
	hint "UAV has already been used this round.";
	waitUntil {({(side _x) == resistance} count allUnits) == 0};
	sleep 5;
	_uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem;
	uav_recon = _uav_recon;
	support_uav_recon_available = true;
};

_cash = player getVariable "lmo_cash";
_price = uavPrice;

UavInUse = false;

if (!incomingEnemy) exitWith {hint "Cannot use support between waves."; _uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem; uav_recon = _uav_recon; support_uav_recon_available = true;};
if (_cash < _price) exitWith {hint "Not enough money."; _uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem; uav_recon = _uav_recon; support_uav_recon_available = true;};

UavInUse = true;
publicVariable "UavInUse";

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

_null = [getpos attackPos,500] execVM 'support\uav_map.sqf';
hint "UAV Inbound.";
