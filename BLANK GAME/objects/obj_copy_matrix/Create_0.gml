save_string = "";
mm = obj_matrix_manager;
negative = false;

creative_text = "To edit a matrix, select dimensions (at least 2x2)";

set_matrix_by_code = function() {
	try {
		save_string = clipboard_get_text();
	
		mm.h = int64(string_copy(save_string, 1, 1));
		save_string = string_copy(save_string, 2, string_length(save_string));
	
		mm.w = int64(string_copy(save_string, 1, 1));
		save_string = string_copy(save_string, 2, string_length(save_string));
		save_string = string_copy(save_string, 2, string_length(save_string));
	
		mm.generate_matrix(mm.h, mm.w);
		
		for (i = 0; i < mm.h; i++) {
			for (j = 0; j < mm.w; j++) {
				mm.matrix[i][j].num = 0;
				mm.matrix[i][j].den = 1;
			}
		}
	
		for (i = 0; i < mm.h; i++) {
			for (j = 0; j < mm.w; j++) {
				while (string_copy(save_string, 1, 1) != "a") {
					if string_copy(save_string, 1, 1) == "-" {
						negative = true;
					}					
					else if mm.matrix[i][j].num != 0 {
						mm.matrix[i][j].num *= 10;
						mm.matrix[i][j].num += int64(string_copy(save_string, 1, 1));
					}
					else {
						mm.matrix[i][j].num = int64(string_copy(save_string, 1, 1));
					}
					
					save_string = string_copy(save_string, 2, string_length(save_string));
				}
				
				if negative {
					mm.matrix[i][j].num *= -1;
					negative = false;
				}
			
				save_string = string_copy(save_string, 2, string_length(save_string));
			}
			
			room = room_creative_game;
		}
	}
	catch (ex) {
		creative_text = "Invalid code";
	}
}