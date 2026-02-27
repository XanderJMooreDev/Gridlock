draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(consolas);

if mm.matrix[i][j].num < 0 {
	draw_set_colour(c_aqua);
}
else if mm.matrix[i][j].num > 0 {
	draw_set_colour(c_maroon);
}
else {
	draw_set_colour(c_yellow);
}

if mm.matrix[i][j].den == 1 {
	if obj_scalar.negative_next && room == room_creative_mode_editor 
	&& mm.editingX == j && mm.editingY == i {
		draw_text_ext_transformed(x, y - 14, "-0", 0, 20, 1.2, 1.2, 0);
	}
	else {
		draw_text_ext_transformed(x, y - 14, mm.matrix[i][j].num, 0, 20, 1.2, 1.2, 0);
	}
}
else {
	draw_text_ext_transformed(x, y - 24, mm.matrix[i][j].num, 0, 20, 1.2, 1.2, 0);
	draw_text_ext_transformed(x, y - 20, "___", 0, 20, 1.2, 1.2, 0);
	draw_text_ext_transformed(x, y, mm.matrix[i][j].den, 0, 20, 1.2, 1.2, 0);
}