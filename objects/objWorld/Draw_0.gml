frameCD --; if(frameCD < 1){ frameCD = 60; }



for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
	var i = fmap[pc.zSpot][a, b];
	if(i != noone){
		draw_sprite_stretched(i, 0, a*64, b*64, 64, 64);
	}
}}

for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
	var i = pmap[pc.zSpot][a, b];
	if(i != noone){
		draw_sprite_stretched(i, 0, a*64+8, b*64+8, 48, 48);
	}
}}


for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
	var i = bmap[pc.zSpot][a, b];
	if(i != noone){
		draw_sprite_stretched(i, 0, a*64, b*64, 64, 64);
	}
}}


/*for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
	var i = gmap[pc.zSpot][a, b];
	if(i != noone){
		draw_sprite_stretched(i, floor(frameCD / 4), a*64, b*64, 64, 64);
	}
}}*/