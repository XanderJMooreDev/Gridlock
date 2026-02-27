if position_meeting(mouse_x, mouse_y, id) {
	if image_xscale < 1.2 {
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