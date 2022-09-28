function worldGen(){
	random_set_seed(seed);
	LAST = 20;
	
	bossOneDown = false;
	bossFloor01 = 4;
	triangleFloor = 4;
	
	var stairQuad = choose(4, 1, 3, 2);
	for(var z=0; z<=LAST; z++){
		ww.signText[z] = "";
		ww.antiMagic[z] = [""];
	
		for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
			ww.fmap[z][a, b] = imgFloor01;
		}}


		//for(var a=0; a<17; a++){ for(var b=0; b<11; b++){ bmap[z][a, b] = choose(imgBlock01, noone, noone, noone); }}
		
		var normMaze = false;
		if(z == 0){ worldGenTown(z);
		} else if(z == 5){
			ww.antiMagic[z] = ["Warp", "Bind Wounds"];
			for(var b=0; b<13; b++){ ww.bmap[z][8, b] = imgBlockAntiMagic; }
			
			ww.bmap[z][8, 6] = imgBlockGate;
			ww.fmap[z][7, 6] = imgFloorGate01;
			ww.fmap[z][9, 6] = imgFloorGate01;
			
			worldGenPatchGas(z, objGasDark, 15);
			
		} else if(z >= 1){
			normMaze = true;
			
			if(z == 1){ ww.signText[z] = "Feeling good about my first mission! I'll leave\nanother note on this floor on my way back out."; }
			if(z == 2){ ww.signText[z] = "Most monsters are so mindless they will target\nyour party members randomly. The ones with chain-guns\nare even so dumb they fire at the guy with the most HP.\n\nWatch out for the one that looks either kinda like\nits melting or maybe wearing a dress. I guess it smells\nblood or something, somehow it knows who has the\nleast HP and shoots at them."; }
			if(z == 3){ ww.signText[z] = "Don't worry about the pink monsters, it's the red\nones that... well anyways, after you beat one for the\n first time, look around to see if anything has\nchanged."; }
			if(z == 4){ ww.signText[z] = "Watch out for blocks with a blue crystal in them, they\nprevent some spells from being cast. Exploration\nspells like WARP and PHASE DOOR are the most often\nwarded against, but it could be anything.\nYou'll know a spell is blocked if it Fizzles when\nit shouldn't."; }
			
			
			worldGenMaze(z);
			worldGenReplaceBlock(z, imgBlock01, noone, 40 - z*2);
			
			worldGenReplaceBlock(z, imgBlock01, imgBlockChest, 2);
			
			//worldGenFloorH(imgFloorWater, true, irandom_range(4, 7), 2, z);
			//worldGenFloorV(imgFloorWater, true, irandom_range(4, 7), 2, z);
			//worldGenReplaceFloor(z, imgFloor01, imgFloorSpikes, irandom_range(10, 20));
			
			
			worldGenPatchGas(z, objGasPoison, 1);
			
			
			if(ww.signText[z] != ""){
				worldGenReplaceFloor(z, imgFloor01, imgFloorSign, 1);
			}
			
			
			if(z == 2){ worldGenFloorV(imgFloorSpikes, true, irandom_range(4, 6), 5, z); }
			if(z == 3){ worldGenFloorH(imgFloorWater, true, irandom_range(4, 7), 2, z); }
			if(z == 4){ worldGenReplaceFloor(z, imgFloor01, imgFloorSpikes, 20); }
			if(z == triangleFloor){ worldGenReplaceBlock(z, imgBlock01, imgBlockFutureSpecChest, 1); }
			if(z == bossFloor01){ worldGenReplaceFloor(z, imgFloor01, imgFloorSpikeBoss01, 1); }
			
			
			//if(z == 4){ worldGenReplaceFloor(z, imgFloor01, imgFloorSpike01, 10); }
			//if(z == 5){ worldGenPatchGas(z, objGasDark, 2); }
			if(z == 6){ worldGenReplaceFloor(z, imgFloor01, imgFloorMPTrap, 50); }
			//if(z == 2){ worldGenTreasureRoom(z, imgCoin10); }
			if(z == 7){ 
				worldGenFloorH(imgFloorWater, true, irandom_range(4, 7), 2, z); 
				worldGenFloorV(imgFloorWater, true, irandom_range(4, 7), 2, z); 
				worldGenReplaceFloor(z, imgFloor01, imgFloorSpikes, 30);
			}
			
			
			
			worldGenReplaceBlock(z, imgBlock01, imgBlockHiddenChest, (z%2)+1 );
			worldGenReplaceBlock(z, imgBlock01, imgBlockIron, -36 + z*6);
			
			
		}
		
		
		
		
		
		if(z > 0){
			if(stairQuad == 1){ fmap[z][14, 2] = imgStairUp; bmap[z][14, 2] = noone; }
			if(stairQuad == 2){ fmap[z][14, 10] = imgStairUp; bmap[z][14, 10] = noone; }
			if(stairQuad == 3){ fmap[z][2, 10] = imgStairUp; bmap[z][2, 10] = noone; }
			if(stairQuad == 4){ fmap[z][2, 2] = imgStairUp; bmap[z][2, 2] = noone; }
			
			enterQuad[z] = stairQuad;
		}
		
		var l = stairQuad;
		var ll = 2;
		if(l == 2){ ll = 1; }
		if(l == 3){ ll = 4; }
		if(l == 4){ ll = 3; }
		do { stairQuad = irandom_range(1, 4); } until (stairQuad != l && stairQuad != ll);
		if(z == 0){ stairQuad = 2; }
		
		if(z < LAST){
			if(stairQuad == 1){ fmap[z][14, 2] = imgStairDown; bmap[z][14, 2] = noone; }
			if(stairQuad == 2){ fmap[z][14, 10] = imgStairDown; bmap[z][14, 10] = noone; }
			if(stairQuad == 3){ fmap[z][2, 10] = imgStairDown; bmap[z][2, 10] = noone; }
			if(stairQuad == 4){ fmap[z][2, 2] = imgStairDown; bmap[z][2, 2] = noone; }
			
			exitQuad[z] = stairQuad;
		}
		
		if(normMaze){
			if(z >= 1 && z < LAST){
				//var n = irandom_range(1, 2 + (floor(z / 10)));
				var n = irandom_range(4, 6);
				if(worldGenReplaceFloor(z, imgFloor01, imgFloorSwitchUp, n) != n){
					worldGenReplaceFloorAll(z, imgStairDown, imgStairDownLocked);
				}
			}
		
			if(z > 0){
				worldGenFloorTreasure(z, irandom_range(1, 4));
			}
		}
		
		
	} // end of loop through Zs


	randomize();
}