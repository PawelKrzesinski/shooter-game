/// @description Insert description here
// You can write your code in this editor


draw_sprite_stretched(s_stat_menu, 0, 100, 100, window_width, window_height);
draw_set_font(ft_yoster)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_black)
//Draw stat names and values into the stat menu window
for (var i = 0; i <= stats_count - 1; i++) {
	draw_text
	(
		150,
		150 + margin * i,
		player_stats[i]
	);
	draw_text
	(
		250,
		150 + margin * i,
		stat_values[i],
	)

}

draw_text(125, 350, "Remaining points: " + save_data.stat_points);
draw_text(125, 375, "Level: " + save_data.level);
draw_text(125, 400, "Current exp: " + save_data.current_exp);
draw_text(125, 425, "Next Level: " + save_data.next_level_exp);
	
