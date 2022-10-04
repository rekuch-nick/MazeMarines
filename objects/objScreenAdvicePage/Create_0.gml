image_xscale = 4; image_yscale = 4;
msg = "";

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorRid){
	if(playerNeedsKeyItem("Silver Circle")){
		answer = "";
		if(ww.riddle == 1){ msg = "I have many keys, but can't open a single lock."; answer = "Piano";}
		if(ww.riddle == 2){ msg = "I am more useful when broken."; answer = "Egg";}
		if(ww.riddle == 3){ msg = "I am full of holes but I can still hold water."; answer = "Sponge";}
		if(ww.riddle == 4){ msg = "I'm tall when I'm young and I'm short when I'm old. Thin, I am quick. Fat, I am slow."; answer = "Candle";}
		if(ww.riddle == 5){ msg = "I'm not clothes but I cover your body; The more I'm used, the thinner I grow."; answer = "Bar of Soap";}
		if(ww.riddle == 6){ msg = "According to me, today comes before yesterday."; answer = "Dictionary";}
		if(ww.riddle == 7){ msg = "I have one head, one foot and four legs."; answer = "Bed";}
		if(ww.riddle == 8){ msg = "I have 13 hearts, but no skin."; answer = "Deck of Cards";}
		if(ww.riddle == 9){ msg = "I have lakes with no water, mountains with no stone and cities with no buildings."; answer = "Map";}
		
		solved = false;
		
		
		if(playerHasItem(answer)){ solved = true; }
		
		if(!solved){
			msg += "\n\nWhat am I?";
		} else {
			msg += "\n\nHahaha, you're right, it's "+answer+"!\n\nHere, you'll need this to get past the 10th floor.\n\nReceived Silver Circle!"
			playerLoseItem(answer);
			playerGainItem("Silver Circle")
		}
		
		msg = stringInsertBreaks(msg, 45);
		
		
	} else {
		msg = "Always nice to talk to another riddle lover.";
	}
} // end of floor rid



if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv4){
	msg = "Press I to open your inventory. You probably have a written copy of your orders in there which could be useful, or at least worth a buck.\n\n";
	msg += "Some items can be used or equipped, just press enter to try... but watch out, items with really good on-use effects tend to break easily.\n\n";
	msg += "Don't worry, equipment doesn't break unless you fall into a REALLY nasty trap.";
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv3){
	msg = "You can select a team member by pressing number keys. Outside of combat, this will let you view stats and levels.\n\n";
	msg += "If the character knows any spells, you'll be able to cast one by pressing the first letter of its name while the unit is selected.\n\n";
	msg += "In-combat and out-of-combat spells lists are entirely different, and you'll only see one kind or the other depending on if you're in a fight.\n\n";
	msg += "Sometimes you'll learn a new spell when leveling up, so be sure to check both lists often.";
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv2){
	msg = "The damage you deal improves with the character's level, like you might expect.\n\n";
	msg += "When you change into a new class, your level will reset to 1; you might have been a level 20 Rookie, but your first day as a Sniper you'll be doing the same low damage as any other beginner.\n\n";
	msg += "So why change classes at all? Well, you get to keep your HP, MP, LP, spells known, and Mastery Abilities. Plus, all the best classes require levels in others to unlock.";
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv1){
	msg = "Sometimes you'll notice a little letter next to one of your character's HP / MP / XP bars. That means they are affected by a buff or debuff!\n\n";
	msg += "Debuffs are a solid color, and bad for you. Buffs are a blended color and helpful. I'll explain a few of the debuffs now:\n\n";
	msg += "B : Unit is Bleeding, will lose 1 hp instead of healing every few steps. Lasts until cured.\n\n";
	msg += "P : Unit is Poisoned, will lose 5% hp instead of healing every few steps. Lasts until cured.\n\n";
	msg += "M : Unit is Muted, cannot cast any spells. Lasts for a while then goes away.\n\n";
	msg += "S : Unit is Stunned, cannot attack. Lasts for a while then goes away.\n\n";
	msg += "Also keep an eye out for a * in that same area, it means you're qualified to learn a new spell. Head to the spell tower anytime you see it!\n\n";
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv5){
	msg = "Can you believe the shopkeeper doesn't tell you what items will do before you buy them? What a jerk! I can tell you about a few of them.\n\n";
	msg += "Lantern casts LIGHT with a 50% break chance.\n\n";
	msg += "Bug Spray casts REPEL with a 20% break chance.\n\n";
	msg += "Healing Potion casts CURE with a 33% break chance.\n\n";
	msg += "Portable Hole is PHASE DOOR with a 33% break chance.\n\n";
	msg += "You say you want to know what those spells do?\n\n";
	msg += "No way buddy, I don't have all day to stand around talking with you.\n\n";
	
	msg = stringInsertBreaks(msg, 45);
}




if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv9){
	msg = "There's a lot of good information to be learned by talking to the townsfolk.\n\n";
	msg += "But it is kind of boring.\n\n";
	msg += "Don't feel like you need to read everything right away, it's totally fine to head down the stairs and just see what's up.\n\n";
	msg += "Worst case senerio, you get knocked out and a rescue team drags you back to the surface. Of course, they will surely take any gold they happen to find, but it isn't that big of a deal. Healing at the church is free, after all.\n\n";
	msg += "Good luck, have fun!\n\n";
	
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv6){
	msg = "Hidden in normal looking red treasure chests, there are a few very special items. If you find a red BOMB, orange RAFT, blue MEDKIT, or golden HARROW, every one of those items you use from then on will be upgraded.\n\n";
	msg += "Rare stone slabs grant you the ability to teleport from a higher floor down into the floor they were found on.\n\n";
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv7){
	msg = "Getting sick of long walks through the mazes? Once you become powerful enough, you can find items to teleport you deep into the dungeon below.\n\n";
	msg += "Of course, they won't help you come back up, but that isn't going to stop someone like you, is it?\n\n";
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv8){
	msg = "Harrow kits are digging equipment with shovels, picks, etc. They are incredibly useful!\n\n";
	msg += "Don't be afraid to try them out anywhere. Not only will they destroy dangerous traps, but they won't ever destroy important tiles like door switches or stairs.\n\n";
	msg += "Apparently there's even a few treasures you can only find by digging in exactly the right spot... but I wouldn't know anything about where they are.\n\n";
	msg += "Harrowing isn't your only option for traps though. Most of them besides spikes will only trigger a limited number of times. You could always just step on a few then run back up to town to heal. It's slow and painful, but works."
	
	msg = stringInsertBreaks(msg, 45);
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv10){
	msg = "Every character class has its own limit break. Limit breaks are powerful moves that are used automatically once they charge up all the way.\n\n";
	msg += "Different classes will have very different charge times on these abilities- for example, the Medic's healing limit break happens very often. Conversly, the Heavy's berserk ability takes several times as long to charge as that.\n\n";
	msg += "Your LP stat will SLIGHTLY speed up limit break charing, but keep in mind that your class will have a much larger impact on its charge time.\n\n";
	msg += "Open your status screen (by pressing a # while exploring) to review the details where you can see the average amount of seconds each limit will take.\n\n";
	
	msg = stringInsertBreaks(msg, 45);
}




