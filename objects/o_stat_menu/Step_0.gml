/// @description Insert description here
// You can write your code in this editor

//Get the values of every stat from the global var
stat_values = [
	string(global.save_data.max_hp),
	string(global.save_data.reload_spd),
	string(global.save_data.damage),
	string(global.save_data.aim),
	string(global.save_data.ammo_cap),
	string(global.save_data.walk_spd),
	string(global.save_data.armor),
]
save_data = {
	stat_points: string(global.save_data.stat_points),
	level : string(global.save_data.level),
	current_exp: string(global.save_data.current_exp),
	next_level_exp: string(global.save_data.next_level_exp),
}






