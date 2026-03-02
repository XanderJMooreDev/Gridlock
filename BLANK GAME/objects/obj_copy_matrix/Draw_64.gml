draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

draw_set_font(consolas);

if room == room_creative_scale {
	draw_text_ext_transformed(4, 400, creative_text, 16, 290, 1.2, 1.2, 0);
}