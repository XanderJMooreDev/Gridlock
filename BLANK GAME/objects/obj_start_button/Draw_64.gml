draw_set_halign(fa_center);
draw_set_valign(fa_middle);

x = room_width / 2;

if y > 400 {
	
	draw_sprite_ext(spr_creative_logo, 0, room_width / 2, y - 68, .5, .5, 0, c_white, 1);
}
else if y > 250 {
	draw_sprite_ext(spr_daily_logo, 0, room_width / 2, y - 68, .5, .5, 0, c_white, 1);
}
else {
	draw_sprite_ext(spr_game_logo, 0, room_width / 2, 50, .65, .65, 0, c_white, 1);
	draw_sprite_ext(spr_infinite_logo, 0, room_width / 2, y - 68, .5, .5, 0, c_white, 1);
}
