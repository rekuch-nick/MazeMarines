function characterBaseCombatStats(c, l){
	var o = {
		shotCDMax: 60,
		shotCluster: 0,
		shotClusterMax: 0,
		shotClusterCD: 10,
		shotPowerMin: 6,
		shotPowerMax: 15,
		ySpread: 0,
		limitGainMin: 5,
		limitGainMax: 15,
		aoePlus: 0,
		limit: "Heal Self for 20%",
		shotType: objShot,
		shotNote: "",
		passive: "",
		magicPower: 1,
	}
	
	if(c == 0){ // rookie
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = .4;
	}
	if(c == 1){ // apprentice
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		o.limit = "Regain 4 MP";
		o.magicPower = 1;
		o.shotType = objMagShot;
	}
	if(c == 2){ // mechanic
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		o.limitGainMin = 5;
		o.limitGainMax = 25;
		o.limit = "Craft Tools";
		o.magicPower = .4;
	}
	if(c == 3){ // medic
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		o.shotCluster = 1; o.shotClusterMax = 1; o.shotClusterCD = 10;
		o.limitGainMin = 50;
		o.limitGainMax = 150;
		o.limit = "Heal party for 5%";
		o.magicPower = .6;
	}
	
	if(c == 4){ // heavy
		o.shotPowerMin = 20 + (l*2);
		o.shotPowerMax = 40 + (l*2);
		o.shotCDMax = 120;
		o.shotType = objShotRocket;
		o.aoePlus = 22 * clamp(l, 1, 30);
		o.shotNote = "AoE Attack";
		o.limitGainMax = 40;
		o.magicPower = .4;
		o.limit = "Berserk";
		if(l >= 15){
			o.passive = "Heals by killing";
		}
	}
	
	if(c == 5){ // scribe
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		o.limit = "Regain 8 MP";
		o.magicPower = 1;
		o.shotType = objMagShot;
	}
	
	if(c == 6){ // gasdoc
		o.shotPowerMin = 5;
		o.shotPowerMax = 14;
		o.shotCDMax = clamp(60 - (l * 4), 20, 60);
		o.limitGainMin = 30;
		o.limitGainMax = 120;
		o.limit = "AoE magic attack";
		o.magicPower = 1;
		o.shotType = objMagShot;
		if(l >= 15){
			o.passive = "Ignore poison gas";
		}
	}
	
	if(c == 7){ // knight
		o.shotPowerMin = 5 + l + 2;
		o.shotPowerMax = 14 + l;
		o.shotCluster = 1; o.shotClusterMax = 1;
		if(l >= 3){ o.shotCluster = 2; o.shotClusterMax = 2; }
		if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.limitGainMin = 70;
		o.limitGainMax = 100;
		o.limit = "Delete enemy shots";
		o.magicPower = .75;
		if(l >= 5){
			o.passive = "No Poison, Bleed, Stun, Mute";
		}
	}
	if(c == 8){ // cyborg
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		o.shotCluster = 1; o.shotClusterMax = 1;
		if(l >= 5){ o.shotCluster = 2; o.shotClusterMax = 2; }
		if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.limit = "Berserk";
		o.passive = "4x Regeneration";
		o.magicPower = .2;
	}
	if(c == 9){ // laserTech
		
		o.shotPowerMin = 15 + l;
		o.shotPowerMax = 15 + l;
		o.shotCDMax = 30;
		o.shotType = objLazShot;
		
		o.magicPower = .4;
	}
	if(c == 10){ // MGunner
		o.shotPowerMin = 7;
		o.shotPowerMax = 8;
		o.shotCluster = 3; o.shotClusterMax = 3;
		if(l >= 4){ o.shotCluster = 4; o.shotClusterMax = 4; }
		if(l >= 5){ o.shotCluster = 5; o.shotClusterMax = 5; }
		o.magicPower = .4;
	}
	if(c == 11){ // Iceman
		o.ySpread = 40;
		o.shotType = objShotSnow;
		o.shotPowerMin = 11 + l;
		o.shotPowerMax = 11 + l;
		o.shotCluster = 4; o.shotClusterMax = 4;
		
		o.magicPower = 1.2;
	}
	if(c == 12){ // Bard
		o.shotType = objShotSong;
		o.shotPowerMin = 20 + l;
		o.shotPowerMax = 30 + l;
		
		o.magicPower = 1.2;
	}
	if(c == 13){ // Gish
		o.shotCluster = 2; o.shotClusterMax = 2;
		o.shotPowerMin = 6 + l;
		o.shotPowerMax = 16 + l;
		o.shotCDMax = 40;
		o.magicPower = 1;
	}
	if(c == 14){ // Sprayer
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 11 + l;
		o.shotCluster = 4; o.shotClusterMax = 4;
		o.shotCDMax = 90;
		o.shotType = objFireSpray;
		//if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = .4;
	}
	if(c == 15){ // Sniper
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = .4;
	}
	if(c == 16){ // Commando
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = .75;
	}
	if(c == 17){ // Mage
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = 1.5;
		o.shotType = objMagShot;
	}
	if(c == 18){ // Demo
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = .5;
	}
	if(c == 19){ // Ascendant
		o.shotPowerMin = 5 + l;
		o.shotPowerMax = 14 + l;
		if(l >= 2){ o.shotCluster = 1; o.shotClusterMax = 1; }
		if(l >= 4){ o.shotCluster = 2; o.shotClusterMax = 2; }
		//if(l >= 5){ o.shotCluster = 3; o.shotClusterMax = 3; }
		o.magicPower = 1.5;
		o.shotType = objMagShot;
	}
	
	return o;
}