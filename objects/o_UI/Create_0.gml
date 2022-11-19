/// @description Insert description here
// You can write your code in this editor

//exact middle of the view
display_width = display_get_width();
display_height = display_get_height();

stats_count = array_length(global.player_stats);
margin = 30;
enum Anchor
{
	top_left,top_center,top_right,
	middle_left,middle_center,middle_right,
	bottom_left,bottom_center,bottom_right
}

enum Alignment
{
	top=0,middle=1,bottom=2,
	left=0,center=1,right=2
}

stat_names = [
	o_stat_btn_hp,
	o_stat_btn_rld_spd,
	o_stat_btn_dmg,
	o_stat_btn_aim,
	o_stat_btn_ammo_cap,
	o_stat_btn_walk_spd,
	o_stat_btn_armor
]

#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)

//Opens/closes stats menu
function open_stat_menu(){
	menu_opened = instance_exists(o_stat_menu);
	if(!menu_opened) {
		instance_create_depth(0,0, -999, o_stat_menu)
		with(o_stat_menu){	
			if(instance_exists(o_stat_menu) && global.save_data.stat_points > 0){
				for(var i = 0; i <= stats_count - 1; i++){
					instance_create_depth(300, 155 + margin * i, -1000, other.stat_names[i])
				}
			}
		}
	} else {
		with (o_stat_menu) {
			instance_destroy();
		}
		with(o_stat_btns) {
			instance_destroy();	
		}
	}

}

event_user(0);


