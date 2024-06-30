function Spell_Stats_AU_Heal(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Heal","Spell_Name","Heal");//Get name from language script
	menu_name = Get_Spell_Display_Name("Heal","Menu_Name","Heal");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 4;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1; 
	flash_color = make_color_rgb(222,182,222);
	cure_bleed = true;
	
	switch(_effect_level){
	    case 1: heal_ammount = 15; max_target_range = 1; area = 1; magic_cost = 3; break;
	    case 2: heal_ammount = 15; max_target_range = 2; area = 1; magic_cost = 5; break;
	    case 3: heal_ammount = 30; max_target_range = 3; area = 1; magic_cost = 10; break;
	    case 4: heal_ammount = 999; max_target_range = 1; area = 1; magic_cost = 20; break;
	}
	
	if(_character != noone){
		switch(Get_Equipped_Item(_lookup_type,_character,0)){//Get equipped weapon (slot 0)
			case "AU_Healer_Staff": max_target_range += 1; break;//If item is Healer staff, increase range by 1
		}
	}
	
}

function Spell_Animation_Hit_Event_AU_Heal(_object) {
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0)-50;
	var _mirror = Get_Battle_Cutscene_Character_Draw_Location(_target,"Mirror",0);
	
	var _delay = 0;
	var _delay2 = 0;
	switch(_object.effect_level){
		case 1: _delay = 0; /*_object.max_event_timer = 60;*/ break;
		case 2: _delay = 9; /*_object.max_event_timer = 69;*/ break;
		case 3: _delay = 9; /*_object.max_event_timer = 69;*/ break;
		case 4: _delay = 0; _delay2 = 34; /*_object.max_event_timer = 94;*/ break;
	}
	
	var _temp = noone;
	
	if(_object.effect_level < 4){
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Light_Blue",_x_pos,_y_pos,0,_mirror,false,true,sfx_Heal);
		_temp.start_delay = 15 + _delay;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Blue",_x_pos-9-3,_y_pos+8-10,0,_mirror,false,false,noone);
		_temp.start_delay = 0 + _delay;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Blue",_x_pos+16-3,_y_pos+18-10,0,_mirror,false,false,noone);
		_temp.start_delay = 9 + _delay;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Blue",_x_pos-3,_y_pos-10,0,_mirror,false,false,noone);
		_temp.start_delay = 18 + _delay;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Blue",_x_pos+4-3,_y_pos+22-10,0,_mirror,false,false,noone);
		_temp.start_delay = 27 + _delay;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Blue",_x_pos-5-3,_y_pos-6-10,0,_mirror,false,false,noone);
		_temp.start_delay = 36 + _delay;
	}
	
	
	_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark",_x_pos+15-3,_y_pos+19-10,0,_mirror,false,false,noone);
	_temp.start_delay = 0 + _delay;
	
	_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark",_x_pos-18-3,_y_pos-1-10,0,_mirror,false,false,noone);
	_temp.start_delay = 9 + _delay;
	
	_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark",_x_pos+12-3,_y_pos-18-10,0,_mirror,false,false,noone);
	_temp.start_delay = 18 + _delay;
	
	_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark",_x_pos-2-3,_y_pos+14-10,0,_mirror,false,false,noone);
	_temp.start_delay = 33 + _delay;
	
	_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark",_x_pos+22-3,_y_pos-10,0,_mirror,false,false,noone);
	_temp.start_delay = 42 + _delay;
	
	
	
	if(_object.effect_level >= 2){
		Play_Sound(sfx_Heal_2);
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Green",_x_pos-1,_y_pos-5,180,_mirror,false,false,noone);
		_temp.start_delay = 0 + _delay2;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Green",_x_pos+5,_y_pos-5,90,_mirror*-1,false,false,noone);
		_temp.start_delay = 6 + _delay2;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Green",_x_pos+5,_y_pos-1,180,_mirror*-1,false,false,noone);
		_temp.start_delay = 12 + _delay2;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Thread_Green",_x_pos+6,_y_pos,270,_mirror,false,false,noone);
		_temp.start_delay = 18 + _delay2;
	}
	
	if(_object.effect_level >= 3){
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos-24,_y_pos-18,0,_mirror,false,false,noone);
		_temp.start_delay = 33;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos+33,_y_pos-4,0,_mirror,false,false,noone);
		_temp.start_delay = 42;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos-10,_y_pos+11,0,_mirror,false,false,noone);
		_temp.start_delay = 48;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos+14,_y_pos-44,0,_mirror,false,false,noone);
		_temp.start_delay = 54;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos-14,_y_pos-52,0,_mirror,false,false,noone);
		_temp.start_delay = 69;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold",_x_pos+2,_y_pos-16,0,_mirror,false,false,noone);
		_temp.start_delay = 81;
	}
	
	if(_object.effect_level = 4){
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Targeting_Lights",_x_pos,_y_pos,0,_mirror,false,false,noone);
		_temp.start_delay = 6;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Light_Gold",_x_pos,_y_pos,0,_mirror,false,true,sfx_Heal);
		_temp.start_delay = 34;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Green_Dust",_x_pos,_y_pos+30,0,_mirror,false,false,noone);
		_temp.start_delay = 34;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Green_Dust",_x_pos,_y_pos+30,0,_mirror *-1,false,false,noone);
		_temp.start_delay = 34;
		
		
		
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos-37,_y_pos-9,0,_mirror,false,false,noone);
		_temp.start_delay = 28;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos+1,_y_pos-7,0,_mirror,false,false,noone);
		_temp.start_delay = 31;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos+15,_y_pos-35,0,_mirror,false,false,noone);
		_temp.start_delay = 37;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos-11,_y_pos+20,0,_mirror,false,false,noone);
		_temp.start_delay = 40;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos-13,_y_pos-43,0,_mirror,false,false,noone);
		_temp.start_delay = 58;
	
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos+34,_y_pos+5,0,_mirror,false,false,noone);
		_temp.start_delay = 67;
		
		_temp = Create_Battle_Cutscene_Prop("AU_Heal_Spark_Gold_Full",_x_pos+1,_y_pos-7,0,_mirror,false,false,noone);
		_temp.start_delay = 88;
	}
	
	//_object.event_timer = _object.max_event_timer;
	//_object.waiting_for_event = true;
}