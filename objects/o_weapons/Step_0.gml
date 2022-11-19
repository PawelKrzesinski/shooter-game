/// @description Insert description here
// You can write your code in this editor

image_yscale = o_mouse.flippedX;
key_attack = mouse_check_button(mb_left);
recoil = max(0, recoil - 1);
towards_mouse_angle = point_direction(x, y, mouse_x, mouse_y);
if (instance_exists(o_player) && key_attack && attack_timer <= 0){
		recoil = recoil;
		attack_timer = attack_timer_max;
		bullet = instance_create_layer(x, y, "Bullet", bullets);
		bullet.image_angle = towards_mouse_angle;
		bullet.direction = towards_mouse_angle + random_range(-3, 3);	

}
x = o_player.x - 8 * o_mouse.flippedX;
y = o_player.y + 8;



if (attack_timer > 0) attack_timer -= 1;
