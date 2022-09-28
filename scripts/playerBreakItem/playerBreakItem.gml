function playerBreakItem(n){
	
	var s = instance_create_depth(pc.x + 32, pc.y + 40, -8900, objEffect);
	s.text = "The " + string(n) + " " + getItem(n).breakMessage;
	playerLoseItem(n);
}