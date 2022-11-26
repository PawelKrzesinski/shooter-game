/// @description Insert description here
// You can write your code in this editor
flippedX = mouse_x > x ? 1 : -1;
key_attack = mouse_check_button(mb_left);
towards_mouse_angle = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);

ui_open = instance_exists(o_weapon_pick_menu) || instance_exists(o_stat_menu)

if(ui_open) {
	window_set_cursor(cr_default)	
} else {
	window_set_cursor(cr_none)
}