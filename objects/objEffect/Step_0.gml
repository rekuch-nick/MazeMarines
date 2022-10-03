if(instance_number(objMenu)){ return; }



x += xs;
y += ys;

ys += grav;

if(yMatchPC){ y = pc.y; }

image_angle += rot;

image_xscale += xGrow;
image_yscale += yGrow;


if(isBlade && !hasHit && x < pc.x){
	for(var i=0; i<20; i++){ instance_create_depth(pc.x+32, pc.y+32, ww.Leff, effBlood); }
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
		pc.party[i].hp -= irandom_range(1, 6) + irandom_range(1, 6);
	}}}
	hasHit = true
}

if(isRockTrap){
	if(pc.spellInputCD < 4){ pc.spellInputCD = 4; }
	if(y > pc.y + 32){
		timeCD = -1;
		instance_create_depth(x, y, depth, effRockAfter);
		for(var i=0; i<5; i++){ if(pc.party[i].hp > 0){
			pc.party[i].hp -= irandom_range(1, 6) + irandom_range(1, 6);
		}}
	}
}


image_alpha -= fade;
timeCD --;

if(image_alpha < 0 || timeCD < 0){
	instance_destroy();
}