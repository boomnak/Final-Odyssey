if (obj_spaceShip.pauseGame == false){
	if (actualTime >= 60){				//checks to see if a minute has passed
	
		actualTime = 0;								
		gameTime++;	
		
		if (gameTime == 5*achievement and gameTime/5 <= 10){
			ini_open("save.ini");
			if (ini_read_real("save", "stars", 0) < gameTime/5){
		 		ini_write_real("save", "stars", gameTime/5);
			}
			ini_close();
			
			achievement++;
		}
	}


	actualTime += delta_time/1000000;
}