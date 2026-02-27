func = "*";
scalar = -1;
listening = false;
negative_next = false;

mm = obj_matrix_manager;

for (i = 0; i < 12; i++) {
	num = instance_create_layer(x, y, "Instances", obj_numpad_key);
	num.value = i;
}