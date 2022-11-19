/// @description Insert description here
// You can write your code in this editor
screen_height = room_height;
screen_width = room_width;


draw_sprite(sMainMenu, 1, screen_width/2, screen_height/2)
draw_set_font(ft_yoster)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_silver)

for( var i = 0; i < buttons_length; i ++ ) {
	_c = c_silver;
	if(pos == i) {
		_c = c_yellow;	
	}
	draw_text_color(screen_width/2, 300 + (50 * i), buttons[menu_level, i], _c, _c, _c, _c, 1)
}