/// @description Insert description here
// You can write your code in this editor


direction = point_direction(x, y, o_player.x, o_player.y);
bullet = instance_place(x, y, o_bullet);

if (bullet != noone) {
	hp -= o_weapons.damage;
	bullet.death = true;
};

if(hp <= 0) {
	global.save_data.gold += 10;
	global.save_data.current_exp += 1000;
	o_spawner.enemyCount += -1;
	instance_destroy()
};



