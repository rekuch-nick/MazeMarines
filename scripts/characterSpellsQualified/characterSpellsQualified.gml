function characterSpellsQualified(index){
	
	spls = []; var i = 0;
	
	
	if(pc.party[index].xpLevel[1] >= 1){ spls[i] = "Bolts"; i++; }
	if(pc.party[index].xpLevel[1] >= 1){ spls[i] = "Bind Wounds"; i++; }
	if(pc.party[index].xpLevel[1] >= 3){ spls[i] = "Wall of Fire"; i++; }
	if(pc.party[index].xpLevel[1] >= 5){ spls[i] = "Cure"; i++; }
	
	
	if(pc.party[index].xpLevel[5] >= 1){ spls[i] = "Aim"; i++; }
	if(pc.party[index].xpLevel[5] >= 3){ spls[i] = "Light"; i++; }
	if(pc.party[index].xpLevel[5] >= 5){ spls[i] = "Shield"; i++; }
	if(pc.party[index].xpLevel[5] >= 10){ spls[i] = "Polymorph"; i++; }
	
	if(pc.party[index].xpLevel[6] >= 1){ spls[i] = "AntiVenom"; i++; }
	if(pc.party[index].xpLevel[6] >= 3){ spls[i] = "Leach"; i++; }
	if(pc.party[index].xpLevel[6] >= 5){ spls[i] = "Vex"; i++; }
	
	if(pc.party[index].xpLevel[11] >= 1){ spls[i] = "Frost"; i++; }
	if(pc.party[index].xpLevel[11] >= 3){ spls[i] = "Flame Ward"; i++; }
	if(pc.party[index].xpLevel[11] >= 5){ spls[i] = "Ice Lance"; i++; }
	if(pc.party[index].xpLevel[11] >= 10){ spls[i] = "Undertow"; i++; }
	
	if(pc.party[index].xpLevel[12] >= 1){ spls[i] = "Phase Door"; i++; }
	if(pc.party[index].xpLevel[12] >= 1){ spls[i] = "CombatCure"; i++; }
	if(pc.party[index].xpLevel[12] >= 3){ spls[i] = "Repel"; i++; }
	if(pc.party[index].xpLevel[12] >= 5){ spls[i] = "Warp"; i++; }
	if(pc.party[index].xpLevel[12] >= 10){ spls[i] = "Tornado"; i++; }

	if(pc.party[index].xpLevel[13] >= 1){ spls[i] = "Open"; i++; }
	if(pc.party[index].xpLevel[13] >= 3){ spls[i] = "Xenograft"; i++; }
	
	if(pc.party[index].xpLevel[17] >= 1){ spls[i] = "Xerox"; i++; }
	if(pc.party[index].xpLevel[17] >= 5){ spls[i] = "Gravity"; i++; }
	if(pc.party[index].xpLevel[17] >= 10){ spls[i] = "Eye"; i++; }
	
	if(pc.party[index].xpLevel[19] >= 1){ spls[i] = "Eye"; i++; }
	
	return spls;
}