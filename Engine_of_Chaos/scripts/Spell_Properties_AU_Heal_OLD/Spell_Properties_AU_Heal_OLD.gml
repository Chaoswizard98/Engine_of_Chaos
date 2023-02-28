function Spell_Stats_AU_Heal_OLD(_effect_level,_lookup_type,_character){
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
}

function Spell_Animation_Hit_Event_AU_Heal_OLD(_object) {
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0)-60;
	var _mirror = Get_Battle_Cutscene_Character_Draw_Location(_target,"Mirror",0);

	Create_Battle_Cutscene_Prop("AU_Heal",_x_pos,_y_pos,0,_mirror,false,true,noone);
}