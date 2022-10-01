image_xscale = 4; image_yscale = 4;

xs = 0;
ys = -1;
grav = 0;

rot = 0;
xGrow = 0;
yGrow = 0;

fade = 0;
timeCD = 30;

text = "";
textColor1 = c_white;
textColor2 = c_white;
textColorTime=0;

if(text != ""){
	timeCD = 60 * (room_speed / 30);
	
}

yMatchPC = false;
isBlade = false;
hasHit = false;