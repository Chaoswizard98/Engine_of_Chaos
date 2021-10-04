function Blaze_Create_Event(_object){
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	Set_Battle_Cutscene_Tint_Color(_object.tint_color);
	
	with(_object){
	    switch(position){
	        case "Left": Set_Battle_Cutscene_Prop_Spawn_Region(id,-10,-20,128,20,false); break; //object,x,y,w,h,mirror
	        case "Right": Set_Battle_Cutscene_Prop_Spawn_Region(id,-10,-20,128,20,true); break; //object,x,y,w,h,mirror
	    }

	    
	    switch(effect_level){
	        case 1:
	            Create_Battle_Cutscene_Prop("Blaze_Fire_1",_x_pos,_y_pos,0,mirror,true,false,noone);
	        break;
	        case 2:
	            looping_effect = "Blaze_Level_2";
	        break;
	        case 3:
	            Create_Battle_Cutscene_Prop("Blaze_Fire_1",_x_pos,_y_pos,0,mirror,true,false,noone);
	            looping_effect = "Blaze_Level_2";
	        break;
	    }
    
	    if(prop_event_type != "Projectile"){
	        event_timer = max_event_timer;
	        waiting_for_event = true;
	    }
	}
}