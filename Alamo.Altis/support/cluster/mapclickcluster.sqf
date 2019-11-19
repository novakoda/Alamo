// _null = [salvos, radius, interval between salvos(in seconds), shots per salvo, support type, CP cost, ammotype] execVM "support\arty.sqf"
//  AMMO TYPES: R_60mm_HE / R_80mm_HE /Bo_Air_LGB(no sounds)/ Grenade / Bo_Mk82
//  SUPPORT TYPE: 1 = arty, 2 = mortar, 3 = jdam

_salvos = _this select 0;
_radius = _this select 1;
_interval = _this select 2;
_rps = _this select 3;
_supportype = _this select 4; // 1 = arty, 2 = mortar, 3 = jdam
_cost = _this select 5;
_ammotype = _this select 6;

if (ClusterInUse) exitWith {
	hint "CBU has already been used this round.";
	waitUntil {({(side _x) == resistance} count allUnits) == 0};
	sleep 5;
	_cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem;
	cluster = _cluster;
	ClusterInUse = false;
};

if (!incomingEnemy) exitWith {hint "Cannot use support between waves."; _cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem; cluster = _cluster; ClusterInUse = false;};

_cash = player getVariable "lmo_cash";
_price = clusterPrice;

if (_cash < _price) exitWith {hint "You don't have enough money."; _cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem; cluster = _cluster; ClusterInUse = false;};


_timer = 60;
clicked = false;

_pos = [];
hint "Click on your map to give the coordinates or wait 60 seconds to cancel the strike";
ClusterInUse = true;
publicVariable "ClusterInUse";
OnMapSingleClick format["_null = [_pos,%2,%3,%4,%5,%6,%7,'%8',%9] execVM 'support\cluster\cluster.sqf';clicked=true;onMapSingleClick ''",_pos,_salvos,_radius,_interval,_rps,_supportype,_cost,_ammotype,_price];
//hint format["Position: %1\nSalvos:%2\nRadius:%3\nInterval:%4\nRPS:%5\nSupport type:%6\nCost:%7\nAmmo type:'%8'", _position, _salvos, _radius, _interval, _rps, _supportype, _cost, _ammotype];

// TIMER
while {_timer>0 AND !clicked} do {

_timer = _timer-1; // remove 1 to timer
sleep 1;
};


// TIMER ELLAPSED OR CLICKED
OnMapSingleClick "";

if (!clicked) exitWith {
hint "Strike Canceled.";
_cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem;
cluster = _cluster;
ClusterInUse = false;
publicVariable "ClusterInUse";
};



waitUntil {({(side _x) == resistance} count allUnits) == 0};

_cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem;
cluster = _cluster;
ClusterInUse = false;
publicVariable "ClusterInUse";
