function getItem(i){
	
	if(i == "Instructions"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Lists the game controls.\n\n\nArrows to walk around\nI to open inventory\nEnter to use selected item\nEnter to use stairs\nSpace to wait a turn\nNumber key to select unit\nFirst letter of spell to cast\n(In combat or while exploring)\nM to use a Medkit\nB to use a Bomb\nH to dig with a harrow\nR to use a Raft\nWalk into lock to use Key\nEnter in combat to speed it up",
		spell: "",
		worth: 20,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	if(i == "Mission Briefing"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "From the desk of [REDACTED]:\n\nBelow the town of Shiloh is a\nterrible labyrinth. At its\ngretest depth, waits the\n[REDACTED], a treasure with\nthe power to [REDACTED]. Bring\nit to the surface, and we can\nuse it to [REDACTED].\n\nBe sure you are ready before\ntouching the [REDACTED], for\ndoing so will surely wake the\nmost terrible monsters within\nthe depths and prevent any\nrescue from us.\n\nWe've instruced the teams\nof previous attempts to\ncarve notes into the walls\nbefore dying, so keep an eye\nout for those and you should\nhave all the information\nyou need.\n\nWhatever you do, don't\n[REDACTED] the [REDACTED] or\neveryone in the [REDACTED] is\nsure to die.\n\nGood luck men, I'm counting\non you!",
		spell: "",
		worth: 20,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Silver Triangle"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "One of the maze's seals",
		spell: "",
		worth: 120,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Silver Circle"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "One of the maze's seals",
		spell: "",
		worth: 120,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Granite Slab"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to return to the deep.",
		spell: "Slab1",
		worth: 1000,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	if(i == "Jade Slab"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to return to the deep.",
		spell: "Slab2",
		worth: 1000,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	if(i == "Onyx Slab"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to return to the deep.",
		spell: "Slab3",
		worth: 1000,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	
	if(i == "Lantern"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to see through dark clouds.",
		spell: "Light",
		worth: 20,
		breakChance: 50,
		breakMessage: "has broken",
	}; }
	
	if(i == "Bezoar"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to cure poison from the whole party.",
		spell: "AntiVenom+",
		worth: 20,
		breakChance: 50,
		breakMessage: "is consumed",
	}; }
	
	if(i == "Portable Hole"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to remove walls.",
		spell: "Phase Door",
		worth: 20,
		breakChance: 33,
		breakMessage: "is consumed",
	}; }
	if(i == "Bug Spray"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Use to remove lesser monsters.",
		spell: "Repel",
		worth: 24,
		breakChance: 20,
		breakMessage: "is empty",
	}; }
	if(i == "Healing Potion"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Drink to recover HP.",
		spell: "Cure",
		worth: 424,
		breakChance: 33,
		breakMessage: "runs out",
	}; }
	if(i == "Flash Powder"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Sprinkel to teleport.",
		spell: "Warp",
		worth: 61,
		breakChance: 100,
		breakMessage: "is used up",
	}; }
	if(i == "Fan"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Wave to disperse gas.",
		spell: "Tornado",
		worth: 61,
		breakChance: 50,
		breakMessage: "breaks",
	}; }
	
	
	
	
	
	
	
	
	
	if(i == "Titan Belt"){ return {
		nam: i,
		canWear: true,
		wearEffect: "+2",
		desc: "E: All shots deal +2 damage",
		spell: "",
		worth: 255,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Titan Glove"){ return {
		nam: i,
		canWear: true,
		wearEffect: "+1",
		desc: "E: All shots deal +1 damage",
		spell: "",
		worth: 165,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Troll Brace"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Troll Healing",
		desc: "E: Regain more HP over time",
		spell: "",
		worth: 265,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Mirror Charm"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Rare Xerox",
		desc: "E: Spawn a clone in battle 20% chance",
		spell: "",
		worth: 65,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Deflection Ring"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Minor Deflection",
		desc: "E: Deflect basic shots 10% chance",
		spell: "",
		worth: 65,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Lucky Coin"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Gold Find",
		desc: "E: Find more coins",
		spell: "",
		worth: 125,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Mage Staff"){ return {
		nam: i,
		canWear: true,
		wearEffect: "MP Charge",
		desc: "E: Regain MP over time",
		spell: "",
		worth: 965,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Rod of Fireballs"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Wall of Fire",
		desc: "E: Cast fire spells in combat",
		spell: "",
		worth: 465,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Wall Ring"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Wall Ring",
		desc: "E: Defend the team in battle",
		spell: "",
		worth: 465,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	
	
	
	
	
	
	return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "What is this for?",
		spell: "",
		worth: 1,
		breakChance: 0,
		breakMessage: "has broken",
	};
}