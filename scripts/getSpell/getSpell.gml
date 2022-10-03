function getSpell(n){
	if(n == "Aim"){ return {
		nam: n,
		cost: 4,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "A",
		desc: "Team's shots do more damage",
		learnCost: 5,
	}; }
	
	if(n == "AntiVenom"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: true,
		target: "number",
		canCast: true,
		hotKey: "A",
		desc: "Remove Poison from one unit",
		learnCost: 1,
	}; }
	if(n == "AntiVenom+"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "A",
		desc: "Remove Poison from one unit",
		learnCost: 1,
	}; }
	
	if(n == "Bolts"){ return {
		nam: n,
		cost: 4,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "B",
		desc: "Caster shoots rapidly",
		learnCost: 1,
	}; }
	
	if(n == "Bolts+"){ return {
		nam: n,
		cost: 4,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "B",
		desc: "Caster shoots rapidly",
		learnCost: 1,
	}; }
	
	if(n == "Bind Wounds"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: true,
		target: "number",
		canCast: true,
		hotKey: "B",
		desc: "Remove Bleed from one unit",
		learnCost: 1,
	}; }
	if(n == "Bind Wounds+"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "B",
		desc: "Remove Bleed from all units",
		learnCost: 1,
	}; }
	
	if(n == "Cure"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: true,
		target: "number",
		canCast: true,
		hotKey: "C",
		desc: "Restore HP to one unit",
		learnCost: 5,
	}; }
	
	
	if(n == "Eye"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "E",
		desc: "Magic eye looks around",
		learnCost: 23,
	}; }
	
	if(n == "Flame Ward"){ return {
		nam: n,
		cost: 12,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "F",
		desc: "Reduce FIRE dmg taken",
		learnCost: 13,
	}; }
	
	if(n == "Frost"){ return {
		nam: n,
		cost: 8,
		wait: 30,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "F",
		desc: "AoE Cold Attack",
		learnCost: 9,
	}; }
	if(n == "Frost+"){ return {
		nam: n,
		cost: 8,
		wait: 30,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "F",
		desc: "AoE Cold Attack",
		learnCost: 9,
	}; }
	
	if(n == "Gravity"){ return {
		nam: n,
		cost: 5,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "G",
		desc: "Push foes together",
		learnCost: 18,
	}; }
	
	if(n == "Ice Lance"){ return {
		nam: n,
		cost: 16,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "I",
		desc: "Caster attacks rapdily with ice",
		learnCost: 13,
	}; }
	
	if(n == "Leach"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "L",
		desc: "Caster steals HP from foe with most",
		learnCost: 7,
	}; }
	
	if(n == "Light"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "L",
		desc: "Remove dark gas",
		learnCost: 7,
	}; }
	
	if(n == "Open"){ return {
		nam: n,
		cost: 7,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "O",
		desc: "Break locks",
		learnCost: 9,
	}; }
	
	if(n == "Phase Door"){ return {
		nam: n,
		cost: 6,
		wait: 0,
		explore: true,
		target: "direction",
		canCast: true,
		hotKey: "P",
		desc: "Remove one normal wall",
		learnCost: 9,
	}; }
	if(n == "Polymorph"){ return {
		nam: n,
		cost: 12,
		wait: 10,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "P",
		desc: "Turn foes into Sheep",
		learnCost: 14,
	}; }
	
	if(n == "Repel"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "R",
		desc: "Minor monsters may flee",
		learnCost: 11,
	}; }
	
	if(n == "Shield"){ return {
		nam: n,
		cost: 5,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "S",
		desc: "Caster protects party's HP",
		learnCost: 9,
	}; }
	
	if(n == "Wall Ring"){ return {
		nam: n,
		cost: 0,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "S",
		desc: "Caster protects party's HP",
		learnCost: 9,
	}; }
	
	if(n == "Tornado"){ return {
		nam: n,
		cost: 4,
		wait: 0,
		explore: true,
		target: "direction",
		canCast: true,
		hotKey: "T",
		desc: "Dissipates gas and flame",
		learnCost: 18,
	}; }
	
	if(n == "Vex"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "V",
		desc: "Foes will missfire",
		learnCost: 9,
	}; }
	
	if(n == "Warp"){ return {
		nam: n,
		cost: 5,
		wait: 0,
		explore: true,
		target: "direction",
		canCast: true,
		hotKey: "W",
		desc: "Teleport in a direction",
		learnCost: 13,
	}; }
	
	if(n == "Wall of Fire"){ return {
		nam: n,
		cost: 4,
		wait: 30,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "W",
		desc: "AoE Fire Attack",
		learnCost: 3,
	}; }
	
	if(n == "Itm Fire"){ return {
		nam: n,
		cost: 0,
		wait: 30,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "W",
		desc: "AoE Fire Attack",
		learnCost: 9,
	}; }
	
	if(n == "Xenograft"){ return {
		nam: n,
		cost: 6,
		wait: 0,
		explore: true,
		target: "number",
		canCast: true,
		hotKey: "X",
		desc: "improve with donor tissue",
		learnCost: 11,
	}; }
	
	if(n == "Xerox"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "X",
		desc: "Make copies",
		learnCost: 13,
	}; }
	
}