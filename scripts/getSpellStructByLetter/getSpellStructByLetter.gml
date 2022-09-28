function getSpellStructByLetter(c, arr){
	if(arr[0] == noone){ return noone; }
	for(var i=0; i<array_length(arr); i++){
		if(arr[i].hotKey == c){
			return arr[i];
		}
	}
	return noone;
}