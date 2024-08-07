function Spell_Stats_SF2_Blaze(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Blaze","Spell_Name","Blaze");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Blaze","Menu_Name","Blaze");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 0;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(255,0,0);
	tint_color = make_colour_rgb(255,106,106);
    
	switch(_effect_level){
	    case 1: fire_damage = 8; max_target_range = 2; area = 1; magic_cost = 2; break;
	    case 2: fire_damage = 10; max_target_range = 2; area = 2; magic_cost = 6; break;
	    case 3: fire_damage = 15; max_target_range = 2; area = 2; magic_cost = 10; break;
	    case 4: fire_damage = 40; max_target_range = 2; area = 2; magic_cost = 10; break;
	}
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_SF2_Blaze(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	Set_Battle_Cutscene_Tint_Color(_object.tint_color);
	obj_Spell_Controller.max_prop_timer = 2;
	
	switch(_object.position){
	    case "Left": Set_Battle_Cutscene_Prop_Spawn_Region(_object,90,-10,120,20,false); break; //object,x,y,w,h,mirror
	    case "Right": Set_Battle_Cutscene_Prop_Spawn_Region(_object,90,-10,120,20,true); break; //object,x,y,w,h,mirror
	}

	switch(_object.effect_level){
	    case 1: Create_Battle_Cutscene_Prop("SF2_Blaze_Fire_Small",_x_pos,_y_pos,0,_object.mirror,true,false,noone); break;
	    case 3: Create_Battle_Cutscene_Prop("SF2_Blaze_Fire_Medium",_x_pos,_y_pos,0,_object.mirror,true,false,noone); break;
		case 4: 
			var _prop = noone;
			var _new_prop = noone;
			Create_Battle_Cutscene_Prop("SF2_Blaze_Fire_Large",_x_pos,_y_pos,0,_object.mirror,true,false,noone); 
			_prop = Create_Battle_Cutscene_Prop("SF2_Blaze_Dragon_Head",_x_pos,_y_pos-40,0,_object.mirror,true,false,noone);
			_prop.wave_x_center = _x_pos;
			_prop.wave_y_center = _y_pos-40;
			_new_prop = Create_Battle_Cutscene_Prop("SF2_Blaze_Dragon_Body_1",_x_pos,_y_pos-40,0,_object.mirror,true,false,noone);
			_new_prop.obj_following = _prop;
			_prop = _new_prop;
			_new_prop = Create_Battle_Cutscene_Prop("SF2_Blaze_Dragon_Body_2",_x_pos,_y_pos-40,0,_object.mirror,true,false,noone);
			_new_prop.obj_following = _prop;
			_prop = _new_prop;
			_new_prop = Create_Battle_Cutscene_Prop("SF2_Blaze_Dragon_Body_3",_x_pos,_y_pos-40,0,_object.mirror,true,false,noone);
			_new_prop.obj_following = _prop;
			_prop = _new_prop;
		break;
	}
	_object.event_timer = _object.max_event_timer;
	_object.waiting_for_event = true;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_SF2_Blaze(_object){
	if((Chance(.20))||((Battle_Prop_Count("SF2_Blaze_Fireball_Small")<=0)&&(Battle_Prop_Count("SF2_Blaze_Fireball_Large")<=0))){
	    var _x_pos = random_range(_object.min_x,_object.max_x);//Find Random X value to summon fireball at
	    var _y_pos = random_range(_object.min_y,_object.max_y);//Find Random Y value to summon fireball at
	    var _rotation = 0;
		var _this;
		switch(_object.effect_level){
			case 2:  
				_this = Create_Battle_Cutscene_Prop("SF2_Blaze_Fireball_Small",_x_pos,_y_pos,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start);
				Set_Battle_Prop_Movement(_this,_this.x_pos-(80*_object.mirror),_this.y_pos+80,4);
			break;
			case 3:  
				_this = Create_Battle_Cutscene_Prop("SF2_Blaze_Fireball_Large",_x_pos,_y_pos,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start);
				Set_Battle_Prop_Movement(_this,_this.x_pos-(80*_object.mirror),_this.y_pos+80,4);
			break;
			case 4:  
				_this = Create_Battle_Cutscene_Prop("SF2_Blaze_Fireball_Large",_x_pos,_y_pos,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start);
				Set_Battle_Prop_Movement(_this,_this.x_pos-(80*_object.mirror),_this.y_pos+80,4);
			break;
		}
	}
}