if mm.h > i && mm.w > j {
	image_alpha = 1;
}
else {
	image_alpha = .5;
}

x = j * 64 + 32 + room_width / 2 - (64 * 5) / 2;
y = i * 64 + 36;