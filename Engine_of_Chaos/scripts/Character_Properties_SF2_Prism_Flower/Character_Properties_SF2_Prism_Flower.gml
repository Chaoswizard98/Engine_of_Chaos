function Town_Character_Stats_SF2_Prism_Flower(_character){
	with(_character){
		name = "Prism Flower";//Name
	    faction = "Enemy";//Faction
	    gold_value = 10;
	    level = 1;
	    max_health = 8;
	    current_health = max_health;
	    attack = 8;
	    defense = 5;
	    agility = 3;
	    movement_range = 0;
	    movement_type = "Fast";
		attack_size = -1;
	    max_attack_range = -1;
		attack_range_type = "SF2_Prism_Flower";
	    agility = 99;
	    special_attack = 100;
	    special_attack_type = "SF2_Prism_Flower";
		attack_pattern = "SF2_Prism_Flower";
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_SF2_Prism_Flower(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_SF2_Prism_Flower_Overworld;
	var _portrait = noone;
	var _voice = sfx_Dialogue07;
	var _battle_sprite = "SF2_Prism_Flower";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}

//===================
//Battle Sprite Setup
//===================
function Get_Battle_Sprite_Stats_SF2_Prism_Flower(_animation,_stat){
	//=============
	//Default Stats (Assume Idle Animation)
	//=============
	var _parent_animation = _animation;
	var _location = "Background"; //Foreground or Background
	var _sprite = spr_SF2_Prism_Flower_Idle; //Sprite
	var _animation_speed = .125; //Animation Speed
	var _projectile_type = "Weapon"; //Projectile Sprite ("Weapon" uses sprite set via item's script)
	var _projectile_path = "Default"; //Path of the projectile ("Default" = straight line, "Arc" = long volley)
	var _event_type = "SF2_Prism_Flower"; //Battle Cutscene event script to run (laser eye / prism flowers /etc)
	var _use_controller_animation = false; //Use builtin controller animation (Take hit / death / appear, are handled by the object itself)
	
	//===================
	//Animation Overrides
	//===================
	switch(_animation){
		case "Block": _sprite = spr_SF2_Prism_Flower_Block; break;
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
function Get_Weapon_Position_SF2_Prism_Flower(_object,_stat){
	var _sprite = _object.sprite_index;

	var _x_pos = 45;//x hand location
	var _y_pos = 24;//y hand location
	var _weapon_frame = -1;//frame of weapon sprite to draw
	var _rotation = 0;//rotation of the weapon
	var _animation_speed = 0;//animation speed
	var _mirror = 1;//scale of the weapon (-1 for mirror)
	var _hidden = false;//If we hide the weapons this frame. (Arrows are no longer drawn once fired)
	var _layer = "Below";//Do we draw the weapon above or below the character?
	
	if(_object.position = "Right"){//If the character is in the alt position
	    _mirror = -1;//mirror the sprite
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