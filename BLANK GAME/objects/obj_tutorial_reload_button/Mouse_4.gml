for (i = 0; i < 3; i++) {
	for (j = 0; j < 3; j++) {
		mm.matrix[i][j].num = obj_tutorial_button.reset_nums[i][j];
		mm.matrix[i][j].den = obj_tutorial_button.reset_dens[i][j];
	}
}

show_debug_message("Reset");

//show_debug_message(tm.step);