/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

flippedX = mouse_x > x ? 1 : -1;
//Movement
function calculateMovement() {
	vsp = global.save_data.walk_spd * ((key_down) - (key_up));
	hsp = global.save_data.walk_spd * ((key_right) - (key_left));
	collision_found = place_meeting(x + hsp, y + vsp, o_collision)
	if(collision_found){
		hsp = 0;
		vsp = 0;
	}
	x += hsp;
	y += vsp;
	
	exit_found = place_meeting(x + hsp, y + vsp, o_exit_room)
	if(exit_found) room_goto_next();
}
calculateMovement()

//Enemy collision and damage taking
enemy = instance_place(x, y, o_enemies);

if (enemy != noone && invincible_timer = 30) {
	global.save_data.hp  -= enemy.damage;
	got_hit = true;
};

if (got_hit){
	flash = 1;
	if(invincible_timer > 0) {
		invincible_timer += -1;
	} else {	
		got_hit = false;
		invincible_timer += 30;
	}
}

if(global.save_data.hp < 1) {
	room_restart();
};

if(global.save_data.current_exp >= global.save_data.next_level_exp) {
	if(global.save_data.max_level == global.save_data.level) return;
	level_up();
}
function level_up() {
	global.save_data.level += 1;
	global.save_data.stat_points += 10;
	global.save_data.max_hp += 5;
	global.save_data.damage += 1;
	global.save_data.armor += 0.1;
	next_level_exp = determine_next_level_exp();
	global.save_data.next_level_exp = next_level_exp;
}

function determine_next_level_exp() {
	for(var i = 0; i < array_length(global.level_exp) - 1; i++){
		if(global.save_data.next_level_exp == global.level_exp[i]) return global.level_exp[i + 1];
	}
	
}
