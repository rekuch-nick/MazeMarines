function createMenu(promptText, oType, positionNote, oHotkey, oText, oAction, oPrice){
	
	var xx = 32;
	var yy = 32;
	
	
	var menu = instance_create_depth(xx, yy, -8999, objMenu);
	menu.promptText = promptText;
	menu.asker = id;
	menu.optionsType = oType;
	menu.optionsText = oText;
	menu.optionsAction = oAction;
	menu.optionsType = oType;
	menu.hotkeyType = oHotkey;
	menu.cost = oPrice;
	
	if(positionNote == "down1"){ menu.yp = 3*64; }
	if(positionNote == "left"){ menu.xp2 = 64*8 + 32; }
	if(positionNote == "small"){ menu.xp2 = 64*6 + 32; menu.yp2 = 64*2 + 32; }
	
}