/// @description Insert description here
// You can write your code in this editor

weapon_collision = position_meeting(mouse_gui_x, mouse_gui_y, id);
if(weapon_collision) {
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		other.image_index = 0;
		pick_weapon(id)
		image_index = picked ? 1 : 0;
	}
}
if(!weapon_collision){
	image_index = picked ? 1 : 0;
}

function pick_weapon(clickedObj){
	switch(clickedObj) {
		case o_weapon_automatic.id:
			o_weapon_shotgun.picked = false;
			o_weapon_gauss.picked = false;
			o_weapon_plasma.picked = false;
			o_weapon_launcher.picked = false;
			picked = true;
			global.save_data.weapon_picked = 1;
			break;
		case o_weapon_shotgun.id:
			o_weapon_automatic.picked = false;
			o_weapon_gauss.picked = false;
			o_weapon_plasma.picked = false;
			o_weapon_launcher.picked = false;
			picked = true;
			global.save_data.weapon_picked = 2;
			break;
		case o_weapon_gauss.id:
			o_weapon_shotgun.picked = false;
			o_weapon_automatic.picked = false;
			o_weapon_plasma.picked = false;
			o_weapon_launcher.picked = false;
			picked = true;
			global.save_data.weapon_picked = 3;
			break;
		case o_weapon_plasma.id:
			o_weapon_shotgun.picked = false;
			o_weapon_gauss.picked = false;
			o_weapon_automatic.picked = false;
			o_weapon_launcher.picked = false;
			picked = true;
			global.save_data.weapon_picked = 4;
			break;
		case o_weapon_launcher.id:
			o_weapon_shotgun.picked = false;
			o_weapon_gauss.picked = false;
			o_weapon_plasma.picked = false;
			o_weapon_automatic.picked = false;
			picked = true;
			global.save_data.weapon_picked = 5;
			break;
	}
}


