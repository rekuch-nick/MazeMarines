function worldGenTown(z){
	
	 tm[0] = "11111111111111111";
	 tm[1] = "1.1.1...111..1..1";
	 tm[2] = "1......11.....1.1";
	 tm[3] = "................1";
	 tm[4] = "111111111..111111";
	 tm[5] = "11111.11......111";
	 tm[6] = "111.......1.....1";
	 tm[7] = "1.........1.....1";
	 tm[8] = "111111.....111111";
	 tm[9] = "1.1.1..1...11...1";
	tm[10] = "1.....11........1";
	tm[11] = "11...11.........1";
	tm[12] = "11111111111111111";
	
	worldGenBlocksFromMap(z, tm);
	
	
	bmap[z][10, 8] = imgHousesChurch; fmap[z][10, 9] = imgFloorChurch;
	

	bmap[z][3, 5] = imgHousesTower; fmap[z][3, 6] = imgFloorTower;
			
	
	for(var a=0; a<9; a++){ fmap[z][a, 3] = imgRoadH; }
	for(var a=4; a<9; a++){ fmap[z][a, 6] = imgRoadH; }
	for(var b=4; b<6; b++){ fmap[z][9, b] = imgRoadV; }
	fmap[z][9, 3] = imgRoad23;
	fmap[z][9, 6] = imgRoad34;
	
	
	fmap[z][9, 2] = imgFloorKey; bmap[z][9, 1] = imgHouseKey; 
			
	bmap[z][14, 0] = imgHousesGrave; bmap[z][15, 0] = imgHousesGrave; bmap[z][16, 0] = imgHousesGrave;
	bmap[z][13, 1] = imgBlock01; bmap[z][14, 1] = imgHousesGrave; bmap[z][15, 1] = imgHousesRez; bmap[z][16, 1] = imgHousesGrave;
	bmap[z][16, 2] = imgHousesGrave; fmap[z][15, 2] = imgFloorGrave;
			
	bmap[z][1][0] = imgHousesAdvice; fmap[z][1][1] = imgFloorAdv1;
	bmap[z][3][0] = imgHousesAdvice3; fmap[z][3][1] = imgFloorAdv2;
	bmap[z][5][0] = imgHousesAdvice2; fmap[z][5][1] = imgFloorAdv3;
	bmap[z][7][0] = imgHousesAdvice; fmap[z][7][1] = imgFloorAdv4;
			
	bmap[z][12][0] = imgHousesRiddle; fmap[z][12][1] = imgFloorRid;
			
	bmap[z][8, 4] = imgHouseShop; fmap[z][8, 5] = imgFloorShop;
	
	
	bmap[z][12, 4] = imgHousesAdvice; fmap[z][12, 5] = imgFloorAdv5;
	
	bmap[z][5, 4] = imgHousesAdvice; fmap[z][5, 5] = imgFloorAdv6; //
	bmap[z][1, 9] = imgHousesAdvice2; fmap[z][1, 10] = imgFloorAdv7; //
	bmap[z][3, 9] = imgHousesAdvice; fmap[z][3, 10] = imgFloorAdv8; //
	bmap[z][7, 10] = imgHousesAdvice3; fmap[z][7, 11] = imgFloorAdv9; //
	bmap[z][15, 5] = imgHousesAdvice2; fmap[z][15, 6] = imgFloorAdv10; //
	
	//bmap[z][1, 7] = imgHousesWell; fmap[z][2, 7] = imgFloorAdv7; //
			
	worldGenReplaceBlock(z, imgBlock01, imgHouses04, 4);
	worldGenReplaceBlock(z, imgBlock01, imgHouses03, 10);
	worldGenReplaceBlock(z, imgBlock01, imgHouses02, 20);
	worldGenReplaceBlockAll(z, imgBlock01, imgHouses);

}