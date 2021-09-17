function Set_Lootable_Object(_object,_chest_ID,_container_type,_item,_gold,_script_ID = "Loot_Chest"){
	with(_object){
		chest_ID = _chest_ID;
		container_type = _container_type;
		item = _item;
		gold = _gold;
		cutscene_ID = _script_ID;
		
		if(chest_ID != -1){//non-respawnable chest
			if(Chest_Was_Looted(chest_ID)){//If the chest was looted
				looted = true;
				can_interact_in_battle = false;
				image_index = 1;//open sprite
			}
		}
	}
}

function Set_Lootable_Chest(_object,_chest_ID,_item,_gold,_script_ID = "Loot_Chest"){
	Set_Lootable_Object(_object,_chest_ID,"Chest",_item,_gold,_script_ID);
}

function Set_Lootable_Barrel(_object,_chest_ID,_item,_gold,_script_ID = "Loot_Chest"){
	_object.visible = false;
	Set_Lootable_Object(_object,_chest_ID,"Barrel",_item,_gold,_script_ID);
}

function Set_Lootable_Vase(_object,_chest_ID,_item,_gold,_script_ID = "Loot_Chest"){
	_object.visible = false;
	Set_Lootable_Object(_object,_chest_ID,"Vase",_item,_gold,_script_ID);
}

function Set_Lootable_Area(_object,_chest_ID,_item,_gold,_script_ID = "Loot_Chest"){
	_object.visible = false;
	Set_Lootable_Object(_object,_chest_ID,"Area",_item,_gold,_script_ID);
}