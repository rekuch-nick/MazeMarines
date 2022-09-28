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
	
	if(n == "Frost"){ return {
		nam: n,
		cost: 4,
		wait: 30,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "F",
		desc: "AoE Cold Attack",
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
		cost: 4,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "L",
		desc: "Remove dark gas",
	}; }
	
	if(n == "Open"){ return {
		nam: n,
		cost: 2,
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
	
	if(n == "Repel"){ return {
		nam: n,
		cost: 2,
		wait: 0,
		explore: true,
		target: "",
		canCast: true,
		hotKey: "R",
		desc: "Minor monsters may flee",
	}; }
	
	if(n == "Shield"){ return {
		nam: n,
		cost: 3,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "S",
		desc: "Caster protects party's HP",
	}; }
	
	if(n == "Vex"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "V",
		desc: "Foes will missfire",
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
	
	if(n == "Xenograft"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: true,
		target: "number",
		canCast: true,
		hotKey: "X",
		desc: "improve with donor tissue",
	}; }
	
	if(n == "Xerox"){ return {
		nam: n,
		cost: 1,
		wait: 0,
		explore: false,
		target: "",
		canCast: true,
		hotKey: "X",
		desc: "Make copies",
	}; }
	
}