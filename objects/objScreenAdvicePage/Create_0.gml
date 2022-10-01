image_xscale = 4; image_yscale = 4;
msg = "";

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorRid){
	if(playerNeedsKeyItem("Silver Circle")){
		answer = "";
		if(ww.riddle == 1){ msg = "I have many keys, but can't open a single lock."; answer = "Piano";}
		if(ww.riddle == 2){ msg = "I am more useful when broken."; answer = "Egg";}
		if(ww.riddle == 3){ msg = "I am full of holes but I can still hold water."; answer = "Sponge";}
		if(ww.riddle == 4){ msg = "I'm tall when I'm young and I'm short when I'm old. Thin, I am quick. Fat, I am slow."; answer = "Candle";}
		if(ww.riddle == 5){ msg = "I'm not clothes but I cover your body; The more I'm used, the thinner I grow."; answer = "Bar of Soap";}
		if(ww.riddle == 6){ msg = "According to me, today comes before yesterday."; answer = "Dictionary";}
		if(ww.riddle == 7){ msg = "I have one head, one foot and four legs."; answer = "Bed";}
		if(ww.riddle == 8){ msg = "I have 13 hearts, but no skin."; answer = "Deck of Cards";}
		if(ww.riddle == 9){ msg = "I have lakes with no water, mountains with no stone and cities with no buildings."; answer = "Map";}
		
		solved = false;
		
		
		if(playerHasItem(answer)){ solved = true; }
		
		if(!solved){
			msg += "\n\nWhat am I?";
		} else {
			msg += "\n\nHahaha, you're right, it's "+answer+"!\n\nHere, you'll need this to get past the 10th floor.\n\nReceived Silver Circle!"
			playerLoseItem(answer);
			playerGainItem("Silver Circle")
		}
		
		
		
	} else {
		msg = "Always nice to talk to another riddle lover.";
	}
}

