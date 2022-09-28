function characterCombatStrike(c1, c2){
	
	var d = irandom_range(c1.minPow, c1.maxPow);
	
	c2.hp -= d;
	var s = instance_create_depth(c2.xSpot * 64 + 32, c2.ySpot * 64, -7000, objEffect)
	s.text = "-" + string(d);
	s.textColor1 = c_white; s.textColor2 = c_white;
	if(c2 == pc){ s.textColor1 = c_red; s.textColor2 = c_red; }
	s.ys = -2;
	s.fade = .02;
	s.timeCD = 70;
}