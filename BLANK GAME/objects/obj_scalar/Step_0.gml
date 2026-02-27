if obj_matrix_manager.draggingY < -1 && obj_matrix_manager.time_since_click > 6 {
	x = mouse_x;
	y = mouse_y;
}
else {
	x = 64;
	y = 355;
}

if !mm.allowing_inputs && room != room_creative_mode_editor {
	listening = false;
	visible = false;
}
else if room == room_creative_mode_editor {
	visible = false;
}
else {
	visible = true;
}