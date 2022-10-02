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
	}; }
	
}