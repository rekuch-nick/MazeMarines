

image_angle += irandom_range(-2, 2);



image_xscale -= .02;
image_yscale -= .02;
image_alpha = random_range(.5, .8);

with(objCombatUnit){ if(aly == -1){
	if(irandom_range(0, 9) == 1){ hp --; }
	
	if(x > other.x){ x--; }
	if(x < other.x){ x++; }
	if(y > other.y){ y--; }
	if(y < other.y){ y++; }
	moved = true;
}}

with(objShot){ if(object_index != objGravityBall && aly == -1){
	x += -(xs + 1); 
}}







timeCD --;
if(timeCD < 1){
	instance_destroy();
}

