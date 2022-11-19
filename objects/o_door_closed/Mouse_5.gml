/// @description Insert description here
// You can write your code in this editor

function open_door(){
	instance_create_layer(x, y, "tile_walls", o_door_opened)
	instance_destroy();
}


open_door()

