depth = -100;
needtoUpgrade = 50 + (50 * ((obj_spaceShip.fuelTank - 100)/50));

if (needtoUpgrade >= 500){
	needtoUpgrade = 500;
}