function Get_AI_Target(_character,_action,_threat_formula,_effect,_effect_level,_speed,_min_threat){
	//Base Variables
	var _move_range;
	var _target_type;
	var _min_attack_range;
	var _max_attack_range;
	var _attack_range_type;
	var _min_aoe_range;
	var _max_aoe_range;
	var _aoe_pattern;
	var _select_type;

	//Set variables based on action
	switch(_action){
	    case "Attack":
	        _move_range = Get_Character_Movement_Range("Local",_character,"Total");
	        _target_type = Get_Character_Attack_Target_Type("Local",_character,"Total");
	        _min_attack_range = Get_Character_Min_Attack_Range("Local",_character,"Total");
	        _max_attack_range = Get_Character_Max_Attack_Range("Local",_character,"Total");
	        _attack_range_type = Get_Character_Attack_Range_Type("Local",_character,"Total");
	        _min_aoe_range = -1;
	        _max_aoe_range = Get_Character_Attack_Size("Local",_character,"Total");
	        _aoe_pattern = Get_Character_Attack_Pattern("Local",_character,"Total");
	        _select_type = Get_Character_Attack_Select_Type("Local",_character,"Total");
        
	        if(Get_Equipped_Item_Stats("Local",_character,0,"Word_of_Power") != "none"){//If using word of power
	            _effect = Get_Equipped_Item_Stats("Local",_character,0,"Word_of_Power");
	            _effect_level = Get_Equipped_Item_Stats("Local",_character,0,"Word_of_Power_Level");
	        }
	    break;
	    case "Cast_Spell":
	        _move_range = Get_Character_Movement_Range("Local",_character,"Total");
	        _target_type = Get_Spell_Stats(_effect,_effect_level,"Target_Type","Local",_character);
	        _min_attack_range = Get_Spell_Stats(_effect,_effect_level,"Min_Target_Range","Local",_character);
	        _max_attack_range = Get_Spell_Stats(_effect,_effect_level,"Max_Target_Range","Local",_character);
	        _attack_range_type = "Magic";
	        _min_aoe_range = -1;
	        _max_aoe_range = Get_Spell_Stats(_effect,_effect_level,"Area","Local",_character);
	        _aoe_pattern = Get_Spell_Stats(_effect,_effect_level,"Cursor_Pattern","Local",_character);
	        _select_type = Get_Spell_Stats(_effect,_effect_level,"Select_Type","Local",_character);
	    break;
	    case "Use_Item":
	        _effect_level = Get_Item_Stats(_effect,"Use_Effect_Level","Local",_character);
	        _effect = Get_Item_Stats(_effect,"Use_Effect","Local",_character);
	        _move_range = Get_Character_Movement_Range("Local",_character,"Total");
	        _target_type = Get_Spell_Stats(_effect,_effect_level,"Target_Type","Local",_character);
	        _min_attack_range = Get_Spell_Stats(_effect,_effect_level,"Min_Target_Range","Local",_character);
	        _max_attack_range = Get_Spell_Stats(_effect,_effect_level,"Max_Target_Range","Local",_character);
	        _attack_range_type = "Use_Item";
	        _min_aoe_range = -1;
	        _max_aoe_range = Get_Spell_Stats(_effect,_effect_level,"Area","Local",_character);
	        _aoe_pattern = Get_Spell_Stats(_effect,_effect_level,"Cursor_Pattern","Local",_character);
	        _select_type = Get_Spell_Stats(_effect,_effect_level,"Select_Type","Local",_character);
	    break;
	    default: return noone; break;
	}

	var _target = noone;
	var _target_tile = noone;
	var _target_list = ds_priority_create();
	var _tile_list = ds_priority_create();
	var _threat = 0;
	var _divisor = 0;

	//=====================
	//Get Character Threat=
	//=====================
	with(obj_Character){//Loop through all characters
	    if(Can_Target_Character(_target_type,_character,id)){//If we can target this character
	        if((Find_Distance(_character.x,_character.y,x,y) <= (_move_range + _max_attack_range))||(_max_attack_range = -1)){//if character is close enough to *maybe* be attacked (ignore anyone too far away to save on processing time)
	            _threat = 0;
	            Generate_AoE_Range(_character,x,y,_max_aoe_range,_min_aoe_range,_aoe_pattern);//Generate AoE on target
	            _divisor = max(Get_Number_of_AoE_Targets(_character,_select_type),1);
	            with(obj_AoE_Tile){//Loop through all aoe tiles
	                _target = instance_position(x,y,obj_Character);//grab character at location (if one exists)
	                if(_target != noone){//if one exists
	                    if(Can_Target_Character(_select_type,_character,_target)){//If we can run the effect on them
	                        _threat += Calculate_Threat(_threat_formula,_character,_target,_effect,_effect_level,_divisor);
	                    }
	                }
	            }
	            _threat -= (Find_Distance(_character.x,_character.y,x,y) - _max_attack_range);
	            instance_destroy(obj_AoE_Tile);//Destroy AoE tiles
	            if(_threat >= _min_threat){//If threat is higher than our minimum required threat
	                ds_priority_add(_target_list,id,_threat);//Add character to the list based on priority
	            }
	        }
	    }
	}
	//================
	//Get Best Target=
	//================
	while(true){
	    _target = ds_priority_find_max(_target_list);//get highest priority target
	    ds_priority_delete_max(_target_list);//delete highest priority target
	    if(_target != undefined){//if we have a valid target
	        Generate_Target_Range(_character,_target.x,_target.y,_max_attack_range,_min_attack_range,_attack_range_type,false);
	        with(obj_Movement_Tile){//loop through movement tiles
	            if(instance_position(x,y,obj_Target_Tile) != noone){//if we can attack from this position
	                if(Tile_Is_Empty(id)||(Object_Is_At_Location(_character,x,y))){//if this location is un-occupied (or occupied by current character)
	                    if(Find_Distance(x,y,_character.x,_character.y) <= _speed){//if this tile is within our max speed criteria
	                        ds_priority_add(_tile_list,id,Find_Distance(x,y,_character.x,_character.y));//priority based on distance
	                    }
	                }
	            }
	        }
	        instance_destroy(obj_Target_Tile);//clear target tiles
	        if(!ds_priority_empty(_tile_list)){//if we have valid tiles
	            break;//break out of the loop
	        }
	    }
	    else{
	        break;
	    }
	}
	//==============
	//Get Best Tile=
	//==============
	_target_tile = ds_priority_find_min(_tile_list);
	ds_priority_destroy(_target_list);
	ds_priority_destroy(_tile_list);

	if(_target_tile != undefined){//if valid tile exists
	    _character.ai_target = _target;//remember the character we're targeting
	    return _target_tile;//return destination tile
	}

	return noone;
}