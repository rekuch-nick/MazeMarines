if(instance_number(objScreen) > 0){ return; }


var d = abs(x-pc.x) + abs(y-pc.y);
if(d < 80){ instance_destroy(); }
