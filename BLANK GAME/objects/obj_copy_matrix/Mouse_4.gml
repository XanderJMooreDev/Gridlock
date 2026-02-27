if room == room_creative_mode_editor {
	save_string = string_concat(mm.h, mm.w);
	
	for (i = 0; i < mm.h; i++) {
		for (j = 0; j < mm.w; j++) {
			save_string = string_concat(save_string, "a", mm.matrix[i][j].num);
		}
	}
		
	save_string = string_concat(save_string, "a");

	clipboard_set_text(save_string);
	
	show_debug_message(save_string);
}
else {
	set_matrix_by_code();
}