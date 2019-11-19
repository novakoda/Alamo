waitUntil{waveLvl > 2};

 ["Reward",["Virtual Arsenal Unlocked", "You can now use virtual arsenal on the ammo box at base!"]] remoteExec ["BIS_fnc_showNotification"];
"loadgun" remoteExec ["playSound"];
[box1, ["Arsenal",{["Open",true] call BIS_fnc_arsenal}]] remoteExec ["addAction"];

waitUntil{sleep 5; med};

 ["Reward",["Medical Building Unlocked", "You Can Fully Heal At The Medical Building For Free"]] remoteExec ["BIS_fnc_showNotification"];
"hospital" remoteExec ["playSound"];

waitUntil{sleep 5; apc};

 ["Reward",["APC Unlocked", "You Can Now Use The APC At Base"]] remoteExec ["BIS_fnc_showNotification"];
"tank" remoteExec ["playSound"];

waitUntil{sleep 5; tank};

 ["Reward",["Tank Unlocked", "You Can Now Use The Tank At Base"]] remoteExec ["BIS_fnc_showNotification"];
"tank" remoteExec ["playSound"];
