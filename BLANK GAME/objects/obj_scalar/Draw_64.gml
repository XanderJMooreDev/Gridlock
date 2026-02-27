if !mm.allowing_inputs {
	return;
}

draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
if negative_next {
	draw_text_ext(x + 40, y - 12, "-0", 0, 20);
}
else {
	draw_text_ext(x + 40, y - 12, scalar, 0, 20);
}