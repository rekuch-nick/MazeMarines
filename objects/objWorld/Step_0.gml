if(instance_number(objScreen) > 0){ return; }


if(rollWorld){
	worldGen();
	rollWorld = false;
	return;
}