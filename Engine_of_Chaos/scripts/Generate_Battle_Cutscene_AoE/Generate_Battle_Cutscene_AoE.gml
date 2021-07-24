function Generate_Battle_Cutscene_AoE() {
	var _area = 1;
	var _pattern = "Default";

	number_of_targets = 0;//reset number of targets
	target_type = Get_Character_Attack_Select_Type("Local",attacker,"Total");

	switch(action){
	    case "Cast_Spell": 
	        target_type = Get_Effect_Stats(effect,effect_level,"Select_Type","Local",attacker);
	        _area = Get_Effect_Stats(effect,effect_level,"Area","Local",attacker);
	        _pattern = Get_Effect_Stats(effect,effect_level,"Cursor_Pattern","Local",attacker);
	    break;
	    case "Use_Item": 
	        target_type = Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Use_Select_Type");
	        _area = Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Use_Size");
	        _pattern = Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Use_Cursor_Pattern");
	    break;
	    default: 
	        target_type = Get_Character_Attack_Select_Type("Local",attacker,"Total");
	        _area = Get_Character_Attack_Size("Local",attacker,"Total");
	        _pattern = Get_Character_Attack_Pattern("Local",attacker,"Total");
	    break;
	}
	Generate_AoE_Range(attacker,target.x,target.y,_area,-1,_pattern);//generate AoE

	//================================
	//Figure out which targets we hit=
	//================================
	if((target_type = "All_Characters")||(target_type = "All_Enemies")||(target_type = "All_Allies")){//ignore range entirely, fires on all units
	    with(obj_Character){
	        if(Can_Target_Character(obj_Battle_Cutscene_Controller.target_type,obj_Battle_Cutscene_Controller.attacker,id)){
	            if(!Character_Is_Dead("Local",id)){
	                obj_Battle_Cutscene_Controller.target_array[obj_Battle_Cutscene_Controller.number_of_targets] = id; 
	                obj_Battle_Cutscene_Controller.number_of_targets += 1;
	            }
	        }
	    }
	}
	else{//check tiles within range
	    var _target_character = noone;
	    var _temp = noone;
	    with(obj_AoE_Tile){
	        if(obj_Battle_Cutscene_Controller.target_type = "Empty_Tile"){
	            if(Get_Effect_Stats(obj_Battle_Cutscene_Controller.effect,obj_Battle_Cutscene_Controller.effect_level,"Battle_Cutscene_Event","Local",obj_Battle_Cutscene_Controller.attacker) = "Summon_Spell"){
	                _target_character = instance_position(x,y,obj_Character);
	                if(_target_character = noone){//If this tile isnt blocked by a character already
	                    _temp = Create_Summoned_Creature(x,y,Get_Effect_Stats(obj_Battle_Cutscene_Controller.effect,obj_Battle_Cutscene_Controller.effect_level,"Summon_ID","Local",obj_Battle_Cutscene_Controller.attacker),obj_Battle_Cutscene_Controller.attacker);//create character
	                    if(Can_Walk_On_Terrain(Get_Terrain_Type(x,y),Get_Character_Movement_Type("Local",_temp,"Total"))){//if they can walk on this terrain
	                        obj_Battle_Cutscene_Controller.target_array[obj_Battle_Cutscene_Controller.number_of_targets] = _temp;//add them to the list
	                        obj_Battle_Cutscene_Controller.number_of_targets += 1;
	                    }
	                    else{//They cant walk on the terrain
	                        instance_destroy(_temp);//destroy them
	                    }
	                }
	            }
	        }
	        else{
	            _target_character = instance_position(x,y,obj_Character);
	            if(_target_character != noone){
	                if(Can_Target_Character(obj_Battle_Cutscene_Controller.target_type,obj_Battle_Cutscene_Controller.attacker,_target_character)){
	                    if(!Character_Is_Dead("Local",_target_character)){
	                        obj_Battle_Cutscene_Controller.target_array[obj_Battle_Cutscene_Controller.number_of_targets] = instance_position(x,y,obj_Character); 
	                        obj_Battle_Cutscene_Controller.number_of_targets += 1;
	                    }
	                }
	            }
	        }
	    }
	}

	instance_destroy(obj_AoE_Tile);



}
