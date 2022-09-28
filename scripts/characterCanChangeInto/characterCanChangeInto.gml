function characterCanChangeInto(index){
	var c = pc.party[index];
	
	var p = max(c.xpLevel[0], c.xpLevel[4], c.xpLevel[7], c.xpLevel[10], c.xpLevel[13], c.xpLevel[14], c.xpLevel[15]);
	var m = max(c.xpLevel[1], c.xpLevel[5], c.xpLevel[6], c.xpLevel[11], c.xpLevel[12], c.xpLevel[13], c.xpLevel[17], c.xpLevel[19]);
	var t = max(c.xpLevel[2], c.xpLevel[3], c.xpLevel[8], c.xpLevel[9], c.xpLevel[18]);
	var mt = clamp(c.xpLevel[1], 0, 15) + clamp(c.xpLevel[5], 0, 15) + clamp(c.xpLevel[6], 0, 15) + clamp(c.xpLevel[11], 0, 15) + clamp(c.xpLevel[12], 0, 15) + clamp(c.xpLevel[13], 0, 15) + clamp(c.xpLevel[17], 0, 15);
	
	var canRookie = c.class != 0;
	var canNeo = c.class != 1;
	var canMech = c.class != 2;
	var canMedic = (p >= 5 || m >= 5 || t >= 5 ) && (c.class != 3);
	var canHeavy = (p >= 5 || t >= 5 ) && (c.class != 4);
	var canScribe = (m>= 5 ) && (c.class != 5);
	var canGasdoc = (m >= 5 ) && (c.class != 6);
	var canKnight = (p >= 5 && (t >= 5 || m >= 5) && (c.class != 7) );
	var canCyborg = (t >= 5 ) && (c.class != 8);
	var canLaserTech = (t >= 10 ) && (c.class != 9);
	var canMGunner = (p >= 10 ) && (c.class != 10);
	var canIceman = (m >= 10 ) && (c.class != 11);
	var canBard = (m >= 10 ) && (c.class != 12);
	var canGish = (m >= 10 && p >= 10) && (c.class != 13);
	var canSprayer = (p >= 10 ) && (c.class != 14);
	var canSniper = (p >= 15 && t >= 15) && (c.class != 15);
	var canCommando = (p >= 15 ) && (c.class != 16);
	var canMage = (m >= 15 ) && (c.class != 17);
	var canDemo = (t >= 15 ) && (c.class != 18);
	var canAscendant = (mt >= 100 ) && (c.class != 19);
	
	return [canRookie, canNeo, canMech, canMedic, canHeavy, canScribe, canGasdoc, canKnight, canCyborg,
				canLaserTech, canMGunner, canIceman, canBard, canGish, canSprayer, canSniper, canCommando, 
				canMage, canDemo, canAscendant];
}