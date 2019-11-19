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


if ((_supportype==1) && ArtyInUse) exitWith {
	hint "Artillery has already been used this round.";
	waitUntil {({(side _x) == resistance} count allUnits) == 0};
	sleep 5;
	_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
	arty = _arty;
	ArtyInUse = false;
};

if ((_supportype==2) && MortInUse) exitWith {
	hint "Mortars have already been used this round.";
	waitUntil {({(side _x) == resistance} count allUnits) == 0};
	sleep 5;
	_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
	morty = _morty;
	MortInUse = false;
};


if ((_supportype==1) && !incomingEnemy) exitWith {
hint "Cannot use support between waves.";
_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
arty = _arty;
ArtyInUse = false;
};

if ((_supportype==2) && !incomingEnemy) exitWith {
hint "Cannot use support between waves.";
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
};

_cash = player getVariable "lmo_cash";
_price = 500;

if (_supportype==1) then {_price = artilleryPrice};
if (_supportype==2) then {_price = mortarPrice};

if ((_supportype==1) && (_cash < _price)) exitWith {
	hint "You don't have enough money.";
	_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
	arty = _arty;
	ArtyInUse = false;
};

if ((_supportype==2) && (_cash < _price)) exitWith {
hint "You don't have enough money.";
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
};

_timer = 60;
clicked = false;

_pos = [];
hint "Click on your map to give the coordinates or wait 60 seconds to cancel the strike";
if (_supportype==1) then {ArtyInUse = true; publicVariable "ArtyInUse";};
if (_supportype==2) then {MortInUse = true; publicVariable "MortInUse";};
OnMapSingleClick format["_null = [_pos,%2,%3,%4,%5,%6,%7,'%8',%9] execVM 'support\arty.sqf';clicked=true;onMapSingleClick ''",_pos,_salvos,_radius,_interval,_rps,_supportype,_cost,_ammotype,_price];
//hint format["Position: %1\nSalvos:%2\nRadius:%3\nInterval:%4\nRPS:%5\nSupport type:%6\nCost:%7\nAmmo type:'%8'", _position, _salvos, _radius, _interval, _rps, _supportype, _cost, _ammotype];

// TIMER
while {_timer>0 AND !clicked} do {

_timer = _timer-1; // remove 1 to timer
sleep 1;
};
// TIMER ELLAPSED OR CLICKED
OnMapSingleClick "";

if ((_supportype==1) && !clicked) exitWith {
hint "Strike Canceled.";
_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
arty = _arty;
ArtyInUse = false;
publicVariable "ArtyInUse";
};

if ((_supportype==2) && !clicked) exitWith {
hint "Strike Canceled.";
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
publicVariable "MortInUse";
};

waitUntil {({(side _x) == resistance} count allUnits) == 0};

if (_supportype==1) exitWith {
_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
arty = _arty;
ArtyInUse = false;
publicVariable "ArtyInUse";
};

if (_supportype==2) exitWith {
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
publicVariable "MortInUse";
};
