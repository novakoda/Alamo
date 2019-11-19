waitUntil{waveLvl > 1};

_heal = ["heal", healPrice ] remoteExec [ "lmo_addCommMenuItem" ];
"hospital" remoteExec ["playSound"];
heal = _heal;

waitUntil{waveLvl > 3};

_rearm = ["rearm", rearmPrice ] remoteExec [ "lmo_addCommMenuItem"];
"loadgun" remoteExec ["playSound"];
rearm = _rearm;

waitUntil{waveLvl > 6};

_uav_recon = ["uav_recon", uavPrice ] remoteExec [ "lmo_addCommMenuItem" ];
"sos" remoteExec ["playSound"];
uav_recon = _uav_recon;
support_uav_recon_available = true;

waitUntil{waveLvl > 8};

_invisible = ["invisible", invisiblePrice ] remoteExec [ "lmo_addCommMenuItem" ];
"invisible" remoteExec ["playSound"];
invisible = _invisible;

waitUntil{waveLvl > 9};

_godmode = ["godmode", godmodePrice ] remoteExec [ "lmo_addCommMenuItem" ];
"godmode" remoteExec ["playSound"];
godmode = _godmode;

waitUntil{waveLvl > 10};

_morty = ["mortar", mortarPrice ] remoteExec [ "lmo_addCommMenuItem" ];
"sos" remoteExec ["playSound"];
morty = _morty;
support_mortar_available = true;

waitUntil{waveLvl > 14};

_jdams = ["jdam", jdamPrice ] remoteExec [ "lmo_addCommMenuItem" ];
"sos" remoteExec ["playSound"];
jdams = _jdams;
support_jdam_available = true;



waitUntil{waveLvl > 19};

_arty = [ "artillery", artilleryPrice ] remoteExec[ "lmo_addCommMenuItem" ];
"sos" remoteExec ["playSound"];
arty = _arty;
support_arty_available = true;

waitUntil{waveLvl > 24};

_cluster = ["cluster", clusterPrice ] remoteExec [ "lmo_addCommMenuItem" ];
"sos" remoteExec ["playSound"];
cluster = _cluster;
support_cluster_available = true;
