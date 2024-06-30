function Spell_Stats_AU_Blast(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Blast","Spell_Name","Blast");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Blast","Menu_Name","Blast");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 3;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(33,219,222);
	tint_color = make_color_rgb(181,182,181);
    
	switch(_effect_level){
	    case 1: wind_damage = 6; max_target_range = 2; area = 2; magic_cost = 2; break;
	    case 2: wind_damage = 8; max_target_range = 2; area = 2; magic_cost = 5; break;
	    case 3: wind_damage = 12; max_target_range = 2; area = 2; magic_cost = 8; break;
	    case 4: wind_damage = 30; max_target_range = 2; area = 2; magic_cost = 8; break;
	}
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_AU_Blast(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	var _prop = noone;
	var _new_prop = noone;
	
	
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
	
	_prop = Create_Battle_Cutscene_Prop("AU_Blast_BG_Wind",obj_Battle_Cutscene_Controller.scene_x+128,obj_Battle_Cutscene_Controller.scene_y,0,_object.mirror,true,false,noone);
	_prop.alpha = .5;
	
	
	
	
	switch(_object.effect_level){
	    case 2: 
			_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_01",_x_pos,_y_pos+10,0,_object.mirror,true,false,noone); 
			_prop.wave_x_center = _x_pos;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-10,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 2;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 4;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 6;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 8;
			
		break;
		
		case 3:
			_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_01",_x_pos,_y_pos+10,0,_object.mirror,true,false,noone); 
			_prop.wave_x_center = _x_pos;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-10,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 2;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 4;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_03_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 6;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_04_Following",_x_pos,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 8;
		break;
		
	    case 4:
			//Main Tornado
			_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_01",_x_pos,_y_pos+10,0,_object.mirror,true,false,noone); 
			_prop.wave_x_center = _x_pos;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_02_Following",_x_pos,_prop.y_pos-10,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 2;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_03_Following",_x_pos,_prop.y_pos-20,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 4;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_04_Following",_x_pos,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 6;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_05_Following",_x_pos,_prop.y_pos-10,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 8;
			
			//Dark tornado 1
			_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_01",_x_pos - 60,_y_pos+15,0,_object.mirror,true,false,noone); 
			_prop.wave_x_center = _x_pos - 60;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos - 60,_prop.y_pos-5,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 2;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos - 60,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 4;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos - 60,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 6;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos - 60,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 8;
			
			//Dark tornado 2
			_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_01",_x_pos + 60,_y_pos+5,0,_object.mirror,true,false,noone); 
			_prop.wave_x_center = _x_pos + 60;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos + 60,_prop.y_pos-15,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 2;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos + 60,_prop.y_pos-25,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 4;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos + 60,_prop.y_pos-25,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 6;
			
			_prop = _new_prop;
			
			_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Whirlwind_Dark_02_Following",_x_pos + 60,_prop.y_pos-25,0,_object.mirror,true,false,noone); 
			_new_prop.obj_following = _prop;
			_new_prop.start_delay = 8;
		break;
	}
	
	_object.event_timer = _object.max_event_timer;
	_object.waiting_for_event = true;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_AU_Blast(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	var _rotation;// = choose(0,90,180,270);
	var _rand;
	var _mirror = 1;
	
	if(Chance(.1)||((Battle_Prop_Count("AU_Blast_Wind_Spark")<=0))){
		_rand = irandom_range(-30,30);
		_rotation = choose(0,180);
		_mirror = 1;
		if(_rand >= 0 && _rotation = 180){
			_mirror = -1;
		}
		else if(_rand < 0 && _rotation = 0){
			_mirror = -1;
		}
		Create_Battle_Cutscene_Prop("AU_Blast_Wind_Spark",_x_pos + _rand,_y_pos+ irandom_range(-60,5),_rotation,_mirror,false,false,noone);
	}
	if(Chance(.25)||((Battle_Prop_Count("AU_Blast_Quick_Wind")<=0))){
		_rand = irandom_range(-15,15);
		_rotation = choose(0,180);
		_mirror = 1;
		if(_rand >= 0 && _rotation = 180){
			_mirror = -1;
		}
		else if(_rand < 0 && _rotation = 0){
			_mirror = -1;
		}
		Create_Battle_Cutscene_Prop("AU_Blast_Quick_Wind",_x_pos + _rand,_y_pos+ irandom_range(-60,5),_rotation,_mirror,false,false,noone);
	}
	
	if(_object.effect_level != 1){
		if(((Battle_Prop_Count("AU_Blast_Lil_Dust")<=0))){
			var _new_prop = noone;
			var _prop = Get_Battle_Prop("AU_Blast_Whirlwind_01");
		
			if(_prop != noone){
				_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Lil_Dust",_prop.x_pos+10,_prop.y_pos+10,0,_object.mirror,false,false,noone);
			
				_new_prop = Create_Battle_Cutscene_Prop("AU_Blast_Lil_Dust",_prop.x_pos-10,_prop.y_pos+10,0,_object.mirror * -1,false,false,noone);
				_new_prop.start_delay = 2;
			}
		}
	}
	
	if((_object.effect_level = 3 || _object.effect_level = 4)&&(Chance(.05)||((Battle_Prop_Count("AU_Blast_Green_Wind_Explosion")<=0)&&(Battle_Prop_Count("AU_Blast_Green_Wind_Explosion_Dark")<=0)))){
		_rand = irandom_range(-40,40);
		_rotation = choose(0,180);
		_mirror = 1;
		if(_rand >= 0 && _rotation = 180){
			_mirror = -1;
		}
		else if(_rand < 0 && _rotation = 0){
			_mirror = -1;
		}
		Create_Battle_Cutscene_Prop(choose("AU_Blast_Green_Wind_Explosion","AU_Blast_Green_Wind_Explosion_Dark"),_x_pos + _rand,_y_pos+ irandom_range(-80,5),_rotation,_mirror,false,false,noone);
	}
	
	
}