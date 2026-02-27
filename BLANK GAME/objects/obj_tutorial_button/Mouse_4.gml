if !visible {
	return;
}

if tm.step == 25 {
	room = room_main_menu;
}

tm.step++;

if tm.step == 2 {
	mm.generate_matrix(3, 3);
	mm.display_matrix();
}
if tm.step == 8 {
	with(obj_matrix_element) {
		instance_destroy();
	}
}
if tm.step == 14 {
	mm.matrix[0][0].num = 3;
	mm.matrix[0][1].num = 1;
	mm.matrix[0][2].num = 2;
	mm.matrix[1][0].num = 4;
	mm.matrix[1][1].num = 2;
	mm.matrix[1][2].num = 5;
	mm.matrix[2][0].num = 6;
	mm.matrix[2][1].num = 7;
	mm.matrix[2][2].num = 8;
	
	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			mm.matrix[i][j].den = 1;
		}
	}
	
	mm.display_matrix();
}
if tm.step == 15 || tm.step == 16 || tm.step == 17 || 
tm.step == 19 || tm.step == 20 || tm.step == 21
|| tm.step == 22 || tm.step == 23 {
	tm.ready = false;
}

if tm.step >= 2 {
	show_debug_message("Reset updated");
	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			reset_nums[i][j] = mm.matrix[i][j].num;
			reset_dens[i][j] = mm.matrix[i][j].den;
		}
	}
}