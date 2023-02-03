function Battle_Prop_Stats_SF2_Prism_Flower_Projectile(_stat){
	var _sprite = spr_SF2_Prism_Flower_Projectile;
	var _animation_speed = 0;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Loop_Event_SF2_Prism_Flower_Projectile(_prop){
	if(!_prop.prop_tags[0]){
		if(_prop.x_pos >= Get_Battle_Cutscene_Character_Draw_Location(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target),"X_Pos",0)){//did we hit the target?
	        _prop.prop_tags[0] = true;
	        with(obj_Battle_Cutscene_Controller){
				event_perform(ev_other,ev_user0);
		    }
	    }
	}
}