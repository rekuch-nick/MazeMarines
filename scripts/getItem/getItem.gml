function getItem(i){
	
	if(i == "Instructions"){ return {
		nam: i,
		canWear: false,
		wearEffect: "",
		desc: "Lists the game controls.\n\n\nArrows to walk around\nI to open and close inventory\nArrows to navigate Inventory\nEnter to use item\nEnter to use stairs\nSpace to wait a turn\nNumber key to select unit\nFirst letter of spell to cast\n(In combat or while exploring)\nM to use a Medkit\nB to use a Bomb\nH to dig with a harrow\nR to use a Raft\nWalk into lock to use Key\nEnter in combat to speed it up",
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
		desc: "Use to cure poison.",
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
		breakChance: 50,
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
	
	
	
	
	
	
	
	
	
	if(i == "Titan Belt"){ return {
		nam: i,
		canWear: true,
		wearEffect: "One",
		desc: "Equip: One",
		spell: "",
		worth: 55,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Titan Glove"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Two",
		desc: "Equip: Two",
		spell: "",
		worth: 65,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	
	if(i == "Mirror Charm"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Rare Xerox",
		desc: "Rarely spawn a clone in battle",
		spell: "",
		worth: 65,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Deflection Ring"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Minor Deflection",
		desc: "Rarely deflect basic shots",
		spell: "",
		worth: 65,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Lucky Coin"){ return {
		nam: i,
		canWear: true,
		wearEffect: "Gold Find",
		desc: "Find more coins",
		spell: "",
		worth: 125,
		breakChance: 0,
		breakMessage: "has broken",
	}; }
	
	if(i == "Mage Staff"){ return {
		nam: i,
		canWear: true,
		wearEffect: "MP Charge",
		desc: "Regain MP over time",
		spell: "",
		worth: 65,
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