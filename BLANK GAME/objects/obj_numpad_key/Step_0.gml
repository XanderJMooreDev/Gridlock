if obj_scalar.listening {
	image_alpha = 1;
}
else {
	image_alpha = 0;
	return;
}

if position_meeting(mouse_x, mouse_y, id) {
	if image_xscale < 1.1 {
		image_xscale += .1;
		image_yscale += .1;
	}
}
else {
	if image_xscale > 1 {
		image_xscale -= .1;
		image_yscale -= .1;
	}
}

if value == 0 {
	x = room_width / 2 - 96 + 32 + (11 - 1) % 3 * 64;
	y = 380 + 32 + floor((11 - 1) / 3) * 64;
	return;
}

if value == 10 {
	x = room_width / 2 - 96 + 32 + (10 - 1) % 3 * 64;
	y = 380 + 32 + floor((10 - 1) / 3) * 64;
	image_blend = c_gray;
	return;
}

if value == 11 {
	x = room_width / 2 - 96 + 32 + (12 - 1) % 3 * 64;
	y = 380 + 32 + floor((12 - 1) / 3) * 64;
	image_blend = c_maroon;
	return;
}

x = room_width / 2 - 96 + 32 + (value - 1) % 3 * 64;
y = 380 + 32 + floor((value - 1) / 3) * 64;