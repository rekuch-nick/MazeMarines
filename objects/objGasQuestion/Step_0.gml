if(instance_number(objScreen) > 0){ return; }


var d = abs(x-pc.x) + abs(y-pc.y);
if(d < 160){ 
	ww.gmap[pc.zSpot][xSpot, ySpot] = noone;
	instance_destroy(); }
