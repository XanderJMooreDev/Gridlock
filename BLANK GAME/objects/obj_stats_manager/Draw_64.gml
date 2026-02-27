draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_set_font(consolas);

if room == room_game_daily {
	draw_set_color(c_black);
	date_str = string_concat(date_get_month(date_current_datetime()), "-",
	date_get_day(date_current_datetime()),  "-",
	date_get_year(date_current_datetime()));

	draw_text_ext(room_width - 4, room_height - 305, string_concat("Date: ", date_str), 0, 400);
	draw_text_ext(room_width - 4, room_height - 290, string_concat("Row Additions: ", additions), 0, 400);
}
else if room == room_creative_game {
	draw_set_color(c_white);
	//draw_text_ext(room_width - 4, room_height - 279, string_concat("Code: ", room_code), 16, 400);
	draw_text_ext(room_width - 4, room_height - 264, string_concat("Row Additions: ", additions), 0, 400);
}
else {
	draw_set_color(c_white);
	
	draw_text_ext(room_width - 4, room_height - 305, string_concat("Puzzles completed: ", puzzles), 0, 400);
	draw_text_ext(room_width - 4, room_height - 290, string_concat("Row Additions: ", additions), 0, 400);
}