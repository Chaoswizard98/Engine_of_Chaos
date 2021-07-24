function Loot_Chest() {
	//Default Chest Loot Script
	var _message,_empty,_item,_gold;
	_message = " opens the chest.";//default chest search message
	_empty = true;//default chests are empty
	_item = "none";//default 'no item'
	_gold = 0;//default 'no gold'


	//===============
	//Container Info=
	//===============
	switch(chest_ID){
	    case 0: _message = "Open_Chest"; _empty = false; _item = "Medical_Herb"; _gold = 0; break;//Jason's Shed
	    case 1: _message = "Open_Chest"; _empty = false; _item = "none"; _gold = 100; break;//Jason's Room
	    case 2: _message = "Search_Barrel"; _empty = false; _item = "Healing_Seed"; _gold = 0; break;//Ciera's Basement
	    case 3: _message = "Open_Chest"; _empty = false; _item = "Ring_Of_Chicken"; _gold = 0; break;//Ciera's Basement
    
	    default: _message = "Open_Chest"; _empty = true; _item = "none"; _gold = 0; break;//default empty chest
	}

	//================
	//Town Chest Code=
	//================
	switch(dialogue_state){
	    case 0:
	        image_index = 1;//open chest
	        Create_Dialogue("none",Get_Voice("Chest"),Get_General_Messages("Containers",_message,string(Get_Character_Name("Local",current_object,"Total"))),id,true,false);//portrait, voice, message, current object, arrow, auto pan, lookup type 
	        dialogue_state = 1;
	    break;
	    case 1:
	        dialogue_state =3;
	        if(_empty){//if the chest is empty
	            looted = true;
	            if(!respawnable){
	                global.Chest_Looted[chest_ID] = true;//Mark as looted 
	            }
	            Start_New_Dialogue(Get_General_Messages("Containers","Empty"),false,true);//message, arrow, auto-pan
	            Stop_Dialogue_Interaction();
	            Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	        }
	        else if(_gold != 0){//looting gold
	            Give_Gold(_gold);
	            looted = true;
	            if(!respawnable){
	                global.Chest_Looted[chest_ID] = true;//Mark as looted 
	            }
	            Start_New_Dialogue(Get_General_Messages("Containers","Recieves_Gold",Get_Character_Name("Local",current_object,"Total"),string(_gold)),false,true);//message, arrow, auto-pan
	            Stop_Dialogue_Interaction();
	            Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	        }
	        else{//looting an item
	            dialogue_state = 2;
	            Start_New_Dialogue(Get_General_Messages("Containers","Found_Item",Get_Character_Name("Local",current_object,"Total"),string(Get_Item_Stats(_item,"Item_Name"))),true,false);//message, arrow, auto-pan
	        }
	    break;
    
	    case 2://grant character item (if a party member has a free inventory space) or close chest
	        dialogue_state = 3;
	            if(global.In_Battle && (!Inventory_Is_Full("Local",current_object))){//if we're in battle, only check active character's inventory
	                Give_Character_Item("Local",current_object,_item);
	                Start_New_Dialogue(Get_General_Messages("Containers","Recieves_Item",string(Get_Character_Name("Local",current_object,"Total")),string(Get_Item_Stats(_item,"Item_Name"))),false,true);//portrait, voice, message, current object, arrow, auto pan, lookup type
	                Stop_Dialogue_Interaction();
	                Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	                looted = true;
	                if(!respawnable){
	                    global.Chest_Looted[chest_ID] = true;//Mark as looted 
	                }
	            }
	            else if(!global.In_Battle && (!Faction_Inventory_Is_Full(Get_Lookup_Type(Get_Character_Faction("Local",current_object,"Total")),Get_Character_Faction("Local",current_object,"Total")))){
	                var _character = Give_Faction_Item(Get_Lookup_Type(Get_Character_Faction("Local",current_object,"Total")),Get_Character_Faction("Local",current_object,"Total"),_item);
	                Start_New_Dialogue(Get_General_Messages("Containers","Recieves_Item",string(Get_Character_Name(Get_Lookup_Type(Get_Character_Faction("Local",current_object,"Total")),_character,"Total")),string(Get_Item_Stats(_item,"Item_Name"))),false,true);//portrait, voice, message, current object, arrow, auto pan, lookup type
	                Stop_Dialogue_Interaction();
	                Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	                looted = true;
	                if(!respawnable){
	                    global.Chest_Looted[chest_ID] = true;//Mark as looted 
	                }
	            }
	            else{
	                Start_New_Dialogue(Get_General_Messages("Containers","Inventory_Full"),true,true);//portrait, voice, message, current object, arrow, auto pan, lookup type 
	            }
	    break;
    
	    case 3:
	    if(!looted){//if we didnt loot the chest
	        image_index = 0;//close the chest
	    }
	    dialogue_state = 0;
	    if(global.In_Battle){//if we're in battle, end players turn
	        if(looted){
	            can_interact_in_battle = false;
	        }
	        Face_Direction(current_object,"Down");
	        End_Turn(current_object,"Search");
	    }
	    else{//otherwise allow player movement in town
	        current_object.allow_interaction = true;
	    }
	    break;
	}



}
