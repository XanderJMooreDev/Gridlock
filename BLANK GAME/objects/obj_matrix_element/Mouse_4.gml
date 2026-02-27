if mm.draggingX == -1 && mm.draggingY == -1 && mm.allowing_inputs {
	show_debug_message(mm.time_since_click);
	
	if mm.time_since_click <= 20 {
		mm.clickType = "R";
	}
	else {
		mm.clickType = "L";
	}
	
	mm.time_since_click = 0;
	
	mm.draggingX = j;
	mm.draggingY = i;
}
else if room == room_creative_mode_editor {
	mm.editingX = j;
	mm.editingY = i;
	
	mm.matrix[i][j].num = 0;
	mm.matrix[i][j].den = 1;
	
	obj_scalar.listening = true;
	obj_scalar.negative_next = false;
}