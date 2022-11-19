/// @description Insert description here
// You can write your code in this editor

//Draw player
draw_sprite_ext(sPlayer, 0, x, y, flippedX, 1, 0, image_blend, image_alpha);
//Add flashing animation when hit
if(flash > 0){
	flash -= 0.1;
	shader_set(shd_flash)
	shaderAlpha = shader_get_uniform(shd_flash, "alpha");
	shader_set_uniform_f(shaderAlpha, flash);
	draw_self();
	shader_reset();
}

//Draw healthbar based on max and actual hp of the player
draw_sprite
(
	s_health_bar_bg,
	0, 
	x - global.dimensions.char_width, 
	y + global.dimensions.char_heigth
)
draw_sprite
(
	s_health_bar_border, 
	0, 
	x - global.dimensions.char_width, 
	y + global.dimensions.char_heigth
)
draw_sprite_stretched
(
	s_health_bar,
	0,
	x - global.dimensions.char_width + 6,
	y + global.dimensions.char_heigth + 5,
	(global.save_data.hp/global.save_data.max_hp) * global.dimensions.healthbar_width, global.dimensions.healthbar_height
)
