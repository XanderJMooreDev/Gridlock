visible = tm.ready;

if tm.step == 15 && !tm.ready && mm.matrix[0][0].num == mm.matrix[0][0].den {
	tm.ready = true;
}

if tm.step == 16 && !tm.ready && mm.matrix[1][0].num == 0 {
	tm.ready = true;
}

if tm.step == 17 && !tm.ready && mm.matrix[2][0].num == 0 {
	tm.ready = true;
}

if tm.step == 19 && !tm.ready 
&& mm.matrix[0][0].den == 1 && mm.matrix[0][1].den == 1 && mm.matrix[0][2].den == 1
&& mm.matrix[1][0].den == 1 && mm.matrix[1][1].den == 1 && mm.matrix[1][2].den == 1
&& mm.matrix[2][0].den == 1 && mm.matrix[2][1].den == 1 && mm.matrix[1][2].den == 1 {
	tm.ready = true;
}

if tm.step == 20 && !tm.ready 
&& mm.matrix[2][1].num == 0
&& mm.matrix[0][1].num == 0 {
	tm.ready = true;
}

if tm.step == 21 && !tm.ready 
&& mm.matrix[2][2].num == mm.matrix[2][2].den {
	tm.ready = true;
}

if tm.step == 22 && !tm.ready 
&& mm.matrix[0][1].num == 0 && mm.matrix[0][2].num == 0
&& mm.matrix[1][0].num == 0 && mm.matrix[1][2].num == 0
&& mm.matrix[2][0].num == 0 && mm.matrix[2][1].num == 0 {
	tm.ready = true;
}

if tm.step == 23 && !tm.ready 
&& mm.check_for_rref() {
	tm.ready = true;
}

if tm.step >= 8 {
	mm.allowing_inputs = !tm.ready;
}
else if tm.step < 2 {
	mm.allowing_inputs = false;
}
else {
	mm.allowing_inputs = true;
}