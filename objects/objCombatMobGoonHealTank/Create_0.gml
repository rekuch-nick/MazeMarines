event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 2 + z;

hp = 400 + z*10;
regen = 60 * z;



xp = 300 + (z*2);
gold = .9 + (z*.4);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);


event_inherited();