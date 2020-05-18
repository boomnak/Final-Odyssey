randomize();

fuelTank = 100
shipFuel = fuelTank;
shipSpeed =	1;
curSpeed = shipSpeed;
foodBox = 100;
foodStorage = foodBox;
calamityDistance = 100;
nextObj = 0;
shipParts = 0;

calScale = 0;

var initDist;
var objectIndex;

totalCrew = 2;
curCrew = 2;
extractFuel = 0;
extractFood = 0;
extractShipParts = 0;

pauseGame = true;
planetExtract = false;
layersCreated = false;
movObj = false;

objArr[2] = 0;
objCreate[2] = "asteroid";
objCreate[0] = "planet";
objCreate[1] = "star";

objPlace[2] = 1.5;
objPlace[0] = 3;
objPlace[1] = 2;

curPos = 0;
btnArr[5] = 0;

depth = -3;
