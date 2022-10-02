event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 2 + z;

hp = 300 + z*10;
regen = 300 + (z*10);



xp = (168 * (1 + (z-1)*.10));
gold = .9 + (z*.4);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);


