function effLineOf(eff, disBetween, ix, iy, tx, ty){
	
	var aa = ix; var bb = iy;
	var angle = arctan2(ty - iy, tx - ix);
	var xs = cos(angle) * disBetween;
	var ys = sin(angle) * disBetween;
			
	while(aa > tx){
		instance_create_depth(aa, bb, ww.Leff, eff);
		aa += xs; bb += ys;
	}

}