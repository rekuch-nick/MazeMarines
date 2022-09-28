event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 2 + z;
hp = 80 + z;


xp = 128 + (z*2);
gold = .5 + (z*.2);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);