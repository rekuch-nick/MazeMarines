function anyPressed(){
	return (numberPressed() != noone ) 
				|| escapePressed() 
				|| (arrowPressed() != noone) 
				|| (numberPressed() != noone) 
				|| (letterPressed() != noone) 
				|| keyboard_check_pressed(vk_enter)
				|| keyboard_check_pressed(vk_backspace);
}