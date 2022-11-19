/// @description Insert description here
// You can write your code in this editor
weapon_picked = global.save_data.weapon_picked
if(position_meeting(mouse_gui_x, mouse_gui_y, id) && global.save_data.weapon_picked != 0){
	image_index = 1
	if(mouse_check_button_pressed(mb_left)){
		spawn_weapon()
		close_weapon_menu()
		exit;
	}	
} else {
	image_index = 0
}

