draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(consolas);

draw_set_colour(c_black);

draw_text_ext_transformed(x, y - 14, string_concat(i + 1, "x", j + 1), 0, 50, 1.2, 1.2, 0);