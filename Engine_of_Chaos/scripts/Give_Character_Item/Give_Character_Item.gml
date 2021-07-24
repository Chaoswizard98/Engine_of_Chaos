function Give_Character_Item() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item = argument[2];
	var _auto_equip = false;

	if(argument_count > 3){
	    _auto_equip = argument[3];
	}

	var i = 0;
	//Give character item
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){//loop through all inventory spaces
	    if(Get_Item(_lookup_type,_character,i) = "none"){//if there is no item in this slot,
	        if(_lookup_type = "Global"){
	            global.Items[_character,i] = _item;
	        }
	        else if(_lookup_type = "Local"){
	            _character.items[i] = _item;
	        }
	        if(_auto_equip){//if we auto equip the new item
	            Equip_Item(_lookup_type,_character,Get_Item_Equip_Slot(_lookup_type,_character,_item),i);//lookup type, character, equip slot, item slot
	        }
	        else{//trigger an update to character sprite (in case of costume item that doesnt need equipping)
	            if(_lookup_type = "Global"){
	                Update_Character_Stats(_lookup_type,_character);
	            }
	            else if(_lookup_type = "Local"){
	                _character.sprite_index = Get_Overworld_Sprite(Get_Character_Overworld_Sprite("Local",_character,"Total"));//set their sprite
	                _character.portrait_ID = Get_Character_Portrait("Local",_character,"Total");//Set Portrait
	                _character.voice_ID = Get_Character_Voice("Local",_character,"Total");//Set Voice
	            }
	        }
	        break;
	    }
	}



}
