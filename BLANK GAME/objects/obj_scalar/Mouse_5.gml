if !mm.allowing_inputs {
	return;
}

if func == "*" {
	func = "/";
	
	image_index = 1;
}
else {
	func = "*";
	image_index = 0;
}