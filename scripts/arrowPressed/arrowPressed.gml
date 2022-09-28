function arrowPressed(){
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){ return 1; }
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){ return 2; }
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){ return 3; }
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){ return 4; }
	
	return noone;
}