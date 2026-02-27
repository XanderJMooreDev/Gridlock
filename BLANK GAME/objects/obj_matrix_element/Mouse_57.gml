if mm.draggingY < 0 {
	return;
}

if position_meeting(mouse_x, mouse_y, id) && mm.draggingY != i {
	mm.switch_rows(i, mm.draggingY);
	mm.swellingX = 0;
	ds_list_add(mm.swellingY, i, mm.draggingY);
}