function notifyMessage(txt, who){
	var a = pc.xSpot*64 + 32;
	var b = pc.ySpot*64;
	
	if(who == 1 || who == 2 || who == 3 || who == 4 || who == 0){
		if(instance_number(objScreenCombat) >= 1){
			if(pc.party[who].hp > 0){
				
				var o = ww.screenCombat.pcc[who];
				if(o != noone){
					a = o.x + 32;
					b = o.y;
				}
			}
		}
	}
	
	var w = string_width(txt) / 2;
	while(a - w < 0){ a ++; }
	while(a + w > 17*64){ a --; }
	
	
	var s = instance_create_depth(a, b, ww.Leff, objEffect);
	s.text = txt;
	
	return s;
}