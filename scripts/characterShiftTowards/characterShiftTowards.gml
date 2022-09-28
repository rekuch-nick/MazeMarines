function characterShiftTowards(dis, c1, c2){
	if(c1.xSpot > c2.xSpot){ c1.x -= dis; c1.face = -1; }
	if(c1.xSpot < c2.xSpot){ c1.x += dis; c1.face = 1; }
	
	if(c1.ySpot > c2.ySpot){ c1.y -= dis; }
	if(c1.ySpot < c2.ySpot){ c1.y += dis; }
}