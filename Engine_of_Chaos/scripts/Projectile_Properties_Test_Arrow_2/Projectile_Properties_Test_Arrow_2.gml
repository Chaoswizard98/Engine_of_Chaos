function Projectile_Stats_Test_Arrow_2(_stat){
	var _sprite = spr_Battered_Arrow_Projectile;
	var _animation_speed = 0;
	var _movement_speed = 15;
	
	switch(_stat){
		case "Sprite": return _sprite break;
	    case "Animation_Speed": return _animation_speed break;
	    case "Movement_Speed": return _movement_speed break;
	}
}

function Projectile_Hit_Event_Test_Arrow_2(_object){
	Play_Sound(sfx_Hit);
	Create_Spell_Controller("End_Spell_Flash","SF2_Explosive_Projectile",2,_object.projectile_direction);
	with(obj_Battle_Cutscene_Controller){
		event_perform(ev_other,ev_user0);
    }
	instance_destroy(_object);
}