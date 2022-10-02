function createParty(namArr, classArr){
	
	for(var i=0; i<5; i++){
		pc.party[i] = {
			img: imgMarine,
			nickname: namArr[i],
			hp: 100,
			hpMax: 100,
			xp: 0,
			xpLevel: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
			class: classArr[i],
			mp: 0,
			mpMax: 0,
			limit: 0,
			limitMax: 1000,
			spells: [],
			bleed: 0, poison: 0, mute: 0, stun: 0, xenograft: 0,
			aim: 0, shield: 0, flameward: 0,
			item: noone,
		};
		pc.party[i].xpLevel[classArr[i]] = 1;
		//pc.party[i].xpLevel[classArr[i]] = 5; /////////
		pc.party[i].hpGained = 0;
		pc.party[i].img = ww.classSprites[classArr[i]];
		if(classArr[i] == 0){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 1){
			pc.party[i].spells = ["Bolts", "Bind Wounds"];
			pc.party[i].hpBase = 50;
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 2){
			pc.party[i].hpBase = 80;
		}
		if(classArr[i] == 3){
			pc.party[i].hpBase = 80;
		}
		if(classArr[i] == 4){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 5){
			pc.party[i].spells = ["Aim"];
			pc.party[i].hpBase = 50;
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 6){
			pc.party[i].spells = ["AntiVenom"];
			pc.party[i].hpBase = 50;
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 7){
			pc.party[i].hpBase = 120;
		}
		if(classArr[i] == 8){
			pc.party[i].hpBase = 120;
		}
		if(classArr[i] == 9){
			pc.party[i].hpBase = 80;
		}
		if(classArr[i] == 10){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 11){
			pc.party[i].spells = ["Frost"];
			pc.party[i].hpBase = 30;
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 12){
			pc.party[i].hpBase = 30;
			pc.party[i].spells = ["Phase Door"];
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 13){
			pc.party[i].hpBase = 75;
			pc.party[i].spells = ["Open"];
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 14){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 15){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 16){
			pc.party[i].hpBase = 100;
		}
		if(classArr[i] == 17){
			pc.party[i].hpBase = 20;
			pc.party[i].spells = ["Xerox"];
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		if(classArr[i] == 18){
			pc.party[i].hpBase = 20;
		}
		if(classArr[i] == 19){
			pc.party[i].hpBase = 10;
			pc.party[i].spells = ["Eye"];
			pc.party[i].mp = 4; pc.party[i].mpMax = 4;
		}
		//pc.party[i].hp = 1; /////
		
		pc.party[i].hpMax = pc.party[i].hpBase + pc.party[i].hpGained;
		pc.party[i].hp = pc.party[i].hpMax;
	}
	
	//pc.party[3].hp = -2;
	//pc.party[0].spells = ["Cure", "Eye", "Frost", "Light", "Open", "Phase Door", "Vex", "Xerox", "Xenograft"];
	

	ww.namePlate[0] = instance_create_depth(1098, 10, -7500, objWidgetBars);
	ww.namePlate[0].index = 0;
	ww.namePlate[1] = instance_create_depth(1098, 140, -7500, objWidgetBars);
	ww.namePlate[1].index = 1;
	ww.namePlate[2] = instance_create_depth(1098, 270, -7500, objWidgetBars);
	ww.namePlate[2].index = 2;
	ww.namePlate[3] = instance_create_depth(1098, 400, -7500, objWidgetBars);
	ww.namePlate[3].index = 3;
	ww.namePlate[4] = instance_create_depth(1098, 530, -7500, objWidgetBars);
	ww.namePlate[4].index = 4;

}