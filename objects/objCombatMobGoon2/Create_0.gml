event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 6 + z*2;
hp = 400 + z*5;


xp = 360 + (z*6);
gold = 1.5 + (z*.6);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);