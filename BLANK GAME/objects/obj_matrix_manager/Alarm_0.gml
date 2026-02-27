if fireworks < 6 {
	effect_create_layer("Instances", ef_firework, irandom_range(100, room_width - 100), irandom_range(100, room_height - 100), 5, firework_colors[fireworks]);
	fireworks++;
	alarm[0] = 50;
}