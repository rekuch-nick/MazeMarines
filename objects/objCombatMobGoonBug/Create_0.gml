event_inherited();
var z = pc.zSpot;
poisonChance = 50;

shotCDMax = 90;

shotPowerMin = 1 + floor(z/3);
hp = 60 + z;

xp = 20;
gold = 0;




hpMax = hp;
shotPowerMax = shotPowerMin;
shotCD = irandom_range(30, shotCDMax);
