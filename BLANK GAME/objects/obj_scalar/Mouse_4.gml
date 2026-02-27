if !mm.allowing_inputs {
	return;
}

if obj_matrix_manager.time_since_click <= 20 {
	if func == "*" {
		func = "/";
	
		image_index = 1;
	}
	else {
		func = "*";
		image_index = 0;
	}
}

obj_matrix_manager.time_since_click = 0;

if mouse_x > x {
	listening = true;
	scalar = 0;
	negative_next = false;
	
	return;
}

if func == "*" {
	obj_matrix_manager.draggingY = -2;
}
else {
	obj_matrix_manager.draggingY = -3;
}