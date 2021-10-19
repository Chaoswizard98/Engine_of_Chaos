//======================
//Character Object Setup
//======================
function Town_Character_Stats_Ciera(_character){
	with(_character){
		Set_Town_Party_Member_Stats(2);
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Ciera(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Ciera_Overworld; 
	var _portrait = spr_Ciera_Portrait;
	var _voice = sfx_Dialogue03;
	var _battle_sprite = "Ciera_HEAL";
	
	var _overworld_override = noone;
	var _portrait_override = noone;
	var _voice_override = noone;
	var _battle_sprite_override = "none";
	
	//=============
	//Class Sprites
	//=============
	switch(Get_Character_Class(_lookup_type,_character,"Abbreviation")){
		case "PRST": _overworld_sprite = spr_Chicken_Overworld; break;
	}
	//=====================
	//Set costume overrides
	//=====================
	if(Character_Is_Dead(_lookup_type,_character)){//if character is dead
		_overworld_override = spr_Death_Flame_Overworld;
	}
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
		case "Overworld": return Fix_Overworld_Sprite_Origin(Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_overworld_sprite),_overworld_override)); break;
		case "Portrait": return Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_portrait),_portrait_override); break;
		case "Voice": return Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_voice),_voice_override); break;
		case "Battle_Cutscene": return Check_Stat_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_battle_sprite),_battle_sprite_override); break;
	}
}

//===================
//Battle Sprite Setup
//===================
function Get_Battle_Sprite_Stats_Ciera_HEAL(_animation,_stat){
	//=============
	//Default Stats (Assume Idle Animation)
	//=============
	var _parent_animation = _animation;
	var _location = "Foreground"; //Foreground or Background
	var _sprite = spr_Ciera_Idle; //Sprite
	var _animation_speed = .0625; //Animation Speed
	var _projectile_type = "Weapon"; //Projectile Sprite ("Weapon" uses sprite set via item's script)
	var _projectile_path = "Default"; //Path of the projectile ("Default" = straight line, "Arc" = long volley)
	var _event_type = "Default"; //Battle Cutscene event script to run (laser eye / prism flowers /etc)
	var _use_controller_animation = false; //Use builtin controller animation (Take hit / death / appear, are handled by the object itself)
	
	//===================
	//Animation Overrides
	//===================
	switch(_animation){
		case "Melee_Attack": _sprite = spr_Ciera_Attack; break;
		case "Block": _sprite = spr_Ciera_Block; break;
		case "Cast_Spell": _sprite = spr_Ciera_Cast; break;
		default: //Run parent animation by default if child isn't set (ranged / spell_cast runs melee, etc.)
			_parent_animation = Get_Battle_Sprite_Stats_Default(_animation,"Parent_Animation");
			_use_controller_animation = Get_Battle_Sprite_Stats_Default(_animation,"Use_Controller_Animation");
		break;
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
function Get_Weapon_Position_Ciera_HEAL(_object,_stat){
	var _sprite = _object.sprite_index;
	var _frame = _object.current_frame;

	var _x_pos = 0;//x hand location
	var _y_pos = 0;//y hand location
	var _weapon_frame = -1;//frame of weapon sprite to draw
	var _rotation = 0;//rotation of the weapon
	var _animation_speed = 0;//animation speed
	var _mirror = 1;//scale of the weapon (-1 for mirror)
	var _hidden = false;//If we hide the weapons this frame. (Arrows are no longer drawn once fired)
	var _layer = "Below";//Do we draw the weapon above or below the character?
	
	if(_object.position = "Left"){//If the character is in the alt position
	    _mirror = -1;//mirror the sprite
	}
	
	//=================
	//Set Hand Position (Position of character's hand in sprite editor)
	//=================
	switch(_sprite){
	    case spr_Ciera_Idle:
	        switch(_frame){
	            default: _x_pos = 93; _y_pos = 45; _rotation = 0; break;
	        }
	    break;
	    case spr_Ciera_Attack:
	        switch(_frame){
	            case 0:  _x_pos = 86; _y_pos = 18; _rotation = 0; break;
	            case 1: _x_pos = 61; _y_pos = 47; _rotation = 90; break;
	        }
	    break;
	    case spr_Ciera_Block:
	        switch(_frame){
	            case 0: _x_pos = 84; _y_pos = 42; _rotation = 30; break;
	        }
	    break;
	    case spr_Ciera_Cast:
	        switch(_frame){
	            case 0:  _x_pos = 84; _y_pos = 42; _rotation = 30; break;
	            case 1: _x_pos = 86; _y_pos = 18; _rotation = 0; break;
	        }
	    break;
	    default: _hidden = true; break;
	}
	
	//============
	//Return Stats
	//============
	_x_pos -= sprite_get_xoffset(_sprite);//adjust based on origin location (so we dont need to do math ourselves)
	_y_pos -= sprite_get_yoffset(_sprite);
	_rotation *= _mirror;

	switch(_stat){
	    case "X_Pos": return _x_pos; break;
	    case "Y_Pos": return _y_pos; break;
	    case "Frame": return _weapon_frame; break;
	    case "Rotation": return _rotation; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Mirror": return _mirror; break;
	    case "Hidden": return _hidden; break;
		case "Layer": return _layer; break;
		default: return Get_Weapon_Position_Default(_object,_stat); break;
	}
}