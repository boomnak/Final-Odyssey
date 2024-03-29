if (!pauseGame){
	
	//main game loop which computes the expenditure of resources
	if (alarm[0] == -1){				
		alarm[0] = room_speed;
	}else if (alarm[0] == 0){
		
		//when the ship is moving towards an object
		if (!planetExtract and (shipFuel >= (shipSpeed * shipSpeed) > 0)){
			nextObj -= shipSpeed;			
			shipFuel -= shipSpeed * shipSpeed; 
			
			curSpeed = shipSpeed;
			movObj = true;
		}
		
		//calculates the distance from the calamity
		calamityDistance += (shipSpeed - obj_calamity.calamitySpeed);
		
		//checks if you've run out of fuel
		if (shipFuel <= 0){
			shipSpeed = 0;
		}else if (shipFuel < (shipSpeed * shipSpeed)){
			shipSpeed = floor(sqrt(shipFuel));
			
			if (shipSpeed == 0 ){shipSpeed = 1;}
		}
		
		//checks if you've reached the object
		if (nextObj <= 0){	
			shipSpeed = 0;
			planetExtract = true;
		}else if(shipSpeed > nextObj){
			shipSpeed = nextObj;
		}
	}
	
	calScale = alarm[0];
	
	//when you reach the designated object, you enter the resource extracting state
	if (planetExtract){
		
		//creates the information box which tells you the amount of resources left on the object
		if (!layersCreated){
			
			temp[1] = instance_create_layer(display_get_gui_width()/1.45, display_get_gui_height()/5, "instances", obj_msgBOX);
			temp[0] = instance_create_layer(obj_msgBOX.x, obj_msgBOX.y / obj_msgBOX.scale_by, "instances", obj_leaveBTN);
			
			layersCreated = true;
		}
		
		//if you are done extracting resources it destroys the info box and button 
		if (mouse_check_button_pressed(mb_left)){
			if (collision_point(mouse_x, mouse_y, obj_leaveBTN, false, true)){
				
				instance_destroy(temp[0], true);
				instance_destroy(temp[1], true);
				
				planetExtract = false;
				layersCreated = false;
				
				totalCrew += (extractFuel + extractFood + extractShipParts);
				curCrew = totalCrew;
				
				extractFood = 0;
				extractFuel = 0;
				extractShipParts = 0;
				curPos = 0;			//keeps position of button array
				
				shipSpeed = 1;
			}
		}
		
		if (!pauseGame){
			//the planet extracting operations which are timed based on the number of crew members
			if (alarm[2] == -1){
				alarm[2] = room_speed / 2;
			}else if (alarm[2] == 0){
			
				//extracts based on objects limited resources
				if (instance_exists(obj_planet)){		
					if (foodStorage <= (foodBox - extractFood)){	
						if (obj_planet.planetFood >= extractFood){ 
							obj_planet.planetFood -= extractFood;
							foodStorage += extractFood;
						}else if (obj_planet.planetFood > 0){
							totalCrew += extractFood - obj_planet.planetFood;
							extractFood = obj_planet.planetFood;
							obj_planet.planetFood = 0;
							foodStorage += extractFood;
						}else {
							totalCrew += extractFood;
							extractFood = 0;
						}
					}else if (foodStorage > (foodBox - extractFood) and foodStorage < foodBox){
					
						totalCrew += extractFood;
					
						if (obj_planet.planetFood >= (foodBox - foodStorage)){
							extractFood = foodBox - foodStorage;
							obj_planet.planetFood -= extractFood;
							totalCrew -= extractFood;
							foodStorage += extractFood;
						}else if (obj_planet.planetFood > 0){
							extractFood = obj_planet.planetFood;
							obj_planet.planetFood = 0;
							totalCrew -= extractFood;
							foodStorage += extractFood;
						}else {
							totalCrew += extractFood;
							extractFood = 0;
						}		
					}else {
						totalCrew += extractFood;
						extractFood = 0;
					}
				
					if (shipFuel <= (fuelTank - extractFuel)){	
						if (obj_planet.planetFuel >= extractFuel){ 
							obj_planet.planetFuel -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_planet.planetFuel > 0){
							totalCrew += extractFuel - obj_planet.planetFuel;
							extractFuel = obj_planet.planetFuel;
							obj_planet.planetFuel = 0;
							shipFuel += extractFuel;
						}else {
							totalCrew += extractFuel;
							extractFuel = 0;
						}
					}else if (shipFuel > (fuelTank - extractFuel) and shipFuel < fuelTank){
						
						totalCrew += extractFuel;
					
						if (obj_planet.planetFuel >= (fuelTank - shipFuel)){
							extractFuel = fuelTank - shipFuel;
							obj_planet.planetFuel -= extractFuel;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_planet.planetFuel > 0){
							extractFuel = obj_planet.planetFuel;
							obj_planet.planetFuel = 0;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else {
							totalCrew += extractFuel;
							extractFuel = 0;
						}
					}else {
						totalCrew += extractFuel;
						extractFuel = 0;
					}
				
					if (shipParts <= (500 - extractShipParts)){	
						if (obj_planet.planetParts >= extractShipParts){ 
							obj_planet.planetParts -= extractShipParts;
							shipParts += extractShipParts;
						}else if (obj_planet.planetParts > 0){
							totalCrew += extractShipParts - obj_planet.planetParts;
							extractShipParts = obj_planet.planetParts;
							obj_planet.planetParts = 0;
							shipParts += extractShipParts;
						}else {
							totalCrew += extractShipParts;
							extractShipParts = 0;
						}
					}else if (shipParts > (500 - extractShipParts) and shipParts < 500){
					
						totalCrew += extractShipParts;
					
						if (obj_planet.planetParts >= (500 - shipParts)){
							extractShipParts = 500 - shipParts;
							obj_planet.planetParts -= extractShipParts;
							totalCrew -= extractShipParts;
							shipParts += extractShipParts;
						}else if (obj_planet.planetParts > 0){
							extractShipParts = obj_planet.planetParts;
							obj_planet.planetParts = 0;
							totalCrew -= extractShipParts;
							shipParts += extractShipParts;
						}else {
							totalCrew += extractShipParts;
							extractShipParts = 0;
						}		
					}else {
						totalCrew += extractShipParts;
						extractShipParts = 0;
					}
				
						//alien attack scenario
					if (irandom_range(0, 100) == 1){
						if (extractFuel > 0){
							extractFuel = scr_event("alien", extractFuel);
						}else if (extractFood > 0){
							extractFood = scr_event("alien", extractFood);
						}else if (extractShipParts > 0){
							extractShipParts = scr_event("alien", extractShipParts);
						}
					}else if (irandom_range(0, 50) == 1){		//crew recruitment event
						if (extractFood > 0 or extractFuel > 0 or extractShipParts > 0){
							scr_event("crew", 1);
						}
					}
				}else if (instance_exists(obj_asteroid)){
					if (shipFuel <= (fuelTank - extractFuel)){	
						if (obj_asteroid.asteroidFuel >= extractFuel){ 
							obj_asteroid.asteroidFuel -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_asteroid.asteroidFuel > 0){
							totalCrew += extractFuel - obj_asteroid.asteroidFuel;
							extractFuel = obj_asteroid.asteroidFuel;
							obj_asteroid.asteroidFuel = 0;
							shipFuel += extractFuel;
						}else{
							totalCrew += extractFuel;
							extractFuel = 0;
						}
					}else if (shipFuel > (fuelTank - extractFuel) and shipFuel < fuelTank){
						
						totalCrew += extractFuel;
					
						if (obj_asteroid.asteroidFuel >= (fuelTank - shipFuel)){
							extractFuel = fuelTank - shipFuel;
							obj_asteroid.asteroidFuel -= extractFuel;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_asteroid.asteroidFuel > 0){
							extractFuel = obj_asteroid.asteroidFuel;
							obj_asteroid.asteroidFuel = 0;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else {
							totalCrew += extractFuel;
							extractFuel = 0;
						}		
					}else {
						totalCrew += extractFuel;
						extractFuel = 0;
					}
					
					if (shipParts <= (500 - extractShipParts)){	
						if (obj_asteroid.asteroidParts >= extractShipParts){ 
							obj_asteroid.asteroidParts -= extractShipParts;
							shipParts += extractShipParts;
						}else if (obj_asteroid.asteroidParts > 0){
							totalCrew += extractShipParts - obj_asteroid.asteroidParts;
							extractShipParts = obj_asteroid.asteroidParts;
							obj_asteroid.asteroidParts = 0;
							shipParts += extractShipParts;
						}else {
							totalCrew += extractShipParts;
							extractShipParts = 0;
						}
					}else if (shipParts > (500 - extractShipParts) and shipParts < 500){
					
						totalCrew += extractShipParts;
					
						if (obj_asteroid.asteroidParts >= (500 - shipParts)){
							extractShipParts = 500 - shipParts;
							obj_asteroid.asteroidParts -= extractShipParts;
							totalCrew -= extractShipParts;
							shipParts += extractShipParts;
						}else if (obj_asteroid.asteroidParts > 0){
							extractShipParts = obj_asteroid.asteroidParts;
							obj_asteroid.asteroidParts = 0;
							totalCrew -= extractShipParts;
							shipParts += extractShipParts;
						}else {
							totalCrew += extractShipParts;
							extractShipParts = 0;
						}		
					}else {
						totalCrew += extractShipParts;
						extractShipParts = 0;
					}
				
					if (extractFuel > 0 and irandom_range(0, 100) == 1){
						extractFuel = scr_event("mine", extractFuel);
					}
				}else if (instance_exists(obj_star)){
					if (shipFuel <= (fuelTank - extractFuel)){	
						if (obj_star.starFuel >= extractFuel){ 
							obj_star.starFuel -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_star.starFuel > 0){
							totalCrew += extractFuel - obj_star.starFuel;
							extractFuel = obj_star.starFuel;
							obj_star.starFuel = 0;
							shipFuel += extractFuel;
						}else {
							totalCrew += extractFuel;
							extractFuel = 0;
						}
					}else if (shipFuel > (fuelTank - extractFuel) and shipFuel < fuelTank){
						
						totalCrew += extractFuel;
					
						if (obj_star.starFuel >= (fuelTank - shipFuel)){
							extractFuel = fuelTank - shipFuel;
							obj_star.starFuel -= extractFuel;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else if (obj_star.starFuel > 0){
							extractFuel = obj_star.starFuel;
							obj_star.starFuel = 0;
							totalCrew -= extractFuel;
							shipFuel += extractFuel;
						}else {
							totalCrew += extractFuel;
							extractFuel = 0;
						}		
					}else {
						totalCrew += extractFuel;
						extractFuel = 0;
					}
			
					if (irandom_range(0, 100) == 1 and extractFuel > 0){
						extractFuel = scr_event("environment", extractFuel);
					}
				}
		
				//these checks are to ensure you don't go over the variable caps
				if (foodStorage > foodBox ){
					foodStorage = foodBox;
				}
		
				if (shipFuel > fuelTank){
					shipFuel = fuelTank;
				}
			}
		}
	}
	
	//hunger goes up for each crew member every 5 seconds
	if (alarm[1] == -1){				
		alarm[1] = room_speed * 5;
	}else if (alarm[1] == 0){	
		foodStorage -= curCrew;		
	}

	//checks for game over scenarios
	if (foodStorage <= 0 or calamityDistance <= 0 or ((totalCrew + extractFood + extractFuel + extractShipParts) <= 0)){
		//output game over and total days survived
		//reset all objects and values
		room_goto(rm_gameOver);
	}
}else if (nextObj <= 0 and !planetExtract and pauseGame){
	
	//creates the randomized objects for you to travel to next
	if (objArr[2] == 0){		
		for (i=0;i < 3;i++){
			objArr[i] = scr_generateObject(objCreate[random_range(0, 3)], display_get_gui_width()/objPlace[i], display_get_gui_height()/2);
			objDistance[i] = irandom_range(5, 25);	
		}			
		
	//user selects next object destination, then the other objects are destroyed 
	}else if (mouse_check_button_pressed(mb_left) and !instance_exists(obj_shipUpgradeMenu) and !instance_exists(obj_optionsMenu)){
		if (collision_point(mouse_x, mouse_y, objArr[0], false, true)){      
            
			nextObj = objDistance[0];            
            
            instance_destroy(objArr[1], true);
            instance_destroy(objArr[2], true);       
            
            objArr[2] = 0;                      
            pauseGame = false;                    
        }else if (collision_point(mouse_x, mouse_y, objArr[1], false, true)){
            
            nextObj = objDistance[1];
            
            instance_destroy(objArr[0], true);
            instance_destroy(objArr[2], true);
            
            objArr[2] = 0;
            pauseGame = false;
        }else if (collision_point(mouse_x, mouse_y, objArr[2], false, true)){
            
            nextObj = objDistance[2];
            
            instance_destroy(objArr[0], true);
            instance_destroy(objArr[1], true);
            
            objArr[2] = 0;
            pauseGame = false;
        }
		
		//sets the inital distance for other objects to interact with
		initDist = nextObj;
    }
}