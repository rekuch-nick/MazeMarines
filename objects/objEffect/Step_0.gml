if(instance_number(objMenu)){ return; }



x += xs;
y += ys;

ys += grav;

if(yMatchPC){ y = pc.y; }

image_angle += rot;

image_xscale += xGrow;
image_yscale += yGrow;


if(isBlade && !hasHit && x < pc.x){
	for(var i=0; i<20; i++){ instance_create_depth(pc.x+32, pc.y+32, -8998, effBlood); }
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
		pc.party[i].hp -= irandom_range(1, 6) + irandom_range(1, 6);
	}}}
	hasHit = true
}




image_alpha -= fade;
timeCD --;

if(image_alpha < 0 || timeCD < 0){
	instance_destroy();
}