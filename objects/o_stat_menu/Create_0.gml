/// @description Insert description here
// You can write your code in this editor
window_width = display_get_gui_width()/4;
window_height =  display_get_gui_height()*0.75;

player_stats = global.player_stats;
stats_count = array_length(player_stats);
margin = 30;
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
