function createMenu(promptText, oType, positionNote, oHotkey, oText, oAction, oPrice){
	
	var xx = 32;
	var yy = 32;
	
	
	var menu = instance_create_depth(xx, yy, ww.Lmnu, objMenu);
	menu.promptText = promptText;
	menu.asker = id;
	menu.optionsType = oType;
	menu.optionsText = oText;
	menu.optionsAction = oAction;
	menu.optionsType = oType;
	menu.hotkeyType = oHotkey;
	menu.cost = oPrice;
	
	if(positionNote == "down1"){ menu.yp = 3*64; }
	if(positionNote == "down2"){ menu.yp = 5*64; }
	if(positionNote == "left"){ menu.xp2 = 64*8 + 32; }
	if(positionNote == "left-"){ menu.xp2 = 64*7 + 32; menu.yp2 = 64*12 + 16; }
	if(positionNote == "small"){ menu.xp2 = 64*6 + 32; menu.yp2 = 64*2 + 32; }
	if(positionNote == "wide"){ menu.yp2 = 64*2 + 32; }
	if(positionNote == "wide+"){ menu.yp2 = 64*2 + 32; menu.yp2 = 64*3 + 32; }
	if(positionNote == "big"){ menu.xp2 = 64*21 + 32; }
	
}