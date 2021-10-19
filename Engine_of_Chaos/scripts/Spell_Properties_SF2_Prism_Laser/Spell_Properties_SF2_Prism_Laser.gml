function Spell_Stats_SF2_Prism_Laser(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Prism_Laser","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Prism_Laser","Menu_Name");//Get name from language script
	target_type = "All";
	select_type = "All";
	void_damage = 10;
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_SF2_Prism_Laser(_object){
	var _x_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"X_Pos");
	var _y_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"Y_Pos");
	Create_Battle_Cutscene_Prop("SF2_Prism_Flower_Charge",_x_pos,_y_pos,0,_object.mirror,true,false,noone);
	_object.event_tags[0] = "Charging";
	_object.event_tags[1] = 0;
	_object.max_prop_timer = 40;
	_object.prop_timer = 40;
	
	Set_Battle_Cutscene_Prop_Spawn_Region(_object,128,0,10,86,_object.mirror);
	_object.waiting_for_event = false;
	
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_SF2_Prism_Laser(_object){
	//Spawn particles and update charge size
	if(_object.event_tags[0] = "Charging"){
		_object.prop_timer -= 1;
	    if(_object.prop_timer <= 0){
	        _object.prop_timer = _object.max_prop_timer;
			_object.event_tags[1] += 1;
		}
		
		if(Chance(.3)||(Battle_Prop_Count("SF2_Prism_Flower_Particle") = 0)){
	        var _x_pos = random_range(_object.min_x,_object.max_x);
	        var _y_pos = random_range(_object.min_y,_object.max_y);
	        audio_stop_sound(sfx_Dialogue04);
	        var _this = Create_Battle_Cutscene_Prop("SF2_Prism_Flower_Particle",_x_pos,_y_pos,0,1,false,false,sfx_Dialogue04);
		
			_x_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"X_Pos");
			_y_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"Y_Pos");
	        Set_Battle_Prop_Movement(_this,_x_pos,_y_pos,1);
	    }
		
		if(_object.event_tags[1] >= 5){
			_object.event_tags[0] = "Fully_Charged";
			Create_Screen_Flash(c_white,0,"in",2,.05,0,1.5,noone);//color, start alpha, direction, iterations,speed,min,max
			with(obj_Battle_Cutscene_Prop){
				if(prop = "SF2_Prism_Flower_Charge"){
					Create_Battle_Cutscene_Prop("SF2_Prism_Flower_Shot",x_pos,y_pos,0,1,false,true,sfx_Prism_Flower_Shot);
				}
			}
		}
		
		with(obj_Battle_Cutscene_Prop){
			if(prop = "SF2_Prism_Flower_Charge"){
				image_index = _object.event_tags[1];
				hidden = false;
				if(_object.event_tags[0] = "Charging"){
					if(Chance(.2)){
						hidden = true;
					}
				}
			}
		}
	}
	
	
	//Charge size max,
	
	/*if((Chance(.5))||(instance_number(obj_Battle_Cutscene_Prop)<=0)){//If the random number was higher than 50, then create a fireball
	    var _x_pos = random_range(_object.min_x,_object.max_x);//Find Random X value to summon fireball at
	    var _y_pos = random_range(_object.min_y,_object.max_y);//Find Random Y value to summon fireball at
	    Create_Battle_Cutscene_Prop("SF2_Explosion_Large",_x_pos,_y_pos,choose(0,90,180,270),1,false,false,noone);
        
	    _x_pos = random_range(_object.min_x,_object.max_x);//Find Random X value to summon fireball at
	    _y_pos = random_range(_object.min_y,_object.max_y);//Find Random Y value to summon fireball at
	    Create_Battle_Cutscene_Prop("SF2_Explosion_Small",_x_pos,_y_pos,choose(0,90,180,270),1,false,false,noone);
        
	    _x_pos = random_range(_object.min_x,_object.max_x);//Find Random X value to summon fireball at
	    _y_pos = random_range(_object.min_y,_object.max_y);//Find Random Y value to summon fireball at
	    Create_Battle_Cutscene_Prop("SF2_Explosion_Small",_x_pos,_y_pos,choose(0,90,180,270),1,false,false,noone);
        
	    audio_stop_sound(sfx_Boom);
	    Play_Sound(sfx_Boom);
	}*/
}