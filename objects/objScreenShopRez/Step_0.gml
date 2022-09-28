


if(arrowPressed() != noone || keyboard_check_pressed(vk_enter) || letterPressed() == "N" || keyboard_check_pressed(vk_escape)){
	instance_destroy();
}





phase = "no";
ded = 0;
for(var i=0; i<6; i++){
	if(pc.party[i] != noone && pc.party[i].hp < 1){
		ded ++;
		phase = "need";
	}
}
if(ded > 1){ phase = "needMore"; }


if(letterPressed() == "Y" && pc.coins >= price){
	pc.coins -= price;
	for(var i=0; i<6; i++){
		if(pc.party[i] != noone && pc.party[i].hp < 1){
			pc.party[i].hp = 1;
			pc.party[i].bleed = 0;
			pc.party[i].poison = 0;
		}
	}
	instance_destroy();
}