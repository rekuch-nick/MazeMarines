draw_rectangle_color(x, y, x+300, y+80, c_navy, c_black, c_black, c_navy, false);

draw_sprite_stretched(imgCoin, 0, x, y, 40, 40);
draw_text(x+38, y+10, pc.coins);

draw_sprite_stretched(pc.bombType, 0, x+140, y, 40, 40);
draw_text(x+178, y+10, pc.bombs);

draw_sprite_stretched(imgKey, 0, x+220, y, 40, 40);
draw_text(x+258, y+10, pc.keys);


draw_sprite_stretched(pc.boatType, 0, x+220, y+40, 40, 40);
draw_text(x+258, y+50, pc.boats);

draw_sprite_stretched(pc.pickType, 0, x+140, y+40, 40, 40);
draw_text(x+178, y+50, pc.picks);

draw_sprite_stretched(pc.medkitType, 0, x+60, y+40, 40, 40);
draw_text(x+98, y+50, pc.medkits);