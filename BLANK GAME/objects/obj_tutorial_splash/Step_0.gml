if obj_tutorial_manager.step >= 8 {
	visible = true;
	if obj_tutorial_manager.step == 12 {
		instance_destroy();
	}
	
	image_index = obj_tutorial_manager.step - 8;
}