//if check_for_rref() && allowing_inputs && (room == room_game || room == room_game_daily || room == room_tutorial) {
//	kill_inputs();
	
//	alarm[0] = 1;
	
//	if room == room_game {
//		instance_create_layer(room_width / 2, room_height / 3 * 2, "Instances", obj_reset_button);
//		obj_stats_manager.additions++;
//	}
//}

if swellingX >= w + 1 {
	swellingX = -1;
	ds_list_clear(swellingY);
}
else if swellingX > -1 {
	swellingX += .2;
}

if keyboard_check(ord("X")) && keyboard_check(ord("J")) && keyboard_check(ord("M")) {
	autowin();
}

time_since_click++;