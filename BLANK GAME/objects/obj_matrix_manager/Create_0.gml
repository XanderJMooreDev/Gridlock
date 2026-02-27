time_since_click = 0;
clickType = "N";

editingX = -1;
editingY = -1;

w = 0;
h = 0;

firework_colors = [ c_red, c_orange, c_yellow, c_green, c_blue, c_purple ];

swellingX = -1;
swellingY = ds_list_create();

allowing_inputs = true;

draggingX = -1;
draggingY = -1;

add_row_to_row = function(rowA, rowB) {
	for (i = 0; i < w; i++) {
		matrix[rowA][i].add(matrix[rowB][i]);
	}
	
	obj_stats_manager.additions++;
	
	check_win();
}

switch_rows = function(rowA, rowB) {
		temp = matrix[rowA];
		matrix[rowA] = matrix[rowB];
		matrix[rowB] = temp;
	
	check_win();
}

multiply_row_by_scalar = function(row, scalar) {
	if scalar != 0 {
		for (i = 0; i < w; i++) {
			matrix[row][i].multiply(scalar);
		}
	}
	
	check_win();
}

divide_row_by_scalar = function(row, scalar) {
	if scalar != 0 {
		for (i = 0; i < w; i++) {
			matrix[row][i].divide(scalar);
		}
	}
	
	check_win();
}

generate_matrix = function(height, width) {
	h = height;
	w = width;
	
	matrix = array_create(h);

	for (i = 0; i < h; i++) {
		row = array_create(w);
		matrix[i] = row;
		
		for (j = 0; j < w; j++) {
			matrix[i][j] = new Fraction(irandom_range(-9, 9), 1);
		}
	}
}

display_matrix = function() {
	with(obj_matrix_element) {
		instance_destroy();
	}
	
	for (i = 0; i < h; i++) {
		for (j = 0; j < w; j++) {
			elem = instance_create_layer(0, 0, "Instances", obj_matrix_element);
			
			elem.i = i;
			elem.j = j;
		}
	}
}

check_win = function() {
	if check_for_rref() {
		kill_inputs();
	
		alarm[0] = 1;
	
		if room == room_game {
			instance_create_layer(room_width / 2, room_height / 3 * 2, "Instances", obj_reset_button);
			obj_stats_manager.puzzles++;
		}
	}
}

check_for_rref = function() {
	if room == room_main_menu {
		return;
	}
	
	lastColWithOne = -1;
	for (i = 0; i < h; i++) {
		for (j = 0; j < w; j++) {
			
			if matrix[i][j].num == matrix[i][j].den {
				if j > lastColWithOne {
					lastColWithOne = j;
					break;
				}
				else {
					return false;
				}
			}
			else if matrix[i][j].num != 0 {
				return false;
			}
		}
	}
	
	return true;
}

kill_inputs = function() {
	allowing_inputs = false;
	draggingX = -1;
	draggingY = -1;
}

autowin = function() {	
	for (i = 0; i < w; i++) {
		for (j = 0; j < h; j++) {
			if i == j {
				matrix[i][j].num = 1;
				matrix[i][j].den = 1;
			}
			else {
				matrix[i][j].num = 0;
				matrix[i][j].den = 1;
			}
		}
	}
}