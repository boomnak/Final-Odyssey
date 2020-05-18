if (obj_spaceShip.pauseGame == false){
	if (actualTime >= 60){				//checks to see if a minute has passed
	
		actualTime = 0;								
		gameTime++;									
	}


	actualTime += delta_time/1000000;
}