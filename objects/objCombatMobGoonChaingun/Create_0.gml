event_inherited();
var z = pc.zSpot;
shotType = objPinkShot;


ySpread = 70;
shotCDMax = 10;

aimType = "most hp"
shotPowerMin = 1 + ceil(z/2);
hp = 70 + z;


xp = 250 + (z*5);
gold = 1 + (z*.4);


hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);