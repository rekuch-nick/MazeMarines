function worldGenMaze(z){
	var nodes = 0;
	for(var a=0; a<17; a+=1){ for(var b=0; b<13; b+=1){ bmap[z][a, b] = imgBlock01; }}
	
	
	for(var a=0; a<17; a+=2){ for(var b=0; b<13; b+=2){
		bmap[z][a, b] = "node";
		nodes ++;
	}}
	
	var cx = choose(0, 2, 4, 6, 8, 10, 12, 14, 16);
	var cy = choose(0, 2, 4, 6, 8, 10, 12);
	
	var tx = cx; var ty = cy;
	
	bmap[z][cx, cy] = noone; nodes --;
	var last = 0;
	xLast[last] = cx;
	yLast[last] = cy;
	last ++;
	
	d[1] = false; d[2] = false; d[3] = false; d[4] = false;
	while(nodes > 0){
		dir = choose(1, 2, 3, 4);
		tx = cx; ty = cy;
		if(dir == 1){ ty -=2; }
		if(dir == 2){ tx +=2; }
		if(dir == 3){ ty +=2; }
		if(dir == 4){ tx -=2; }
		
		d[dir] = true;
		if(inBounds(tx, ty)){
			if(bmap[z][tx, ty] == "node"){
				nodes --;
				xLast[last] = tx; yLast[last] = ty; last ++;
				if(cx < tx){ bmap[z][cx+1, cy] = noone; }
				if(cx > tx){ bmap[z][cx-1, cy] = noone; }
				if(cy < ty){ bmap[z][cx, cy+1] = noone; }
				if(cy > ty){ bmap[z][cx, cy-1] = noone; }
				cx = tx; cy = ty;
				bmap[z][tx, ty] = noone;
				d[1] = false; d[2] = false; d[3] = false; d[4] = false;
			}
		}
		
		
		
		if(d[1] && d[2] && d[3] && d[4]){
			last --;
			cx = xLast[last]; cy = yLast[last];
			d[1] = false; d[2] = false; d[3] = false; d[4] = false;
		}
		
		
		
		
	}
}