if obj_scalar.listening {
	if room == room_creative_mode_editor {
		mm = obj_matrix_manager;
		if mm.editingX >= 0 
		&& mm.editingY >= 0 {
			if value == 10 {
				if mm.matrix[mm.editingY][mm.editingX].num == 0 {
					obj_scalar.negative_next = !obj_scalar.negative_next;
				}
				else {
					mm.matrix[mm.editingY][mm.editingX].num *= -1;
				}
			}
			else if value == 11 {
				obj_scalar.listening = false;
			}
			else {
				mm.matrix[mm.editingY][mm.editingX].num *= 10;
				if mm.matrix[mm.editingY][mm.editingX].num >= 0 {
					mm.matrix[mm.editingY][mm.editingX].num += value;
				}
				else {
					mm.matrix[mm.editingY][mm.editingX].num -= value;
				}
				
				if obj_scalar.negative_next {
					mm.matrix[mm.editingY][mm.editingX].num *= -1;
					obj_scalar.negative_next = false;
				}
			}
		}
		
		return;
	}
	
	if value == 10 {
		if obj_scalar.scalar == 0 {
			obj_scalar.negative_next = !obj_scalar.negative_next;
		}
		else {
			obj_scalar.scalar *= -1;
		}
		
		return;
	}
	
	if value == 11 {
		obj_scalar.listening = false;
		return;
	}
	
	obj_scalar.scalar *= 10;
	
	if obj_scalar.scalar >= 0 {
		obj_scalar.scalar += value;
	}
	else {
		obj_scalar.scalar -= value;
	}
	
	if obj_scalar.negative_next {
		obj_scalar.negative_next = false;
		obj_scalar.scalar *= -1;
	}
}