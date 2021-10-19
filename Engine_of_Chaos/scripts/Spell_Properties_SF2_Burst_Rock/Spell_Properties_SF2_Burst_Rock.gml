function Spell_Stats_SF2_Burst_Rock(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Burst_Rock","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Burst_Rock","Menu_Name");//Get name from language script
	target_type = "All";
	select_type = "All";
	void_damage = 10;
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_SF2_Burst_Rock(_object){
	var _x_pos = 0;
	var _y_pos = 0;
	var _width = obj_Battle_Cutscene_Controller.scene_width;
	var _height = obj_Battle_Cutscene_Controller.scene_height;
	
	Set_Battle_Cutscene_Prop_Spawn_Region(_object,_x_pos,_y_pos,_width,_height,false);
	_object.event_timer = _object.max_event_timer;
	_object.waiting_for_event = true;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_SF2_Burst_Rock(_object){
	if((Chance(.5))||(instance_number(obj_Battle_Cutscene_Prop)<=0)){//If the random number was higher than 50, then create a fireball
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
	}
}