/*
Guided Missile script V.1.1 created by Barbuse, dec 2016

To use this script add the following code into a trigger:
nul=[target, startLocation, missileType, missileLaunchingHeight] execVM "guidedMissile.sqf"
For exemple, if the target is laser designated by the player:
nul=[laserTarget player, getPos startLocation, "M_Scalpel_AT", 500] execVM "guidedMissile.sqf"

*/

if (!incomingEnemy) exitWith {hint "Cannot use support between waves."; JdamInUse = false; _jdam = [player,"jdam"] call BIS_fnc_addCommMenuItem; jdam = _jdam; support_jdam_available = true; };

_cash = player getVariable "lmo_cash";
_price = 150;

if (_cash < _price) exitWith {hint "You don't have enough money."; JdamInUse = false;
  _jdam = [player,"jdam"] call BIS_fnc_addCommMenuItem;
  jdam = _jdam;
  support_jdam_available = true;
};


//initializing parameters
_target = _this select 0;
_startPos = _this select 1;
_missileType = _this select 2;
_missileHeight = _this select 3;

//defining parameters
//the faster the target, the more checks it will need 100 is good for fast moving targets such as aircrafts
_perSecondsChecks = 100;
//actual speed of a AIM-54 Phoenix AA missile
_missileSpeed = 500;
_pos = [0,0,0];

//if no target is found -> exit
if (isNull _target) exitWith {hintSilent "No Target Found!"; JdamInUse = false;
_jdam = [player,"jdam"] call BIS_fnc_addCommMenuItem;
jdam = _jdam;
support_jdam_available = true;
};

//if mission active -> exit
if (JdamInUse) exitWith{hint "Missile unavailable!"};

JdamInUse = true;

player setVariable ["lmo_cash",(player getVariable "lmo_cash") - _price, false];
_cash = player getVariable "lmo_cash";
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];


hint "Target Detected!\n\nMissile inbound!";
sleep 5;


//create missile and setting pos
_pos = [_startPos select 0, _startPos select 1, _missileHeight];

//creating missile
_missile = _missileType createVehicle _pos;


//ajusting missile pos while flying
while {alive _missile} do {
if (_missile distance _target > (_missileSpeed / 10)) then {
_dirHor = [_missile, _target] call BIS_fnc_DirTo;
_missile setDir _dirHor;

_dirVer = asin ((((getPosASL _missile) select 2) - ((getPosASL _target) select 2)) / (_target distance _missile));
_dirVer = (_dirVer * -1);
[_missile, _dirVer, 0] call BIS_fnc_setPitchBank;

_flyingTime = (_target distance _missile) / _missileSpeed;
_velocityX = (((getPosASL _target) select 0) - ((getPosASL _missile) select 0)) / _flyingTime;
_velocityY = (((getPosASL _target) select 1) - ((getPosASL _missile) select 1)) / _flyingTime;
_velocityZ = (((getPosASL _target) select 2) - ((getPosASL _missile) select 2)) / _flyingTime;
_missile setVelocity [_velocityX, _velocityY, _velocityZ];


sleep (1/ _perSecondsChecks);
};
};

sleep 180;

JdamInUse = false;
_jdam = [player,"jdam"] call BIS_fnc_addCommMenuItem;
jdam = _jdam;
support_jdam_available = true;


hint "Missile available!";
