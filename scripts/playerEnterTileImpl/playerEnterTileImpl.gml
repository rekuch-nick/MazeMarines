function playerEnterTileImpl(z, a, b){
	
	var hit = false;
	with(objGasPoison){
		xSpot = floor(x / 64);
		ySpot = floor(y / 64);
		if(pc.xSpot == xSpot && pc.ySpot == ySpot){
			hit = true;
		}
	}
	if(hit){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].poison = 1;
			pc.party[i].hp -= irandom_range(1, 6);
		}}
		for(var i=0; i<20; i++){ instance_create_depth(pc.x+32, pc.y+32, ww.Leff, effPoison); }
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSpikes){
		for(var i=0; i<20; i++){ instance_create_depth(x+32, y+32, ww.Leff, effBlood); }
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
				party[i].hp -= irandom_range(1, 6) + irandom_range(1, 6);
		}}}
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorMPTrap){
		var mpTaken = 0;
		for(var i=0; i<12; i++){ instance_create_depth(x+32, y+32, ww.Leff, effDrain); }
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
				if(party[i].mp > 0){ mpTaken ++; }
				party[i].mp = clamp(party[i].mp - 1, 0, party[i].mp);
		}}}
		if(mpTaken > 0 && irandom_range(1, 4) == 1){
			ww.fmap[zSpot][xSpot, ySpot] = imgFloor01;
		}
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSpawnTrap){
		for(var aa=pc.xSpot-2; aa<=pc.xSpot+2; aa++){ for(var bb=pc.ySpot-2; bb<=pc.ySpot+2; bb++){
			if(aa == pc.xSpot-2 || aa == pc.xSpot+2 || bb == pc.ySpot-2 || bb == pc.ySpot+2){
				if(inBounds(aa, bb)){ if(ww.mmap[pc.zSpot][aa, bb] == noone && tileCanHaveMob(ww.fmap[z][aa, bb])){
					ww.mmap[z][aa, bb] = instance_create_depth(aa * 64, bb * 64, ww.Lmmb, objMobGoon);
					ww.mmap[z][aa, bb].xSpot = aa;
					ww.mmap[z][aa, bb].ySpot = bb;
					ww.mmap[z][aa, bb].zSpot = z;
				}}
			}
		}}
		
		ww.fmap[zSpot][xSpot, ySpot] = imgFloor01;
	}
	
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSwitchUp){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorSwitchDown;
		var s = instance_create_depth(pc.x+32, pc.y, ww.Leff, objEffect);
		s.text = "click";
		roomCheckSwtches();
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSwitchTrapUp || ww.fmap[zSpot][xSpot, ySpot] == imgFloorSwitchTrapHiddenUp){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorSwitchDown;
		var s = instance_create_depth(pc.x+32, pc.y, ww.Leff, objEffect);
		s.text = "click";
		
		var s = instance_create_depth(64*17, pc.y, ww.Leff, effBladeWheel);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorRockTrap ){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloor01;
		var s = instance_create_depth(pc.x+32, 0, ww.Leff, effRockFall);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGasTrap ){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloor01;
		var s = instance_create_depth(pc.x+32, pc.y+32, ww.Leff, effGasTrap);
		for(var aa=pc.xSpot-1; aa<=pc.xSpot+1; aa++){ for(var bb=pc.ySpot-1; bb<=pc.ySpot+1; bb++){
			if(inBounds(aa, bb) ){
				if(pc.xSpot == aa && pc.ySpot == bb){ continue; }
				instance_create_depth(aa*64, bb*64, ww.Lmmb-1, objGasPoison);
			}
		}}
	}
	
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorChurch){
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
			pc.party[i].hp = pc.party[i].hpMax;
			pc.party[i].mp = pc.party[i].mpMax;
			pc.party[i].bleed = 0;
			pc.party[i].poison = 0;
			pc.party[i].mute = 0;
			pc.party[i].stun = 0;
		}}}
		
		
		for(var c=1; c<=ww.LAST; c++){
			for(var aa=0; aa<17; aa++){ for (var bb=0; bb<13; bb++){
				ww.mmap[c][aa, bb] = noone;
				if(ww.bmap[c][aa, bb] == imgBlockHiddenMissed){
					ww.bmap[c][aa, bb] = imgBlockHiddenChest;
				}
			}}
		}
		
		for(var zz=0; zz<ww.LAST; zz ++){ for(var aa=0; aa<17; aa++){ for (var bb=0; bb<13; bb++){
			if(ww.fmap[zz][aa, bb] == imgFloorLPLab && ww.pmap[zz][aa, bb] == noone){
				ww.pmap[zz][aa, bb] = imgStimpack;
			}
		}}}
		
		ww.pmap[ww.clueFloor][5, 4] = imgrBed;
		ww.pmap[ww.clueFloor][8, 4] = imgrCandle;
		ww.pmap[ww.clueFloor][11, 4] = imgrDeck;
		ww.pmap[ww.clueFloor][6, 6] = imgrDictionary;
		ww.pmap[ww.clueFloor][9, 6] = imgrEgg;
		ww.pmap[ww.clueFloor][12, 6] = imgrMap;
		ww.pmap[ww.clueFloor][5, 8] = imgrPiano;
		ww.pmap[ww.clueFloor][8, 8] = imgrSoap;
		ww.pmap[ww.clueFloor][11, 8] = imgrSponge;
		
		instance_create_depth(0, 0, ww.Lscn, objScreenChurch);
	}
	
	
	
	if(ww.mmap[zSpot][xSpot, ySpot] != noone){
		ww.screenCombat = instance_create_depth(0, 0, ww.Lcsn, objScreenCombat);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorTower){ instance_create_depth(0, 0, ww.Lscn, objScreenClassChange); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSpellOffice){ instance_create_depth(0, 0, ww.Lscn, objScreenSpellOffice); }
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorKey){
		instance_create_depth(0, 0, ww.Lscn, objScreenShotKey);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv1){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv2){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv3){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv4){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv5){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv6){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv7){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv8){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv9){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv10){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorRid){ instance_create_depth(0, 0, ww.Lscn, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorShop){ instance_create_depth(0, 0, ww.Lscn, objScreenShop); }
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSign){ instance_create_depth(0, 0, ww.Lscn, objScreenSign); }
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGrave){
		instance_create_depth(0, 0, ww.Lscn, objScreenShopRez);
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGate01){
		if(playerHasItem("Silver Triangle")){
			worldGenReplaceBlockAll(pc.zSpot, imgBlockGate, noone);
			worldGenReplaceFloorAll(pc.zSpot, imgFloorGate01, imgFloor01);
			var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
			s.text = "Bearer of the Triangle, you may pass";
		} else {
			var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
			s.text = "Only the Silver Triangle bearer may pass";
		}
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGate02){
		if(playerHasItem("Silver Circle")){
			worldGenReplaceBlockAll(pc.zSpot, imgBlockGate, noone);
			worldGenReplaceFloorAll(pc.zSpot, imgFloorGate02, imgFloor01);
			var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
			s.text = "Bearer of the Circle, you may pass";
		} else {
			var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
			s.text = "Only the Silver Circle bearer may pass";
		}
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorWater){
		if(pc.inBoat == noone){
			for(var aa=pc.xSpot-1; aa<=pc.xSpot+1; aa++){ for(var bb=pc.ySpot-1; bb<=pc.ySpot+1; bb++){
				if(inBounds(aa, bb)){ if(ww.mmap[z][aa, bb] == noone && ww.bmap[z][aa, bb] == noone) {
					if(a == aa && b == bb){ continue; }
					if(ww.fmap[z][aa, bb] != imgFloorWater){ continue; }
					if(choose(true, true, false, false, false)){ continue; }
					var t = objMobGoonWater;
					ww.mmap[z][aa, bb] = instance_create_depth(aa * 64, bb * 64, ww.Lmmb, t);
					ww.mmap[z][aa, bb].xSpot = aa;
					ww.mmap[z][aa, bb].ySpot = bb;
					ww.mmap[z][aa, bb].zSpot = z;
				}}
			}}
		}
	}
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorLava){
		if(pc.inBoat == noone){
			instance_create_depth(pc.x, pc.y, ww.Leff, effFire);
			for(var i=0; i<5; i++){ if(pc.party[i].hp > 0){
				var d = 20;
				if(pc.party[i].flameward > 0){ d = 4; }
				pc.party[i].hp -= d;
			}}
			
		}
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorWaterBoat){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorWater;
		pc.inBoat = imgBoatInWater;
	}
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorWaterBoat2){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorWater;
		pc.inBoat = imgBoat2InWater;
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorLavaBoat){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorLava;
		pc.inBoat = imgBoat2InWater;
	}
	
	
	for(var aa=a-3; aa<=a+3; aa++){ for(var bb=b-3; bb<=b+3; bb++){ if(inBounds(aa, bb)){
		if(abs(aa) > 2 && abs(bb) > 2){ continue; }
		if(ww.bmap[z][aa, bb] == imgBlockHiddenChest){
			var r = irandom_range(0, 99);
			if(r < 15){
				ww.bmap[z][aa, bb] = imgBlockChest;
			} else {
				ww.bmap[z][aa, bb] = imgBlockHiddenMissed;
			}
		}
	}}}
	
	
	
	
	
	
	var pup = ww.pmap[zSpot][xSpot, ySpot];
	var rem = false;
	var txt = "";
	if(pup == imgKey){pc.keys ++; rem = true; txt = "+1 Key"; }
	if(pup == imgKeyTwo){pc.keys += 2; rem = true; txt = "+2 Keys"; }
	if(pup == imgBomb){pc.bombs +=2; rem = true; txt = "+2 Bombs"; }
	if(pup == imgMedkit){pc.medkits ++; rem = true; txt = "+1 MedKit"; }
	if(pup == imgBoat){pc.boats ++; rem = true; txt = "+1 Raft"; }
	if(pup == imgPick){pc.picks +=4; rem = true; txt = "+4 Harrows"; }
	
	if(pup == imgBomb2){pc.bombType = imgBomb2; rem = true; txt = "Power Bombs"; }
	if(pup == imgMedkit2){pc.medkitType = imgMedkit2; rem = true; txt = "Medkits now Revive"; }
	if(pup == imgBoat2){pc.boatType = imgBoat2; rem = true; txt = "Rafts survive Lava"; }
	if(pup == imgPick2){pc.pickType = imgPick2; rem = true; txt = "Harrows last longer"; }
	
	if(pup == imgCoin){pc.coins += 5; rem = true; txt = "+5 Coins"; }
	if(pup == imgCoin2){pc.coins +=10; rem = true; txt = "+10 Coins"; }
	if(pup == imgCoin3){pc.coins +=15; rem = true; txt = "+15 Coins"; }
	if(pup == imgCoin4){pc.coins +=20; rem = true; txt = "+20 Coins"; }
	if(pup == imgCoin5){pc.coins +=25; rem = true; txt = "+25 Coins"; }
	if(pup == imgCoin10){pc.coins +=50; rem = true; txt = "+50 Coins"; }
	if(pup == imgBook){pc.xpToGain +=700; rem = true; txt = "XP Up"; }
	if(pup == imgBook2){pc.xpToGain +=3500; rem = true; txt = "XP Up"; }
	if(pup == imgStimpack){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
			pc.party[i].limit = clamp(pc.party[i].limit + 400, 0, pc.party[i].limitMax);
		}}}
		rem = true; txt = "Limt Charge Up"; 
	}
	
	if(playerHasInventorySpace()){
		if(pup == imgSilverTriangle){ if(playerGainItem("Silver Triangle")){ rem = true; txt = "Found Silver Triangle"; } }
	
		if(pup == imgrBed){ if(playerGainItem("Bed")){ rem = true; txt = "Chose the Bed"; removeClueItems(); } }
		if(pup == imgrCandle){ if(playerGainItem("Candle")){ rem = true; txt = "Chose the Candle"; removeClueItems(); } }
		if(pup == imgrDeck){ if(playerGainItem("Deck of Cards")){ rem = true; txt = "Chose the Deck of Cards"; removeClueItems(); } }
		if(pup == imgrDictionary){ if(playerGainItem("Dictionary")){ rem = true; txt = "Chose the Dictionary"; removeClueItems(); } }
		if(pup == imgrEgg){ if(playerGainItem("Egg")){ rem = true; txt = "Chose the Egg"; removeClueItems(); } }
		if(pup == imgrMap){ if(playerGainItem("Map")){ rem = true; txt = "Chose the Map"; removeClueItems(); } }
		if(pup == imgrPiano){ if(playerGainItem("Piano")){ rem = true; txt = "Chose the Piano"; removeClueItems(); } }
		if(pup == imgrSoap){ if(playerGainItem("Bar of Soap")){ rem = true; txt = "Chose the Bar of Soap"; removeClueItems(); } }
		if(pup == imgrSponge){ if(playerGainItem("Sponge")){ rem = true; txt = "Chose the Sponge"; removeClueItems(); } }
		
		if(pup == imgSlab1){ if(playerGainItem("Granite Slab")){ rem = true; txt = "The SLAB humms with power"; } }
		if(pup == imgSlab2){ if(playerGainItem("Jade Slab")){ rem = true; txt = "The SLAB humms with power"; } }
		if(pup == imgSlab3){ if(playerGainItem("Onyx Slab")){ rem = true; txt = "The SLAB humms with power"; } }
	}
		
	
	if(rem){ ww.pmap[zSpot][xSpot, ySpot] = noone; }
	if(txt != noone){
		var s = instance_create_depth(pc.x+32, pc.y, ww.Leff, objEffect);
		s.text = txt;
	}
	
}