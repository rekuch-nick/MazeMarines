function stringCharsAt(s, i, num){
	if(i + num >= string_length(s)){ return ""; }
	var ss = "";
	for(var j=0; j<num; j++){
		ss += string_char_at(s, i + j);
	}
	return ss;
}