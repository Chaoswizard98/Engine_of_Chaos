function Spell_Stats_AU_Detox(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Detox","Spell_Name","Detox");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Detox","Menu_Name","Detox");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 5;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1; 
	flash_color = make_color_rgb(222,182,222);
	cure_poison = true;
	damage_formula = "No_Damage";
	town_effect = "AU_Detox";
	target_other = true;
        
	switch(_effect_level){
	    case 1: max_target_range = 1; area = 1; magic_cost = 3; break;
	    case 2: cure_stun = true; max_target_range = 2; area = 1; magic_cost = 6; break;
	    case 3: cure_stun = true; cure_curse = true; max_target_range = 2; area = 1; magic_cost = 10; break;
	    case 4: cure_stun = true; cure_curse = true; max_target_range = 3; area = 3; magic_cost = 16; break;
	}
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_AU_Detox(_object){
	with(_object){
		state = "End";
		var _message = "";
	    var _valid_effect = false;
		
		if(Get_Spell_Stats(effect,effect_level,"Cure_Poison",lookup_type,character)){
			if(Cure_Status_Effect(lookup_type,target,"Poison")){
				_message += Global_Status_Effect_Message(lookup_type,target,"Poison","Cure_Effect");
				_valid_effect = true;
			}
		}
		if(Get_Spell_Stats(effect,effect_level,"Cure_Stun",lookup_type,character)){
			if(Cure_Status_Effect(lookup_type,target,"Stun")){
				_message += Global_Status_Effect_Message(lookup_type,target,"Stun","Cure_Effect");
				_valid_effect = true;
			}
		}
		if(Get_Spell_Stats(effect,effect_level,"Cure_Curse",lookup_type,character)){
			if(Character_Is_Cursed(lookup_type,target)){
				_valid_effect = true;
		        Remove_Cursed_Equipment(lookup_type,target);
		        _message += Get_General_Messages("Default_Church","No_Longer_Cursed",Get_Character_Name(lookup_type,target,"Total"));
			}
		}
		
		if(_message != ""){
	        _message = string_delete(_message,string_length(_message),1);//delete last pause break character
	        _message = string_delete(_message,1,1);//delete first line break character
	    }
	    if(!_valid_effect){
	        _message = "But nothing happens.";
	    }
			
		Finalize_Town_Spell_Effect(_object,_message,_valid_effect);
	}
}




function Spell_Animation_Hit_Event_AU_Detox(_object) {
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0)-50;
	var _mirror = Get_Battle_Cutscene_Character_Draw_Location(_target,"Mirror",0);
	
	//var _delay = 0;
	//var _delay2 = 0;
	//switch(_object.effect_level){
	//	case 1: _delay = 0; /*_object.max_event_timer = 60;*/ break;
	//	case 2: _delay = 9; /*_object.max_event_timer = 69;*/ break;
	//	case 3: _delay = 9; /*_object.max_event_timer = 69;*/ break;
	//	case 4: _delay = 0; _delay2 = 34; /*_object.max_event_timer = 94;*/ break;
	//}
	
	var _temp = noone;
	
	//if(_object.effect_level < 4){
		_temp = Create_Battle_Cutscene_Prop("AU_Detox_Green_Charge",_x_pos,_y_pos,0,_mirror,false,true,sfx_Heal);
		_temp = Create_Battle_Cutscene_Prop("AU_Detox_Green_Circle_Intro",_x_pos,_y_pos,0,_mirror,false,false,sfx_Heal);
	//}
}