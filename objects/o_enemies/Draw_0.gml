/// @description Insert description here
// You can write your code in this editor

draw_self()
function drawHealthBar(){
	draw_sprite(s_health_bar_bg, 0, x - global.dimensions.char_width, y + global.dimensions.char_heigth)
	draw_sprite(s_health_bar_border, 0, x - global.dimensions.char_width, y + global.dimensions.char_heigth)
	draw_sprite_stretched(s_health_bar, 0,  x - global.dimensions.char_width + 6, y + global.dimensions.char_heigth + 5, (hp/max_hp) * global.dimensions.healthbar_width, global.dimensions.healthbar_height)
};

drawHealthBar();

