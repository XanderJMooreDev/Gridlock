if room == room_game || room == room_game_daily || room == room_tutorial || room == room_creative_game {
	effect_clear();

	alarm[0] = 0;
	
	fireworks = 0;
	allowing_inputs = true;
	
	if room == room_game_daily {
		seed = date_create_datetime(
		    date_get_year(date_current_datetime()),
		    date_get_month(date_current_datetime()),
		    date_get_day(date_current_datetime()),
		    0, 0, 0
		);
		random_set_seed(seed);
		generate_matrix(4, 4);
	}
	else if room != room_creative_game {
		
		randomise();
		generate_matrix(3, 3);
	}
	
	if room == room_tutorial {
		return;
	}
	
	if room == room_creative_game {
		//obj_copy_matrix.set_matrix_by_code();
	}
	
	display_matrix();
	
	check_win();
}

if room == room_creative_scale {
	h = 5;
	w = 5;
	
	for (i = 0; i < 5; i++) {
		for (j = 0; j < 5; j++) {
			elem = instance_create_layer(0, 0, "Instances", obj_creative_scale);
			
			elem.i = i;
			elem.j = j;
		}
	}
}

if room == room_creative_mode_editor {
	editingX = -1;
	editingY = -1;
	
	generate_matrix(h, w);
	
	for (i = 0; i < h; i++) {
		for (j = 0; j < w; j++) {
			if (i == j) {
				matrix[i][j].num = 1;
			}
			else {
				matrix[i][j].num = 0;
			}
			
			matrix[i][j].den = 1;
		}
	}
	
	display_matrix();
}