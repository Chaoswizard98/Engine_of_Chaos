function Loot_Chest() {
	var _player = player_trigger;
	var _chest = other_trigger;

	//================
	//Town Chest Code=
	//================
	switch(state){
	    case 0:
	        _chest.image_index = 1;//open chest
	        Create_Dialogue(noone,Get_Generic_Voice("Chest"),Get_Chest_Messages(id,"Opens_Chest"),id,true,false);//portrait, voice, message, current object, arrow, auto pan, lookup type 
	        state = 1;
	    break;
	    case 1:
	        state = 3;
	        if((_chest.item = "none") && (_chest.gold = 0)){//if the chest is empty
	            Set_Chest_Looted(_chest)
	            Start_New_Dialogue(Get_Chest_Messages(id,"Empty"),false,true);//message, arrow, auto-pan
	            Stop_Dialogue_Interaction();
	            Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	        }
	        else if(_chest.gold != 0){//looting gold
	            Give_Gold(_chest.gold);
	            Set_Chest_Looted(_chest)
	            Start_New_Dialogue(Get_Chest_Messages(id,"Recieves_Gold"),false,true);//message, arrow, auto-pan
	            Stop_Dialogue_Interaction();
	            Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	        }
	        else{//looting an item
	            state = 2;
	            Start_New_Dialogue(Get_Chest_Messages(id,"Found_Item"),true,false);//message, arrow, auto-pan
	        }
	    break;
    
	    case 2://grant character item (if a party member has a free inventory space) or close chest
	        state = 3;
	            if(global.In_Battle && (!Inventory_Is_Full("Local",_player))){//if we're in battle, only check active character's inventory
	                Give_Character_Item("Local",_player,_chest.item);
	                Start_New_Dialogue(Get_Chest_Messages(id,"Recieves_Item"),false,true);//portrait, voice, message, current object, arrow, auto pan, lookup type
	                Stop_Dialogue_Interaction();
	                Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	                Set_Chest_Looted(_chest)
	            }
	            else if(!global.In_Battle && (!Faction_Inventory_Is_Full(Get_Lookup_Type(Get_Character_Faction("Local",_player,"Total")),Get_Character_Faction("Local",_player,"Total")))){
	                var _character = Give_Faction_Item(Get_Lookup_Type(Get_Character_Faction("Local",_player,"Total")),Get_Character_Faction("Local",_player,"Total"),_chest.item);
	                Start_New_Dialogue(Get_Chest_Messages(id,"Recieves_Item"),false,true);//portrait, voice, message, current object, arrow, auto pan, lookup type
	                Stop_Dialogue_Interaction();
	                Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	                Set_Chest_Looted(_chest);
	            }
	            else{
	                Start_New_Dialogue(Get_Chest_Messages(id,"Inventory_Full"),true,true);//portrait, voice, message, current object, arrow, auto pan, lookup type 
	            }
	    break;
    
	    case 3:
	    if(!_chest.looted){//if we didnt loot the chest
	        image_index = 0;//close the chest
	    }
	    state = 0;
	    if(global.In_Battle){//if we're in battle, end players turn
	        Face_Direction(_player,"Down");
	        End_Turn(_player,"Search");
	    }
	    else{//otherwise allow player movement in town
	        _player.allow_interaction = true;
	    }
		instance_destroy();
	    break;
	}
}