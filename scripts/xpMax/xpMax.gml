function xpMax(l){
	var n = 500; // + ((l - 1) * 200);
	//if(l <= 5){ n += (l - 1) * 200; }
	for(var i=1; i<l; i++){
		n = ceil(n * 1.5);
	}
	return n;
}