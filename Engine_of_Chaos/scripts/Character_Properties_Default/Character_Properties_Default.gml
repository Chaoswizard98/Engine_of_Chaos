//======================
//Character Object Setup
//======================
function Town_Character_Stats_Default(_character){
	with(_character){
				
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Default(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Chaos_Overworld; 
	var _portrait = noone;
	var _voice = sfx_Dialogue01;
	var _battle_sprite = spr_Blank_Sprite;
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
		case "Overworld": return Fix_Overworld_Sprite_Origin(_overworld_sprite); break;
		case "Portrait": return _portrait; break;
		case "Voice": return _voice; break;
		case "Battle_Cutscene": return _battle_sprite; break;
	}
}

//===================
//Battle Sprite Setup
//===================
function Get_Battle_Sprite_Stats_Default(_animation,_stat){
	var _parent_animation = _animation;
	var _location = "Background";
	var _sprite = spr_Blank_Sprite;
	var _animation_speed = .0625;
	var _projectile_type = "Weapon";
	var _projectile_path = "Default";
	var _event_type = "Default";
	var _use_controller_animation = false;
	
	switch(_animation){
		case "Idle": break;
	    case "Melee_Attack": _parent_animation = "Idle"; break;
	    case "Ranged_Attack": _parent_animation = "Melee_Attack"; break;
	    case "Cast_Spell": _parent_animation = "Melee_Attack"; break;
	    case "Speak_Word": _parent_animation = "Cast_Spell"; break;
	    case "Use_Item": _parent_animation = "Melee_Attack"; break;
	    case "Block": _parent_animation = "Idle"; break;
	    case "Melee_Crit": _parent_animation = "Melee_Attack"; break;
	    case "Ranged_Crit": _parent_animation = "Ranged_Attack"; break;
	    case "Take_Hit": _use_controller_animation = true; break;
	    case "Death": _use_controller_animation = true; break;
	    case "Appear": _use_controller_animation = true; break;
	    default: _parent_animation = "Idle"; break;
	}
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
	    case "Parent_Animation": return _parent_animation; break;
	    case "Sprite": return _sprite; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Location": return _location; break;
	    case "Use_Controller_Animation": return _use_controller_animation; break;
	    case "Projectile_Path": return _projectile_path; break;
	    case "Projectile_Type": return _projectile_type; break;
	    case "Event_Type": return _event_type; break;
	    default: return 0; break;
	}
}
//===============================
//Battle Cutscene Weapon Position
//===============================
function Get_Weapon_Position_Default(_object,_stat){
	var _sprite = _object.sprite_index;
	var _frame = _object.current_frame;

	var _x_pos = 0;//x hand location
	var _y_pos = 0;//y hand location
	var _weapon_frame = -1;//frame of weapon sprite to draw
	var _rotation = 0;//rotation of the weapon
	var _animation_speed = 0;//animation speed
	var _mirror = 1;//scale of the weapon (-1 for mirror)
	var _hidden = true;//If we hide the weapons this frame. (Arrows are no longer drawn once fired)

	switch(_stat){
	    case "X_Pos": return _x_pos; break;
	    case "Y_Pos": return _y_pos; break;
	    case "Frame": return _weapon_frame; break;
	    case "Rotation": return _rotation; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Mirror": return _mirror; break;
	    case "Hidden": return _hidden; break;
	}
}