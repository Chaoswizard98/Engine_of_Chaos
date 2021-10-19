function Town_Character_Stats_SF2_Burst_Rock(_character){
	with(_character){
		name = "Burst Rock";//Name
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
		
		max_attack_range = 0;
	    min_attack_range = -1;
	    attack_size = 3;
	    void_damage = 10;
	    attack_target_type = "Ally";
	    attack_select_type = "All";
	    agility = 1;
	    special_attack = 100;
	    special_attack_type = "SF2_Burst_Rock";
	    movement_range = 10;
	    //attack_pattern = "Burst_Rock";
	    battle_cutscene_death_event = "SF2_Burst_Rock";
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_SF2_Burst_Rock(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_SF2_Burst_Rock_Overworld;
	var _portrait = noone;
	var _voice = sfx_Dialogue07;
	var _battle_sprite = "SF2_Burst_Rock";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}

//===================
//Battle Sprite Setup
//===================
function Get_Battle_Sprite_Stats_SF2_Burst_Rock(_animation,_stat){
	//=============
	//Default Stats (Assume Idle Animation)
	//=============
	var _parent_animation = _animation;
	var _location = "Background"; //Foreground or Background
	var _sprite = spr_SF2_Burst_Rock_Idle; //Sprite
	var _animation_speed = .125; //Animation Speed
	var _projectile_type = "Weapon"; //Projectile Sprite ("Weapon" uses sprite set via item's script)
	var _projectile_path = "Default"; //Path of the projectile ("Default" = straight line, "Arc" = long volley)
	var _event_type = "Default"; //Battle Cutscene event script to run (laser eye / prism flowers /etc)
	var _use_controller_animation = false; //Use builtin controller animation (Take hit / death / appear, are handled by the object itself)
	
	//===================
	//Animation Overrides
	//===================
	switch(_animation){
		case "Melee_Attack": _sprite = spr_SF2_Burst_Rock_Attack; _event_type = "SF2_Burst_Rock"; break;
		case "Death": _sprite = spr_SF2_Burst_Rock_Idle; _use_controller_animation = false; break;
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