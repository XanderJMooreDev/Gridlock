if mm.draggingY = i && mm.time_since_click > 6 {
	x = (j - mm.draggingX) * 64 + mouse_x;
	y = mouse_y;
	
	if mm.draggingX = j && image_xscale < 1.2 {
		image_xscale += .1;
		image_yscale += .1;
	}
		
}
else {
	x = j * 64 + 32 + room_width / 2 - (64 * mm.w) / 2;
	y = i * 64 + 36;
	
	if image_xscale > 1/scale {
		image_xscale -= .1/scale;
		image_yscale -= .1/scale;
	}
}

if floor(mm.swellingX) == j && ds_list_find_index(mm.swellingY, i) != -1 {
	image_xscale += .1/scale;
	image_yscale += .1/scale;
}

if mm.matrix[i][j].num > 0 {
	image_blend = c_lime;
}
else if mm.matrix[i][j].num < 0 {
	image_blend = c_red;
}
else {
	image_blend = c_blue;
}

if image_xscale > 1.3/scale {
	image_xscale = 1.3/scale;
	image_yscale = 1.3/scale;
}