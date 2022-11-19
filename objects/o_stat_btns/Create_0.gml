/// @description Insert description here
// You can write your code in this editor
enum stats {
	max_hp,
	walk_spd,
	aim,
	reload_spd,
	damage,
	armor,
	ammo_cap,
}

function update_stat(stat) {
	switch(stat){
		case stats.walk_spd:
			global.save_data.walk_spd += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
		case stats.max_hp:
			global.save_data.max_hp += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
		case stats.aim:
			global.save_data.aim += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)				
			break;
		case stats.reload_spd:
			global.save_data.reload_spd += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
		case stats.damage:
			global.save_data.damage += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
		case stats.ammo_cap:
			global.save_data.ammo_cap += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
		case stats.armor:
			global.save_data.armor += 1;
			global.save_data.stat_points -= 1;
			mouse_clear(mb_left)
			break;
	}
}



