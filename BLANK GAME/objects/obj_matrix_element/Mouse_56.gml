if mm.clickType == "R" {
	if position_meeting(mouse_x, mouse_y, id) && mm.draggingY != i {
		mm.switch_rows(i, mm.draggingY);
		mm.clickType = "N";
		mm.swellingX = 0;
		ds_list_add(mm.swellingY, i, mm.draggingY);
		
		return;
	}
}

if position_meeting(mouse_x, mouse_y, id) && mm.draggingY == -2 {
	mm.multiply_row_by_scalar(i, obj_scalar.scalar);
	mm.swellingX = 0;
	ds_list_add(mm.swellingY, i);
	return;
}

if position_meeting(mouse_x, mouse_y, id) && mm.draggingY == -3 {
	mm.divide_row_by_scalar(i, obj_scalar.scalar);
	mm.swellingX = 0;
	ds_list_add(mm.swellingY, i);
	return;
}

if mm.draggingY < 0 {
	return;
}

if position_meeting(mouse_x, mouse_y, id) && mm.draggingY != i {
	mm.add_row_to_row(i, mm.draggingY);
	mm.swellingX = 0;
	ds_list_add(mm.swellingY, i);
}