/// @description Insert description here
// You can write your code in this editor
if(instance_exists(o_player)) {
	var _x = o_player.x - view_width/2;
	var _y = o_player.y - view_height/2;
	
	_x = clamp(_x, 0, room_width - view_width);
	_y = clamp(_y, 0, room_height - view_height);
	
	x = _x;
	y = _y;
	camera_set_view_pos(CAM, _x, _y);
}



