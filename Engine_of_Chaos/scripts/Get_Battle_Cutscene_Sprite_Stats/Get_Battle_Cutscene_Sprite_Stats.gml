function Get_Battle_Cutscene_Sprite_Stats() {
	var _sprite_ID = argument[0];
	var _animation = argument[1];
	var _stat = argument[2];

	var _parent_animation = _animation;//for re-using animation code
	var _sprite = spr_Blank_Sprite;//default to no sprite
	var _animation_speed = .125;//default animation speed
	var _location = "Background";//default to background position
	var _use_controller_animation = false;//Do we rely on the controller for this animation? (Take_Hit)
	var _projectile_path = "Default";//the path the projectile follows (defaults to straight line bow / spear)
	var _projectile_type = "Weapon";//the type of projectile this character uses. (Default's to rely on weapon stats)
	var _event_type = "Default";

	switch(_sprite_ID){
	    case "Noah":
	        _location = "Foreground";
	        _animation_speed = .25;
	        switch(_animation){
	            case "Idle": _sprite = spr_Noah_Idle; break;
	            case "Melee_Attack": _sprite = spr_Noah_Attack; break;
	            case "Block": _sprite = spr_Noah_Block; break;
	            case "Take_Hit": _sprite = spr_Noah_Idle; _use_controller_animation = true; break;
	            case "Death": _sprite = spr_Noah_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Jason_Swordsman":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Jason_Idle; break;
	            case "Melee_Attack": _sprite = spr_Jason_Attack; break;
	            case "Block": _sprite = spr_Jason_Block; break;
	            case "Death": _sprite = spr_Jason_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Jason_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Max_Archer":
	        _location = "Foreground";
	        _animation_speed = .0625;
	        switch(_animation){
	            case "Idle": _sprite = spr_Max_Idle; break;
	            case "Melee_Attack": _sprite = spr_Max_Attack; _projectile_path = "Default_Melee"; break;
	            case "Ranged_Attack": _sprite = spr_Max_Attack; _projectile_path = "Default"; break;
	            case "Block": _sprite = spr_Max_Block; break;
	            case "Death": _sprite = spr_Max_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Max_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Ciera_Healer":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Ciera_Idle; break;
	            case "Melee_Attack": _sprite = spr_Ciera_Attack; break;
	            case "Cast_Spell": _sprite = spr_Ciera_Cast; break;
	            case "Block": _sprite = spr_Ciera_Block; break;
	            case "Death": _sprite = spr_Ciera_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Ciera_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Kira_Thief":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Kira_Idle; break;
	            case "Melee_Attack": _sprite = spr_Kira_Attack; _projectile_type = "none"; break;
	            case "Block": _sprite = spr_Kira_Block; break;
	            case "Death": _sprite = spr_Kira_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Kira_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Karina_Mage":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Karina_Idle; break;
	            case "Melee_Attack": _sprite = spr_Karina_Attack; break;
	            case "Cast_Spell": _sprite = spr_Karina_Attack; break;
	            case "Block": _sprite = spr_Karina_Block; break;
	            case "Death": _sprite = spr_Karina_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Karina_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Phillip_Knight":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Phillip_Idle; break;
	            case "Melee_Attack": _sprite = spr_Phillip_Attack; break;
	            case "Block": _sprite = spr_Phillip_Block; break;
	            case "Death": _sprite = spr_Phillip_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Phillip_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Wolf":
	        _location = "Background";
	        _animation_speed = .125; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Wolf_Idle; break;
	            case "Melee_Attack": _sprite = spr_Wolf_Attack; break;
	            case "Block": _sprite = spr_Wolf_Block; break;
	            case "Death": _sprite = spr_Wolf_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Wolf_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Alpha_Wolf":
	        _location = "Background";
	        _animation_speed = .125; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Alpha_Wolf_Idle; break;
	            case "Melee_Attack": _sprite = spr_Alpha_Wolf_Attack; break;
	            case "Block": _sprite = spr_Alpha_Wolf_Block; break;
	            case "Death": _sprite = spr_Alpha_Wolf_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Alpha_Wolf_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Bandit":
	        _location = "Background";
	        _animation_speed = .0625;
	        switch(_animation){
	            case "Idle": _sprite = spr_Bandit_Idle; break;
	            case "Melee_Attack": _sprite = spr_Bandit_Attack; break;
	            case "Block": _sprite = spr_Bandit_Block; break;
	            case "Death": _sprite = spr_Bandit_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Bandit_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Bandit_Archer":
	        _location = "Background";
	        _animation_speed = .0625;
	        _projectile_path = "Default";
	        switch(_animation){
	            case "Idle": _sprite = spr_Bandit_Archer_Idle; break;
	            case "Melee_Attack": _sprite = spr_Bandit_Archer_Attack; break;
	            case "Block": _sprite = spr_Bandit_Archer_Block; break;
	            case "Death": _sprite = spr_Bandit_Archer_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Bandit_Archer_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Wolf_Summon_Ally":
	        _location = "Foreground";
	        _animation_speed = .125;
	        switch(_animation){
	            case "Idle": _sprite = spr_Wolf_Summon_Ally_Idle; break;
	            case "Melee_Attack": _sprite = spr_Wolf_Summon_Ally_Attack; break;
	            case "Block": _sprite = spr_Wolf_Summon_Ally_Block; break;
	            case "Death": _sprite = spr_Wolf_Summon_Ally_Idle; _use_controller_animation = true; break;
	            case "Appear": _sprite = spr_Wolf_Summon_Ally_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Wolf_Summon_Ally_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Kajye":
	        _location = "Foreground";
	        _animation_speed = .0625;
	        _projectile_path = "Arc";
	        switch(_animation){
	            case "Idle": _sprite = spr_Kajye_Idle; break;
	            case "Melee_Attack": _sprite = spr_Kajye_Attack; break;
	            case "Death": _sprite = spr_Kajye_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Kajye_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Prism_Flower":
	        _location = "Background";
	        _animation_speed = .0625;
	        _projectile_type = "Prism_Flower"
	        switch(_animation){
	            case "Idle": _sprite = spr_Prism_Flower_Idle; break;
	            case "Melee_Attack": _sprite = spr_Prism_Flower_Idle; _event_type = "Prism_Flower"; break;
	            case "Block": _sprite = spr_Prism_Flower_Block; break;
	            case "Death": _sprite = spr_Prism_Flower_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Prism_Flower_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Burst_Rock":
	        _location = "Background";
	        _animation_speed = .125; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Burst_Rock_Idle; break;
	            case "Melee_Attack": _sprite = spr_Burst_Rock_Explode; break;
	            case "Death": _sprite = spr_Burst_Rock_Idle; break;
	            case "Take_Hit": _sprite = spr_Burst_Rock_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
	    case "Chicken":
	        _location = "Foreground";
	        _animation_speed = .0625; 
	        switch(_animation){
	            case "Idle": _sprite = spr_Chicken_Idle; break;
	            case "Death": _sprite = spr_Chicken_Idle; _use_controller_animation = true; break;
	            case "Take_Hit": _sprite = spr_Chicken_Idle; _use_controller_animation = true; break;
	            default: _parent_animation = "Default"; break;
	        }
	    break;
    
	    default:
	        _location = "Foreground";
	        _animation_speed = .25; 
	        _parent_animation = "Default";
	    break;
	}

	//If no animation is set, default to parent animation
	if(_parent_animation = "Default"){
	    switch(_animation){
	        case "Idle": _sprite = spr_Blank_Sprite; _parent_animation = _animation; break;
	        case "Melee_Attack": _parent_animation = "Idle"; break;
	        case "Ranged_Attack": _parent_animation = "Melee_Attack"; break;
	        case "Cast_Spell": _parent_animation = "Melee_Attack"; break;
	        case "Speak_Word": _parent_animation = "Cast_Spell"; break;
	        case "Use_Item": _parent_animation = "Melee_Attack"; break;
	        case "Block": _parent_animation = "Idle"; break;
	        case "Melee_Crit": _parent_animation = "Melee_Attack"; break;
	        case "Ranged_Crit": _parent_animation = "Ranged_Attack"; break;
	        case "Take_Hit": _sprite = spr_Blank_Sprite; _use_controller_animation = true; break;
	        case "Death": _sprite = spr_Blank_Sprite; _use_controller_animation = true; break;
	        case "Appear": _sprite = spr_Blank_Sprite; _use_controller_animation = true; break;
	        default: _parent_animation = "Idle"; break;
	    }
	}




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
