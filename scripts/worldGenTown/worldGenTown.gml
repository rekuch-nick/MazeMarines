function worldGenTown(z){
	
	for(var a=0; a<17; a++){
		bmap[z][a, 0] = imgBlock01; 
		bmap[z][a, 12] = imgBlock01; 
		if(a < 8){ bmap[z][a, 5] = imgBlock01; }
		if(a < 8){ bmap[z][a, 11] = imgBlock01; }
		if(a > 3 && a < 7){ bmap[z][a, 10] = imgBlock01; }
		if(a > 10){ bmap[z][a, 8] = imgBlock01; }
		if(a % 2 == 0 && a != 8 && a != 10 ){ bmap[z][a, 2] = imgBlock01; }
		if(a > 10){ bmap[z][a, 4] = imgBlock01; }
		if(a < 7){ bmap[z][a, 4] = imgBlock01; }
		if(a > 8 && a % 2 == 0){ bmap[z][a, 7] = imgBlock01; }
	}
	for(var b=0; b<13; b++){
		bmap[z][0, b] = imgBlock01; 
		bmap[z][16, b] = imgBlock01; 
	}
	
	bmap[z][10, 8] = imgHousesChurch;
	fmap[z][10, 9] = imgFloorChurch;
	
	bmap[z][1, 6] = imgBlock01; bmap[z][2, 6] = imgBlock01;
	bmap[z][3, 6] = imgHousesTower;
	fmap[z][3, 7] = imgFloorTower;
			
	bmap[z][0, 3] = noone;
	for(var a=0; a<9; a++){ fmap[z][a, 3] = imgRoadH; }
	for(var a=4; a<9; a++){ fmap[z][a, 6] = imgRoadH; }
	for(var b=4; b<6; b++){ fmap[z][9, b] = imgRoadV; }
	fmap[z][9, 3] = imgRoad23;
	fmap[z][9, 6] = imgRoad34;
			
	fmap[z][9, 2] = imgFloorKey;
	bmap[z][9, 1] = imgHouseKey; bmap[z][8, 1] = imgBlock01; bmap[z][10, 1] = imgBlock01;
			
	bmap[z][14, 0] = imgHousesGrave; bmap[z][15, 0] = imgHousesGrave; bmap[z][16, 0] = imgHousesGrave;
	bmap[z][13, 1] = imgBlock01; bmap[z][14, 1] = imgHousesGrave; bmap[z][15, 1] = imgHousesRez; bmap[z][16, 1] = imgHousesGrave;
	bmap[z][16, 2] = imgHousesGrave; fmap[z][15, 2] = imgFloorGrave;
			
	bmap[z][1][0] = imgHousesAdvice; fmap[z][1][1] = imgFloorAdv1;
	bmap[z][3][0] = imgHousesAdvice; fmap[z][3][1] = imgFloorAdv2;
	bmap[z][5][0] = imgHousesAdvice; fmap[z][5][1] = imgFloorAdv3;
	bmap[z][7][0] = imgHousesAdvice; fmap[z][7][1] = imgFloorAdv4;
			
	bmap[z][12][0] = imgHousesRiddle; fmap[z][12][1] = imgFloorRid;
			
	bmap[z][8, 4] = imgHouseShop; bmap[z][7, 4] = imgBlock01;
	fmap[z][8, 5] = imgFloorShop;
	
	bmap[z][10, 6] = imgBlock01;
	
	bmap[z][12, 4] = imgHousesAdvice;
	fmap[z][12, 5] = imgFloorAdv5;
			
	worldGenReplaceBlock(z, imgBlock01, imgHouses04, 4);
	worldGenReplaceBlock(z, imgBlock01, imgHouses03, 10);
	worldGenReplaceBlock(z, imgBlock01, imgHouses02, 20);
	worldGenReplaceBlockAll(z, imgBlock01, imgHouses);

}