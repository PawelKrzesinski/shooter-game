/// @description Insert description here
// You can write your code in this editor

global.player_stats = ["Max Health", "Reload Speed", "Damage", "Aim", "Ammo Capacity", "Walk Speed", "Armor"]
global.level_exp = [1000, 2000, 3000, 4000, 5000];
global.save_data = {
	level: 1,
	current_exp: 0,
	next_level_exp: 1000,
	max_level: 5,
	walk_spd: 4,
	hp: 100,
	max_hp: 100,
	reload_spd: 0,
	damage: 0,
	aim: 0,
	ammo_cap: 0,
	armor: 0,
	gold: 0,
	stat_points: 10,
	weapon_picked: 0,
}

//Dimensions for spawning objects
global.dimensions = {
	char_width: 32,
	char_heigth: 32,
	healthbar_width: 52,
	healthbar_height: 6,
}




