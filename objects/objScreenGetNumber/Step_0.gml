


if(numberPressed() != noone){
	pc.pressed = numberPressed()-1;
	pc.directionAction = action;
	pc.spellInputCD = 6;
	instance_destroy();
}

if(escapePressed()){
	instance_destroy();
}