event_inherited();
var z = pc.zSpot;
shotType = objGreenShot;


ySpread = 70;
shotCDMax = 90;
poisonChance = 15;

shotPowerMin = 2 + z*2;
hp = 80 + z;

xp = (148 * (1 + (z-1)*.10));
gold = .8 + (z*.2);




hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);


var z = pc.zSpot;
for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
	var dis = abs(a - pc.xSpot) + abs(b - pc.ySpot);
	if(ww.gmap[z][a, b] == noone && dis > 1 ){
		if(irandom_range(0, 19) == 1){
			instance_create_depth(a*64, b*64, -6000, objGasDark);
		}
	}
}}