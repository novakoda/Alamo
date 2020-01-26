player createDiaryRecord ["Diary", ["Mission", "Survive each wave of enemies, they get slightly harder and harder each wave. Vehicles and snipers spawn in the later rounds. Enemies getting too hard? Pop a perc and even the odds! If you die, you can't respawn until the end of the wave. If all players die, the wave is lost and begins again."]];

_index = player createDiarySubject ["Alamo","The Alamo Info"];

player createDiaryRecord ["Alamo", ["Using Custom Faction", "To use custom factions, open classNames.sqf and scroll down to 'case (6)'. You'll need to enter the classnames for enemy clothes, armor, weapons and vehicles. You can add as many items as you want or one, but the arrays can't be left empty or there will be errors."]];
player createDiaryRecord ["Alamo", ["Bugs", "Sometimes an AI group will spawn and not move. If this happens, either you can use the UAV to find and kill them or use the action on the debug laptop at base to advance the level.<br/>NOTE: You don't get the bonus for completing the wave if you advance with the debug laptop."]];
player createDiaryRecord ["Alamo", ["Credits", "HUGE thanks to Larrow for help with heli waypoints and the support menu prices.<br/>Also a huge thanks to killzone_kid for help with the action for buying towers.<br/>Big shouts out to Daxx for the arena compositions<br/>Thanks Austin(medic) and LSD for their composition packs<br/>Thanks shuko for the random position script<br/>Thanks kibot for the support scripts from DUWS<br/>Thanks wogz187 and pierremgi for help on the forums<br/>Big thanks to Phil, Bruno and Porte for all their patience during testing.<br/>ssCustom images, sounds and music by JR Nova."]];
player createDiaryRecord ["Alamo", ["Time Cycle", "Morning<br/><br/>Noon<br/><br/>Evening<br/><br/>Night<br/><br/>Night (Dark)<br/><br/>Morning"]];
player createDiaryRecord ["Alamo", ["Unlocks", "Wave 2 - Heal (Support Menu)<br/>Wave 3 - Virtual Arsenal<br/>Wave 4 - Rearm (Support Menu)<br/>Wave 7 - UAV Recon (Support Menu)<br/>Wave 8 - Medical Healing Building<br/>Wave 9 - Invisibility (Support Menu)<br/>Wave 10 - God Mode (Support Menu)<br/>Wave 11 - Mortars<br/>Wave 15 - Laser Guided Missile<br/>Wave 17 - APC at base<br/>Wave 20 - Artillery<br/>Wave 23 - Tank at base<br/>Wave 25 - Carpet Bombs"]];
player createDiaryRecord ["Alamo", ["Support", "Laser Designated Missile - If you have a laser designator, you can call in laser designated missile strikes after wave 15. You must keep your laser designator on the target until the missile strikes. (There might currently be a bug that removes the missile if you turn the designator off).<br/><br/>Artillery, Mortars, Carpet Bomb - Choose one of the 3 from the support menu and click on the map to rain down fire from above.<br/><br/>UAV Recon - All hostile units will be marked for the remainer of the round. These markers will update every few seconds to track enemy movement.<br/><br/>Rearm - Reapplies last loadout that was equiped when arsenal was closed.<br/><br/>Invisibility - Makes enemies ignore you until the timer expires.<br/><br/>God Mode - Makes you immune to damage until the timer expires."]];
player createDiaryRecord ["Alamo", ["Pop-A-Perc", "SHOOTER PERC - Lowers weapon sway and recoil.<br/><br/>CLUTCH PERC - Speeds up how fast you revive teammates.<br/><br/>SPEED PERC - Increases your movement speed.<br/><br/>BEAST PERC - Increase how much damage you can take."]];
