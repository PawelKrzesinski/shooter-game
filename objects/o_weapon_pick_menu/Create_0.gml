/// @description Insert description here
// You can write your code in this editor

weapons = [
	o_weapon_automatic,
	o_weapon_shotgun,
	o_weapon_gauss,
	o_weapon_plasma,
	o_weapon_launcher,
]
weapons_length = array_length(weapons)
locations = [
	[-300, 0],
	[0, 0],
	[300, 0],
	[-150, 150],
	[150, 150],
]
for(var i = 0; i < weapons_length; i++) {
	instance_create_depth(x + locations[i][0] , y + locations[i][1], -2001, weapons[i])
}

instance_create_depth(x + 400, y + 200, -2001, o_tick_btn);
