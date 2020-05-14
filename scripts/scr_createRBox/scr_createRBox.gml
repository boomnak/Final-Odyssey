instance_create_layer(argument0, argument1, "instances", obj_resourceBox);

obj_spaceShip.btnArr[obj_spaceShip.curPos] =  instance_create_layer(argument0+
(sprite_get_width(spr_resourceBox)*obj_resourceBox.scale_by)-(47*obj_resourceBox.scale_by),
argument1, "instances", obj_leftBTN);

obj_spaceShip.btnArr[obj_spaceShip.curPos + 1] = instance_create_layer(argument0+
(sprite_get_width(spr_resourceBox)*obj_resourceBox.scale_by),
argument1, "instances", obj_rightBTN);

obj_spaceShip.curPos += 2;