//Where to spawn
x = room_width / 2;
y = room_height / 2;

//Got hit and death variables for flash anim when hit and/or death
death = false;
got_hit = false;
flash = 0;

//Starting movement speed
vsp = 0;
hsp = 0;

invincible_timer = 30;



enum weapons {
	none,
	assault,
	shotgun,
	gauss,
	plasma,
	launcher,
}

weapon_chosen = weapons.none;
