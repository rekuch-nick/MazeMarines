function stringCountLines(s){
	var number = 0;
	
	for(var i=0; i<string_length(s); i++){
		//if(stringCharsAt(s, i, 2) == "\n"){ number ++; };
		if(string_char_at(s, i) == "\n"){ number ++; };
	}
	
	return number;
	
}