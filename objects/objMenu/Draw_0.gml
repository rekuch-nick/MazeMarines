if(firstFrame){ return; }
if(sprite_index == sptBlank){
	draw_rectangle_color(x, y, xp2, yp2, bgColor2, bgColor2, bgColor2, bgColor2, false);
	draw_rectangle_color(x+10, y+10, xp2-10, yp2-10, bgColor, bgColor, bgColor, bgColor, false);
} else {
	draw_sprite_stretched(sprite_index, image_index, x, y, xp2, yp2);
}


draw_text(x + 32, y + 32, promptText);

for(var i=0; i<=cursorMax; i++){
	var s = optionsText[i];
	var c = c_white;
	if(!canDo[i]){ c = c_grey; }
	draw_text_color(x + 72, y + 64 + i*22 + promptLines*22, s, c, c, c, c, 1);
	if(c == c_white){ if(hotkeyType == "y/n" || hotkeyType == "spell" || hotkeyType == "number"){
		draw_text_color(x + 72, y + 64 + i*22 + promptLines*22, string_char_at(s, 0), c_yellow, c_yellow, c_yellow, c_yellow, 1);
	}}
}

//draw_sprite_stretched(imgCursor, 0, x+16, y+ 64 + cursor*22 + 1, 30, 20);
draw_text(x + 16, y + 64 + cursor*22 + promptLines*22, ">>>");
