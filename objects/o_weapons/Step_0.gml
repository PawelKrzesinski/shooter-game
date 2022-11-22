/// @description Insert description here
// You can write your code in this editor

recoil = max(0, recoil - 1);

if (instance_exists(o_player) && o_mouse.key_attack && attack_timer <= 0){
	recoil = recoil;
	attack_timer = attack_timer_max;
	
	
	switch(global.save_data.weapon_picked) {
		case 1:
			instance_create_layer(x, y, "Bullet", o_bullet_auto);
			break;
		case 2:
			instance_create_layer(x, y, "Bullet", o_bullet_shotgun);
			instance_create_layer(x, y, "Bullet", o_bullet_shotgun);
			instance_create_layer(x, y, "Bullet", o_bullet_shotgun);
			instance_create_layer(x, y, "Bullet", o_bullet_shotgun);
			instance_create_layer(x, y, "Bullet", o_bullet_shotgun);
			break;
		case 3:
			instance_create_layer(x, y, "Bullet", o_bullet_gauss);
			break;
		case 4:
			instance_create_layer(x, y, "Bullet", o_bullet_plasma);
			instance_create_layer(x, y, "Bullet", o_bullet_plasma);
			instance_create_layer(x, y, "Bullet", o_bullet_plasma);
			break;
		case 5:
			instance_create_layer(x, y, "Bullet", o_bullet_launcher);
			break;
		default:
			break;
		
	}


}
x = o_player.x - 8 * o_mouse.flippedX;
y = o_player.y + 8;



if (attack_timer > 0) attack_timer -= 1;
