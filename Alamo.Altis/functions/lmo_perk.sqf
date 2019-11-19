lmo_perk = {
	params [ "_perkBox", "_function"];
	_perkBox call _function;
};

lmo_aimingPerk = {
	_price = aimingPerkPrice;

	_perkBox addAction [format ["Pop-A-Perc : <t color='#4444ff'>SHOOTER</t> <t color='#00ff00'>$%1</t>", _price], "scripts\perks\aiming.sqf", [_perkBox, _price], 5, true, false, "", "player getVariable ['aimingPerk', false] isEqualTo false && player getVariable ['lmo_cash', 0] >= aimingPerkPrice && (player distance aimingPerkBox) < 4"];
	_perkBox addAction [format ["Pop-A-Perc : <t color='#4444ff'>SHOOTER</t> <t color='#ff0000'>$%1</t>", _price], {}, [], 5, true, false, "", "player getVariable ['lmo_cash', 0] < aimingPerkPrice && player getVariable ['aimingPerk', false] isEqualTo false && (player distance aimingPerkBox) < 4"];
	_perkBox addAction ["Pop-A-Perc : <t color='#4444ff'>SHOOTER</t> <t color='#ff0000'>Owned</t>", {}, [], 5, true, false, "", "player getVariable ['aimingPerk', false] isEqualTo true && (player distance aimingPerkBox) < 4"];
};

lmo_revivePerk = {
	_price = revivePerkPrice;

	_perkBox addAction [format ["Pop-A-Perc : <t color='#ff4444'>CLUTCH</t> <t color='#00ff00'>$%1</t>", _price], "scripts\perks\revive.sqf", [_perkBox, _price], 5, true, false, "", "player getVariable ['revivePerk', false] isEqualTo false && player getVariable ['lmo_cash', 0] >= revivePerkPrice && (player distance revivePerkBox) < 4"];
	_perkBox addAction [format ["Pop-A-Perc : <t color='#ff4444'>CLUTCH</t> <t color='#ff0000'>$%1</t>", _price], {}, [], 5, true, false, "", "player getVariable ['lmo_cash', 0] < revivePerkPrice && player getVariable ['revivePerk', false] isEqualTo false && (player distance revivePerkBox) < 4"];
	_perkBox addAction ["Pop-A-Perc : <t color='#ff4444'>CLUTCH</t> <t color='#ff0000'>Owned</t>", {}, [], 5, true, false, "", "player getVariable ['revivePerk', false] isEqualTo true && (player distance revivePerkBox) < 4"];
};

lmo_staminaPerk = {
	_price = staminaPerkPrice;

	_perkBox addAction [format ["Pop-A-Perc : <t color='#00ff99'>SPEED</t> <t color='#00ff00'>$%1</t>", _price], "scripts\perks\stamina.sqf", [_perkBox, _price], 5, true, false, "", "player getVariable ['staminaPerk', false] isEqualTo false && player getVariable ['lmo_cash', 0] >= staminaPerkPrice && (player distance staminaPerkBox) < 4"];
	_perkBox addAction [format ["Pop-A-Perc : <t color='#00ff99'>SPEED</t> <t color='#ff0000'>$%1</t>", _price], {}, [], 5, true, false, "", "player getVariable ['lmo_cash', 0] < staminaPerkPrice && player getVariable ['staminaPerk', false] isEqualTo false && (player distance staminaPerkBox) < 4"];
	_perkBox addAction ["Pop-A-Perc : <t color='#00ff99'>SPEED</t> <t color='#ff0000'>Owned</t>", {}, [], 5, true, false, "", "player getVariable ['staminaPerk', false] isEqualTo true && (player distance staminaPerkBox) < 4"];
};

lmo_strongPerk = {
	_price = strongPerkPrice;

	_perkBox addAction [format ["Pop-A-Perc : <t color='#FF8300'>BEAST</t> <t color='#00ff00'>$%1</t>", _price], "scripts\perks\strong.sqf", [_perkBox, _price], 5, true, false, "", "player getVariable ['strongPerk', false] isEqualTo false && player getVariable ['lmo_cash', 0] >= strongPerkPrice && (player distance strongPerkBox) < 4"];
	_perkBox addAction [format ["Pop-A-Perc : <t color='#FF8300'>BEAST</t> <t color='#ff0000'>$%1</t>", _price], {}, [], 5, true, false, "", "player getVariable ['lmo_cash', 0] < strongPerkPrice && player getVariable ['strongPerk', false] isEqualTo false && (player distance strongPerkBox) < 4"];
	_perkBox addAction ["Pop-A-Perc : <t color='#FF8300'>BEAST</t> <t color='#ff0000'>Owned</t>", {}, [], 5, true, false, "", "player getVariable ['strongPerk', false] isEqualTo true && (player distance strongPerkBox) < 4"];
};
