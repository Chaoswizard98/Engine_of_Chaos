function Effect_Stats_SF2_Explosive_Projectile(_effect_level,_lookup_type,_character){
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
function Spell_Animation_Create_Event_SF2_Explosive_Projectile(_object){
	var _x_pos = 0;
	var _y_pos = 0;
	var _width = obj_Battle_Cutscene_Controller.scene_width/2;
	var _height = obj_Battle_Cutscene_Controller.scene_height;
	
	Set_Battle_Cutscene_Prop_Spawn_Region(_object,_x_pos,_y_pos,_width,_height,false);
	_object.waiting_for_event = false;
}

//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_SF2_Explosive_Projectile(_object){
	Spell_Animation_Loop_Event_SF2_Burst_Rock(_object);
}