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
	
	var _delay = 0;
	switch(_object.effect_level){
		case 1: _delay = 0; break;
		case 2: _delay = 9; break;
		case 3: _delay = 9; break;
		case 4: _delay = 9; break;
	}
	
	Create_Battle_Cutscene_Prop("AU_Detox_Green_Charge",_x_pos,_y_pos,0,_mirror,false,true,sfx_Heal_2).start_delay = _delay;
	Create_Battle_Cutscene_Prop("AU_Detox_Green_Circle_Intro",_x_pos,_y_pos,0,_mirror,false,false,noone).start_delay = _delay;
	
	//var _temp = noone;
	if(_object.effect_level >= 2){
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos+39,_y_pos-9,0,_mirror,false,false,noone).start_delay = 42 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos,_y_pos-3,0,_mirror,false,false,noone).start_delay = 46 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos-22,_y_pos-13,0,_mirror,false,false,noone).start_delay = 48 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos+12,_y_pos+30,0,_mirror,false,false,noone).start_delay = 54 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos-19,_y_pos+12,0,_mirror,false,false,noone).start_delay = 58 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos+22,_y_pos+2,0,_mirror,false,false,noone).start_delay = 62 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle_Spark",_x_pos-38,_y_pos+33,0,_mirror,false,false,noone).start_delay = 70 + _delay;
	}
	if(_object.effect_level >= 3){
		Create_Battle_Cutscene_Prop("AU_Detox_Thread_Purple",_x_pos-1,_y_pos-5,180,_mirror,false,false,noone).start_delay = 0 + _delay;	
		Create_Battle_Cutscene_Prop("AU_Detox_Thread_Purple",_x_pos+5,_y_pos-5,90,_mirror*-1,false,false,noone).start_delay = 6 + _delay;	
		Create_Battle_Cutscene_Prop("AU_Detox_Thread_Purple",_x_pos+5,_y_pos-1,180,_mirror*-1,false,false,noone).start_delay = 12 + _delay;	
		Create_Battle_Cutscene_Prop("AU_Detox_Thread_Purple",_x_pos+6,_y_pos,270,_mirror,false,false,noone).start_delay = 18 + _delay;
		
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle",_x_pos-28,_y_pos-21,0,_mirror,false,false,noone).start_delay = 50 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle",_x_pos+37,_y_pos+26,0,_mirror,false,false,noone).start_delay = 56 + _delay;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Circle",_x_pos,_y_pos,0,_mirror,false,false,noone).start_delay = 59 + _delay;
	}
	if(_object.effect_level >= 4){
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos-22,_y_pos+52,0,_mirror,false,false,noone).start_delay = 0;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos-6,_y_pos+52,0,_mirror,false,false,noone).start_delay = 6;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos+27,_y_pos+52,0,_mirror,false,false,noone).start_delay = 10;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos+10,_y_pos+52,0,_mirror,false,false,noone).start_delay = 14;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos-32,_y_pos+52,0,_mirror,false,false,noone).start_delay = 18;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos-22,_y_pos+52,0,_mirror,false,false,noone).start_delay = 24;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos+14,_y_pos+52,0,_mirror,false,false,noone).start_delay = 32;
		Create_Battle_Cutscene_Prop("AU_Detox_Purple_Upstream",_x_pos-2,_y_pos+52,0,_mirror,false,false,noone).start_delay = 38;
	}
}