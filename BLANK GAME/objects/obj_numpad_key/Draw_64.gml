draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if !obj_scalar.listening {
	return;
}

if value == 10 {
	draw_set_colour(c_black);
	draw_text_ext(x, y, "-", 0, 20);
}
else if value == 11 {
	draw_set_colour(c_white);
	draw_text_ext(x, y, "HIDE", 0, 20);
}
else {
	draw_set_colour(c_black);
	draw_text_ext(x, y, value, 0, 20);
}