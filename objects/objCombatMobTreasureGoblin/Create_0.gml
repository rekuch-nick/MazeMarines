event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 2 + z;
hp = 400 + z*15;


xp = (360 * (1 + (z-1)*.10));
gold = 34 + (z*5);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);