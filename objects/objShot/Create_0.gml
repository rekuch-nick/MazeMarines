image_xscale = 4; image_yscale = 4;

firstFrame = true;

xs = 0; ys = 0; grav = 0;
gravMax = 20;

aly = -1;
shotPower = 10;
moveSpeed = 14;

tx = x; ty = y;

bleedShots = false;
poisonShots = false;
muteShots = false;

aoe = 0;
aoeEff = effBoomCircle;
onlyFor = noone;
xSpeedup = false;
gro = 0;


isFire = false;
isIce = false;

multiTarget = false;
alreadyHit = ds_list_create();

chain = 0;
lob = false;
lobDis = 0;