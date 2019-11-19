start1_loadouts = ["arm0_Pistol"];
start2_loadouts = [ "arm0_Basic"];
lvl0_loadouts = ["arm0_Rifle", "arm0_GL", "arm0_MG", "arm0_AT"];
lvl1_loadouts = ["arm1_AT", "arm1_Rifle", "arm1_GL", "arm1_MG"];
lvl2_loadouts = ["arm2_AT", "arm2_Rifle", "arm2_GL", "arm2_MG"];
lvl3_loadouts = ["arm3_Rifle", "arm3_GL", "arm3_MG", "arm3_AT"];

if (waveLvl == 1) then {
spawnGuys = start1_loadouts;
};

if (waveLvl == 2) then {
spawnGuys = start1_loadouts + start2_loadouts;
};

if (waveLvl == 3) then {
spawnGuys = start2_loadouts;
};

if (waveLvl == 4) then {
spawnGuys = start2_loadouts + lvl0_loadouts;
};

if (waveLvl == 5) then {
spawnGuys = lvl0_loadouts;
};

if (waveLvl == 6) then {
spawnGuys = lvl0_loadouts + lvl0_loadouts  +  lvl1_loadouts;
};

if ((waveLvl > 6) && (waveLvl <= 8)) then {
spawnGuys = lvl0_loadouts + lvl1_loadouts;
};

if (waveLvl == 9) then {
spawnGuys = lvl0_loadouts + lvl1_loadouts + lvl1_loadouts;
};

if (waveLvl == 10) then {
spawnGuys = lvl1_loadouts;
};

if (waveLvl == 11) then {
spawnGuys = lvl1_loadouts + lvl1_loadouts + lvl2_loadouts;
};

if ((waveLvl > 11) && (waveLvl <= 13)) then {
spawnGuys = lvl1_loadouts + lvl2_loadouts;
};

if (waveLvl == 14) then {
spawnGuys = lvl1_loadouts + lvl2_loadouts + lvl2_loadouts;
};

if (waveLvl == 15) then {
spawnGuys = lvl2_loadouts;
};

if (waveLvl == 16) then {
spawnGuys = lvl2_loadouts + [lvl2_loadouts] + [lvl3_loadouts];
};

if ((waveLvl > 16) && (waveLvl <= 18)) then {
spawnGuys = lvl2_loadouts + lvl3_loadouts;
};

if (waveLvl == 19) then {
spawnGuys = lvl2_loadouts + lvl3_loadouts + lvl3_loadouts;
};

if (waveLvl > 19) then {
spawnGuys = lvl3_loadouts;
};
