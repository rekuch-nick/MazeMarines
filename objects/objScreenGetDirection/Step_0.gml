


if(arrowPressed() != noone){
	pc.pressed = arrowPressed();
	pc.directionAction = action;
	pc.spellInputCD = 6;
	instance_destroy();
}

if(escapePressed()){
	instance_destroy();
}