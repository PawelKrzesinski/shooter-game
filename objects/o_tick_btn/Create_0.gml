/// @description Insert description here
// You can write your code in this editor

picked = false;

function spawn_weapon(){
	switch(weapon_picked){
		case 1:
			instance_create_layer(o_player.x, o_player.y,"Instances", o_assault_rifle);
			break;
		case 2:
			instance_create_layer(o_player.x, o_player.y,"Instances", o_shotgun);
			break;
		case 3:
			instance_create_layer(o_player.x, o_player.y,"Instances", o_gauss_rifle);
			break;
		case 4:
			instance_create_layer(o_player.x, o_player.y,"Instances", o_plasma_rifle);
			break;
		case 5:
			instance_create_layer(o_player.x, o_player.y,"Instances", o_launcher);
			break;
	}
	with(o_tick_btn){
		instance_destroy();
	}
}


function close_weapon_menu(){
		with(o_weapon){
			instance_destroy();
		}
		with(o_weapon_pick_menu){
			instance_destroy();	
		}

		exit;
}

