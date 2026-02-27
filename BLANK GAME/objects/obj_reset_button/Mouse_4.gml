if room == room_game {
	obj_matrix_manager.generate_matrix(irandom_range(2,5), irandom_range(2,5));
	obj_matrix_manager.display_matrix();

	obj_matrix_manager.allowing_inputs = true;
}
else if room == room_game_daily {
	room = room_main_menu;
}

instance_destroy();