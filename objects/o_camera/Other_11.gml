/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 0, room_width - view_width);
y = clamp(y, 0, room_height - view_height);

camera_set_view_pos(CAM, x, y);




