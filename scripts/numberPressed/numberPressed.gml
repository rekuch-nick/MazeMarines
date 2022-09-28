function numberPressed(){
	if(keyboard_check_pressed(ord("1"))){ return 1; }
	if(keyboard_check_pressed(ord("2"))){ return 2; }
	if(keyboard_check_pressed(ord("3"))){ return 3; }
	if(keyboard_check_pressed(ord("4"))){ return 4; }
	if(keyboard_check_pressed(ord("5"))){ return 5; }
	return noone;
}