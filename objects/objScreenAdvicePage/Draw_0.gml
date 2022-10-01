draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, 1);
if(msg != ""){
	draw_text(40, 40, msg);
}

//draw_text(40, 40, "I can forge a key for you.");
//draw_text(40, 62, "What do you say, " + string(keyPrice) + " coins?");
//draw_text(40, 106, "Y / N");


if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv4){
	draw_text(40, 40, "Press I to open or close your inventory.");
	draw_text(40, 65, "You probably have a written copy of your orders in");
	draw_text(40, 90, "there, could be useful, or at least worth a buck.");
	
	draw_text(40, 140, "Some items can be used or equipped, just press enter");
	draw_text(40, 165, "to try... but watch out, items with really good on-use");
	draw_text(40, 190, "effects tend to break easily.");
	
	draw_text(40, 240, "Don't worry, equipment doesn't break unless you fall");
	draw_text(40, 265, "into a REALLY nasty trap.");
	
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv3){
	draw_text(40, 40, "You can select a team member by pressing number");
	draw_text(40, 65, "keys. Outside of combat, this will let you view");
	draw_text(40, 90, "stats and levels.");
	
	draw_text(40, 140, "If the character knows any spells, you'll be able to");
	draw_text(40, 165, "cast one by pressing the first letter of its name");
	draw_text(40, 190, "while the unit is selected.");
	
	draw_text(40, 240, "In-combat and out-of-combat spells are entirely");
	draw_text(40, 265, "different lists, and you'll only see one kind or");
	draw_text(40, 290, "the other depending on if you're in a fight.");
	
	draw_text(40, 340, "Sometimes you'll learn a new spell when leveling up,");
	draw_text(40, 365, "so be sure to check the lists often.");
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv2){
	draw_text(40, 40, "The damage you deal improves with the character's");
	draw_text(40, 65, "level, like you might expect.");
	draw_text(40, 90, "");
	draw_text(40, 115, "When you change into a new class, your level will");
	draw_text(40, 140, "reset to 1; you might have been a level 20 Rookie,");
	draw_text(40, 165, "but your first day as a Sniper you'll be doing the");
	draw_text(40, 190, "same low damage as any other beginner.");
	draw_text(40, 215, "");
	draw_text(40, 240, "So why change classes at all?");
	draw_text(40, 265, "Well, you get to keep your HP, MP, LP, spells");
	draw_text(40, 290, "known, and Mastery Abilities. Plus, all the");
	draw_text(40, 315, "best classes require levels in others to unlock.");
	draw_text(40, 340, "");
	draw_text(40, 365, "");
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv1){
	draw_text(40, 40, "Sometimes you'll notice a little letter next to");
	draw_text(40, 65, "one of your character's HP / MP / XP bars.");
	draw_text(40, 90, "");
	draw_text(40, 115, "That means they are affected by a buff or debuff!");
	draw_text(40, 140, "");
	draw_text(40, 165, "Debuffs are a solid color, and bad for you. Buffs");
	draw_text(40, 190, "are a blended color and helpful.");
	draw_text(40, 215, "");
	draw_text(40, 240, "I'll explain a few of the debuffs now:");
	draw_text(40, 265, "");
	draw_text(40, 290, "B : Unit is Bleeding, will lose 1 hp instead of");
	draw_text(40, 315, "healing every few steps. Lasts until cured.");
	draw_text(40, 340, "");
	draw_text(40, 365, "P : Unit is Poisoned, will lose 5% hp instead of");
	draw_text(40, 390, "healing every few steps. Lasts until cured.");
	draw_text(40, 415, "");
	draw_text(40, 440, "M : Unit is Muted, cannot cast any spells. Lasts");
	draw_text(40, 465, "for a while then goes away.");
	draw_text(40, 490, "");
	draw_text(40, 515, "S : Unit is Stunned, cannot attack. Lasts");
	draw_text(40, 540, "for a while then goes away.");
}

if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorAdv5){
	draw_text(40, 40, "Can you believe the shopkeeper doesn't tell");
	draw_text(40, 65, "you what items will do before you buy them?");
	draw_text(40, 90, "What a jerk! I can tell you about a few of them.");
	draw_text(40, 115, "");
	draw_text(40, 140, "Lantern casts LIGHT with a 50% break chance.");
	draw_text(40, 165, "Bug Spray casts REPEL with a 20% break chance.");
	draw_text(40, 190, "Bezoar casts ANTIVENOM+ with a 50% break chance.");
	draw_text(40, 215, "Portable Hole is PHASE DOOR with a 33% break chance.");
	draw_text(40, 240, "");
	draw_text(40, 265, "You say you want to know what those spells do?");
	draw_text(40, 290, "");
	draw_text(40, 315, "No way buddy, I don't have all day to stand around");
	draw_text(40, 340, "talking with you.");
	//draw_text(40, 365, "P : Unit is Poisoned, will lose 5% hp instead of");
	//draw_text(40, 390, "healing every few steps. Lasts until cured.");
	//draw_text(40, 415, "");
	//draw_text(40, 440, "M : Unit is Muted, cannot cast any spells. Lasts");
	//draw_text(40, 465, "for a while then goes away.");
	//draw_text(40, 490, "");
	//draw_text(40, 515, "S : Unit is Stunned, cannot attack. Lasts");
	//draw_text(40, 540, "for a while then goes away.");
}




