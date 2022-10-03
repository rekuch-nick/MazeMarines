function worldGen(){
	random_set_seed(seed);
	LAST = 20;
	
	bossOneDown = false;
	bossFloor01 = 4;
	triangleFloor = 4;
	clueFloor = 9;
	circleFloor = 10;
	
	boatFloor = 64;
	medkitFloor = 53;
	bombFloor = 13;
	pickFloor = 78;
	
	
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
		} else if(z == clueFloor){
			for(var a=0; a<17; a++){
				ww.bmap[z][a, 0] = imgBlockAntiMagic;
				ww.bmap[z][a, 12] = imgBlockAntiMagic;
			}
			for(var b=0; b<12; b++){
				ww.bmap[z][0, b] = imgBlockAntiMagic;
				ww.bmap[z][16, b] = imgBlockAntiMagic;
			}
			
			
			ww.signText[z] = "Limit one per customer!";
			ww.fmap[z][8, 11] = imgFloorSign;
		
		} else if(z == 10){
			ww.antiMagic[z] = ["Warp"];
			for(var b=0; b<13; b++){ ww.bmap[z][8, b] = imgBlockAntiMagic; }
			
			ww.bmap[z][8, 6] = imgBlockGate;
			ww.fmap[z][7, 6] = imgFloorGate02;
			ww.fmap[z][9, 6] = imgFloorGate02;
			
			worldGenPatchGas(z, objGasPoison, 3);
		
		} else if(z >= 1){
			normMaze = true;
			
			if(z == 1){ ww.signText[z] = stringInsertBreaks("Feeling good about my first mission! I'll leave another note on this floor on my way back out.", 0); }
			if(z == 2){ ww.signText[z] = stringInsertBreaks("Most monsters are so mindless they will target your party members randomly. The ones with chain-guns are even so dumb they always fire at the guy with the most HP.\n\nWatch out for the one that looks either like its melting or maybe wearing a dress. Somehow it knows who has the least HP and always shoots at them.", 0); }
			if(z == 3){ ww.signText[z] = stringInsertBreaks("Don't worry about the pink monsters, it's the red ones that... well anyways, after you beat one for the  first time, look around to see if anything has changed.", 0); }
			if(z == 4){ ww.signText[z] = stringInsertBreaks("Watch out for blocks with a blue crystal in them, they prevent some spells from being cast. Exploration spells like WARP and PHASE DOOR are the most often warded against, but it could be anything. You'll know a spell is blocked if it Fizzles when it shouldn't.", 0); }
			
			if(z == 7){ ww.signText[z] = stringInsertBreaks("Have you noticed anything about the Gravedigger's prices? He charges a percentage of your coins!\n\nSometimes you can spend a bunch right before hiring him and reduce what you pay.\n\nI mean ideally you won't need his services in the first place, but you know...", 0); }
			if(z == 8){ ww.signText[z] = stringInsertBreaks("If you beat a lot of monsters on the same floor without leaving, there's a chace a rare treasure laden monster will show up.", 0); }
			
			
			worldGenMaze(z);
			worldGenReplaceBlock(z, imgBlock01, noone, 40 - z*2);
			
			if(z == bombFloor || z == medkitFloor || z == boatFloor || z == pickFloor){
				worldGenReplaceBlock(z, imgBlock01, imgBlockChest2, 1);
			}
			worldGenReplaceBlock(z, imgBlock01, imgBlockChest, 2);
			
			//worldGenFloorH(imgFloorWater, true, irandom_range(4, 7), 2, z);
			//worldGenFloorV(imgFloorWater, true, irandom_range(4, 7), 2, z);
			//worldGenReplaceFloor(z, imgFloor01, imgFloorSpikes, irandom_range(10, 20));
			
			
			//worldGenPatchGas(z, objGasPoison, 1);
			
			
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
			//if(z == 8){ worldGenPatchGas(z, objGasPoison, 10); }
			if(z == 8){ worldGenReplaceFloor(z, imgFloor01, imgFloorSwitchTrapHiddenUp, 20); }
			if(z == 11){ worldGenReplaceFloor(z, imgFloor01, imgFloorGrass, 70); }
			if(z == 12){ worldGenReplaceFloor(z, imgFloor01, imgFloorRockTrap, 50); }
			if(z == 13){ worldGenReplaceFloor(z, imgFloor01, imgFloorGasTrap, 40); }
			if(z == 14){ worldGenFloorH(imgFloorLava, true, irandom_range(4, 7), 2, z); }
			
			
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
	
	riddle = irandom_range(1, 9);

	randomize();
}