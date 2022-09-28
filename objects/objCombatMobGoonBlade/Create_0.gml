event_inherited();
var z = pc.zSpot;
shotType = objPinkBladeShot;


ySpread = 70;
shotCDMax = 90;

shotPowerMin = 2 + z*2;
hp = 80 + z;
bleedChance = 10;

xp = 148 + (z*2);
gold = .8 + (z*.2);




hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);
