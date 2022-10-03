function characterGetLearnableSpells(i){
	
	
	var skA = pc.party[i].spells;
	var sk = ds_list_create();
	for(var ii=0; ii<array_length(skA); ii++){
		ds_list_add(sk, skA[ii]);
	}
	
	var srA = characterSpellsQualified(i);
	var sr = ds_list_create();
	for(var ii=0; ii<array_length(srA); ii++){
		ds_list_add(sr, srA[ii]);
	}
	
	
	while(ds_list_size(sk) > 0){
		var ii = ds_list_find_index(sr, ds_list_find_value(sk, 0));
		ds_list_delete(sk, 0);
		ds_list_delete(sr, ii);
	}
	
	deltaArray = [];
	for(var ii=0; ii<ds_list_size(sr); ii++){
		deltaArray[ii] = ds_list_find_value(sr, ii);
	}
	
	ds_list_destroy(sk);
	ds_list_destroy(sr);
	
	return deltaArray;
}