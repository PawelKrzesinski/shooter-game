/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_gui_x, mouse_gui_y, id))
{
	image_index = 1
	if(mouse_check_button_pressed(mb_left)){
		update_stat(stat);
	}	
} else {
	image_index = 0
}
if(global.save_data.stat_points < 1) instance_destroy();
