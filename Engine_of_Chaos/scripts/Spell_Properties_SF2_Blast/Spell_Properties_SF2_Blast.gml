function Spell_Stats_SF2_Blast(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Blast","Spell_Name","Blast");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Blast","Menu_Name","Blast");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 3;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(33,219,222);
	tint_color = make_color_rgb(181,182,181);
    
	switch(_effect_level){
	    case 1: wind_damage = 6; max_target_range = 1; area = 1; magic_cost = 2; break;
	    case 2: wind_damage = 8; max_target_range = 2; area = 2; magic_cost = 5; break;
	    case 3: wind_damage = 12; max_target_range = 2; area = 2; magic_cost = 8; break;
	    case 4: wind_damage = 30; max_target_range = 2; area = 1; magic_cost = 8; break;
	}
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_SF2_Blast(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	Set_Battle_Cutscene_Tint_Color(_object.tint_color);
	obj_Spell_Controller.max_prop_timer = 1;
	
	switch(_object.position){
	    case "Left": Set_Battle_Cutscene_Prop_Spawn_Region(_object,12,-12,120,120,false);/*Set_Battle_Cutscene_Prop_Spawn_Region(_object,36,8,80,80,false);*/ break; //object,x,y,w,h,mirror
	    case "Right": Set_Battle_Cutscene_Prop_Spawn_Region(_object,56-40,56-20,40,40,true); break; //object,x,y,w,h,mirror
	}

	if((_object.effect_level = 3) || (_object.effect_level = 4)){
		var _this = Create_Battle_Cutscene_Prop("SF2_Blast_Tornado",_x_pos,_y_pos,0,_object.mirror,true,false,noone); 
		_this.prop_tags[0] = "Start";
		Battle_Prop_Movement_End_Event_SF2_Blast_Tornado(_this);
	}
	
	_object.event_timer = _object.max_event_timer;
	_object.waiting_for_event = true;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_SF2_Blast(_object){
	
	var _width = 28;//(_object.max_x - _object.min_x)/3;
	var _height = 28;//(_object.max_y - _object.min_y)/3;
	
	if(Battle_Prop_Count("SF2_Blast_Slice")<=0){
		var _rotation = 90 * irandom_range(1,4);
		var _this = Create_Battle_Cutscene_Prop("SF2_Blast_Slice",random_range(_object.min_x+_width,_object.max_x-_width),random_range(_object.min_y+_height,_object.max_y-_height),_rotation,_object.mirror,false,false,sfx_Blast);
	}
	
	with(obj_Battle_Cutscene_Prop){
		if(prop = "SF2_Blast_Tornado"){
			if(Battle_Prop_Count("SF2_Blast_Tornado_Dust")<=0){
				Create_Battle_Cutscene_Prop("SF2_Blast_Tornado_Dust",x_pos,y_pos,0,1,false,false,noone);
			}
		}
	}
	
	
	var _prop_1 = "none";
	var _prop_2 = "none";
	
	switch(_object.effect_level){
			case 1: _prop_1 = "SF2_Blast_Slash_Small_1"; _prop_2 = "SF2_Blast_Slash_Small_2"; break;	
			case 2: _prop_1 = "SF2_Blast_Slash_1"; _prop_2 = "SF2_Blast_Slash_2"; break;
			case 3: _prop_1 = "SF2_Blast_Slash_Small_1"; _prop_2 = "SF2_Blast_Slash_Small_2"; break;
			case 4: _prop_1 = "SF2_Blast_Slash_1"; _prop_2 = "SF2_Blast_Slash_2"; break;
		}
	
	if((Chance(.5))||((Battle_Prop_Count(_prop_1)<=0)&&(Battle_Prop_Count(_prop_2)<=0))){
		var _this = noone;
		var _speed = 8;
		var _distance = 60;
		_height = (_object.max_y - _object.min_y)/3;
		
		switch(irandom_range(1,6)){
			case 1: 
				_this = Create_Battle_Cutscene_Prop(_prop_2,random_range(_object.min_x,_object.min_x+_width),random_range(_object.min_y,_object.min_y+_height),0,_object.mirror,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos+_distance,_this.y_pos+_distance,_speed);
			break;
			//case 2: 
			//	_this = Create_Battle_Cutscene_Prop("SF2_Blast_Slash_1",random_range(_object.min_x+_width,_object.min_x+(2*_width)),random_range(_object.min_y,_object.min_y+_height),270,_object.mirror,true,false,sfx_Blast);
			//	Set_Battle_Prop_Movement(_this,_this.x_pos,_this.y_pos+80,_speed);
			//break;
			case 2: 
				_this = Create_Battle_Cutscene_Prop(_prop_2,random_range(_object.max_x-_width,_object.max_x),random_range(_object.min_y,_object.min_y+_height),270,_object.mirror,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos-_distance,_this.y_pos+_distance,_speed);
			break;
			case 3: 
				_this = Create_Battle_Cutscene_Prop(_prop_1,random_range(_object.min_x,_object.min_x+_width),random_range(_object.min_y+_height,_object.max_y-_height),0,_object.mirror,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos+_distance,_this.y_pos,_speed);
			break;
			case 4: 
				_this = Create_Battle_Cutscene_Prop(_prop_1,random_range(_object.max_x-_width,_object.max_x),random_range(_object.min_y+_height,_object.max_y-_height),0,_object.mirror*-1,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos-_distance,_this.y_pos,_speed);
			break;
			case 5: 
				_this = Create_Battle_Cutscene_Prop(_prop_2,random_range(_object.min_x,_object.min_x+_width),random_range(_object.max_y-_height,_object.max_y),90,_object.mirror,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos+_distance,_this.y_pos-_distance,_speed);
			break;
			//case 7: 
			//	_this = Create_Battle_Cutscene_Prop("SF2_Blast_Slash_1",random_range(_object.min_x+_width,_object.min_x+(2*_width)),random_range(_object.min_y+(2*_height),_object.max_y),90,_object.mirror,true,false,sfx_Blast);
			//	Set_Battle_Prop_Movement(_this,_this.x_pos,_this.y_pos-80,_speed);
			//break;
			case 6: 
				_this = Create_Battle_Cutscene_Prop(_prop_2,random_range(_object.max_x-_width,_object.max_x),random_range(_object.max_y-_height,_object.max_y),180,_object.mirror,true,false,sfx_Blast);
				Set_Battle_Prop_Movement(_this,_this.x_pos-_distance,_this.y_pos-_distance,_speed);
			break;
		}
		
		if(_this != noone){
			_this.action = "none";//dont move until after animation wraps
		}
	}
}