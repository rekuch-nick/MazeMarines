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
		for(var i=0; i<20; i++){ instance_create_depth(pc.x+32, pc.y+32, -8998, effPoison); }
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSpikes){
		for(var i=0; i<20; i++){ instance_create_depth(x+32, y+32, -8998, effBlood); }
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
				party[i].hp -= irandom_range(1, 6) + irandom_range(1, 6);
		}}}
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorMPTrap){
		for(var i=0; i<12; i++){ instance_create_depth(x+32, y+32, -8998, effDrain); }
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
				party[i].mp = clamp(party[i].mp - 1, 0, party[i].mp);
		}}}
	}
	
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSwitchUp){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorSwitchDown;
		var s = instance_create_depth(pc.x+32, pc.y, -8998, objEffect);
		s.text = "click";
		roomCheckSwtches();
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
		instance_create_depth(0, 0, -7999, objScreenChurch);
	}
	
	
	
	if(ww.mmap[zSpot][xSpot, ySpot] != noone){
		ww.screenCombat = instance_create_depth(0, 0, -7999, objScreenCombat);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorTower){
		instance_create_depth(0, 0, -7999, objScreenClassChange);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorKey){
		instance_create_depth(0, 0, -7999, objScreenShotKey);
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv1){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv2){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv3){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv4){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorAdv5){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorRid){ instance_create_depth(0, 0, -7999, objScreenAdvicePage); }
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorShop){ instance_create_depth(0, 0, -7999, objScreenShop); }
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorSign){ instance_create_depth(0, 0, -7999, objScreenSign); }
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGrave){
		instance_create_depth(0, 0, -7999, objScreenShopRez);
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorGate01){
		if(playerHasItem("Silver Triangle")){
			worldGenReplaceBlockAll(pc.zSpot, imgBlockGate, noone);
			worldGenReplaceFloorAll(pc.zSpot, imgFloorGate01, imgFloor01);
			var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
			s.text = "Bearer of the Triangle, you may pass";
		} else {
			var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
			s.text = "Only the Silver Triangle bearer may pass";
		}
	}
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorWater){
		if(!pc.inBoat){
			for(var aa=pc.xSpot-1; aa<=pc.xSpot+1; aa++){ for(var bb=pc.ySpot-1; bb<=pc.ySpot+1; bb++){
				if(inBounds(aa, bb)){ if(ww.mmap[z][aa, bb] == noone && ww.bmap[z][aa, bb] == noone) {
					if(a == aa && b == bb){ continue; }
					if(ww.fmap[z][aa, bb] != imgFloorWater){ continue; }
					if(choose(true, true, false, false, false)){ continue; }
					var t = objMobGoonWater;
					ww.mmap[z][aa, bb] = instance_create_depth(aa * 64, bb * 64, -5000, t);
					ww.mmap[z][aa, bb].xSpot = aa;
					ww.mmap[z][aa, bb].ySpot = bb;
					ww.mmap[z][aa, bb].zSpot = z;
				}}
			}}
		}
	}
	
	
	if(ww.fmap[zSpot][xSpot, ySpot] == imgFloorWaterBoat){
		ww.fmap[zSpot][xSpot, ySpot] = imgFloorWater;
		pc.inBoat = true;
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
	if(pup == imgCoin){pc.coins += 5; rem = true; txt = "+5 Coina"; }
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
	if(pup == imgSilverTriangle){ if(playerGainItem("Silver Triangle")){ rem = true; txt = "Found Silver Triangle"; } }
	if(rem){ ww.pmap[zSpot][xSpot, ySpot] = noone; }
	if(txt != noone){
		var s = instance_create_depth(pc.x+32, pc.y, -8998, objEffect);
		s.text = txt;
	}
	
}