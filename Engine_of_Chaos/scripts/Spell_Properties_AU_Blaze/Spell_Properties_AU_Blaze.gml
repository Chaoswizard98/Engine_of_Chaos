function Spell_Stats_AU_Blaze(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Blaze","Spell_Name","Blaze");//Get name from language script
	menu_name = Get_Spell_Display_Name("Blaze","Menu_Name","Blaze");//Get name from language script
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
	    case 4: fire_damage = 40; max_target_range = 2; area = 1; magic_cost = 10; break;
	}
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_AU_Blaze(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Scene_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Scene_Location(_target,"Y_Pos",0);
	Set_Battle_Cutscene_Tint_Color(_object.tint_color);
	_object.max_prop_timer = 3;
	_object.max_event_timer = 30;
	_object.event_tags[0] = 0;//Loop timer
	_object.event_tags[1] = 0;//Loop position
	//_object.event_tags[2] = 0;
	
	switch(_object.position){
	    case "Left": Set_Battle_Cutscene_Prop_Spawn_Region(id,_x_pos,_y_pos,0,0,false); break; //object,x,y,w,h,mirror
	    case "Right": Set_Battle_Cutscene_Prop_Spawn_Region(id,_x_pos,_y_pos,0,0,true); break; //object,x,y,w,h,mirror
	}
	
	if(_target.location = "Background"){
		Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Light",Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0),Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0),0,_object.mirror,true,false,noone);
	}
	else{
		Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Light_Foreground",Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0),Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0),0,_object.mirror,true,false,noone);
	}
	if(_object.effect_level = 1 || _object.effect_level = 2){
		Create_Battle_Cutscene_Prop("AU_Blaze_BG_Embers",obj_Battle_Cutscene_Controller.scene_x+128,obj_Battle_Cutscene_Controller.scene_y,0,_object.mirror,true,false,noone);
	}
	else{
		Create_Battle_Cutscene_Prop("AU_Blaze_BG_Fire",obj_Battle_Cutscene_Controller.scene_x+128,obj_Battle_Cutscene_Controller.scene_y,0,_object.mirror,true,false,noone);
	}

	//switch(_object.effect_level){
	//    case 1: Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Small",_x_pos,_y_pos,0,_object.mirror,true,false,noone); break;
	//    case 3: Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Medium",_x_pos,_y_pos,0,_object.mirror,true,false,noone); break;
	//	case 4: Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Large",_x_pos,_y_pos,0,_object.mirror,true,false,noone); break;
	//}
	
	_object.event_timer = _object.max_event_timer;
	_object.waiting_for_event = true;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_AU_Blaze(_object){
	_object.event_tags[0] -= 1;
	//_object.event_tags[2] -= 1;
	var _x_pos = irandom_range(_object.min_x,_object.max_x);//Find Random X value to summon fireball at
	var _y_pos = irandom_range(_object.min_y,_object.max_y);//Find Random Y value to summon fireball at
	var _rotation = 0;
	
	if(_object.effect_level = 1 || _object.effect_level = 2){
		if(_object.event_tags[0] <= 0){
			_object.event_tags[0] = 12 - irandom_range(0,6);
			var _this;
			switch(_object.event_tags[1]){
				case 0: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos+32,_y_pos,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start); break;
				case 1: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos+16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start); break;	
				case 2: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos-16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start); break;	
				case 3: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos-32,_y_pos,_rotation,_object.mirror*-1,false,false,sfx_Blaze_Fire_Start); break;	
				case 4: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos-16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Blaze_Fire_Start); break;	
				case 5: _object.event_tags[1] = 0; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Small",_x_pos+16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Blaze_Fire_Start); break;	
			}
		}
	}
	
	if(_object.effect_level = 2){
		if(Chance(.025)||((Battle_Prop_Count("AU_Blaze_Fireburst_Large")<=0))){
			Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Large",_x_pos + irandom_range(-40,40),_y_pos+ irandom_range(-20,5),_rotation,_object.mirror,false,false,sfx_Blaze_Fire_Start);
		}
	}
	
	if(_object.effect_level = 3){
		if(Chance(.025)||((Battle_Prop_Count("AU_Blaze_Fireburst_Huge")<=0))){
			var _mirror = 1;
			if(Chance(.5)){
				var _mirror = -1;	
			}
			Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Huge",_x_pos + irandom_range(-40,40),_y_pos+ irandom_range(-20,5),_rotation,_mirror,false,false,sfx_Blaze_Fire_Start);
		}
		if(_object.event_tags[0] <= 0){
			_object.event_tags[0] = 24 - irandom_range(0,15);
			_y_pos -= 10;
			var _this;
			switch(_object.event_tags[1]){
				case 0: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos+32,_y_pos,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;
				case 1: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos-16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;	
				case 2: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos+16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;	
				case 3: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos-32,_y_pos,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;	
				case 4: _object.event_tags[1] = 0; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos+16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;
				case 5: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Small",_x_pos-16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;		
			}
		}
	}
	
	if(_object.effect_level = 4){
		if(Chance(.1)||((Battle_Prop_Count("AU_Blaze_Fireburst_Huge")<=0))){
			var _mirror = 1;
			if(Chance(.5)){
				var _mirror = -1;	
			}
			Create_Battle_Cutscene_Prop("AU_Blaze_Fireburst_Huge",_x_pos + irandom_range(-40,40),_y_pos+ irandom_range(-20,5),_rotation,_mirror,false,false,sfx_Blaze_Fire_Start);
		}
		if(Chance(.05)||((Battle_Prop_Count("AU_Blaze_Fire_Slash")<=0))){
			var _mirror = 1;
			if(Chance(.5)){
				var _mirror = -1;	
			}
			Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Slash",_x_pos + irandom_range(-20,20),_y_pos+ irandom_range(-60,40),_rotation,_mirror,false,false,sfx_Blaze_Fire_Start);
		}
		if(_object.event_tags[0] <= 0){
			_object.event_tags[0] = 34 - irandom_range(0,25);
			_y_pos += 25;
			var _this;
			switch(_object.event_tags[1]){
				case 0: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos+32,_y_pos,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;
				case 1: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos-16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;	
				case 2: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos+16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;	
				case 3: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos-32,_y_pos,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;	
				case 4: _object.event_tags[1] = 0; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos+16,_y_pos-5,_rotation,_object.mirror*-1,false,false,sfx_Fire_Explosion_01); break;
				case 5: _object.event_tags[1] += 1; _this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Start",_x_pos-16,_y_pos+5,_rotation,_object.mirror,false,false,sfx_Fire_Explosion_01); break;		
			}
		}
	}
}