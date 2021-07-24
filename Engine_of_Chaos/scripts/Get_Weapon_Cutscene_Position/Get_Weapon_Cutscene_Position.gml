function Get_Weapon_Cutscene_Position() {
	var _object = argument[0];
	var _return_stat = argument[1];
	var _character_sprite = _object.sprite_index;
	var _character_frame = _object.current_frame;


	var _x_pos = 0;//x hand location
	var _y_pos = 0;//y hand location
	var _frame = -1;//frame of weapon sprite to draw
	var _rotation = 0;//rotation of the weapon
	var _animation_speed = 0;//animation speed
	var _mirror = 1;//scale of the weapon (-1 for mirror)
	var _hidden = false;//If we hide the weapons this frame. (Arrows are no longer drawn once fired)

	if(_object.position = "Left"){//If the character is in the alt position
	    _mirror = -1;//mirror the sprite
	}

	switch(_character_sprite){
	    //======
	    //Jason=
	    //======
	    case spr_Jason_Idle:
	        switch(_character_frame){
	            default: _x_pos = 60; _y_pos = 55; _rotation = 340; break;
	        }
	    break;
	    case spr_Jason_Attack:
	        switch(_character_frame){
	            case 0:  _x_pos = 74; _y_pos = 34; _rotation = 340; break;
	            case 1: case 2: _x_pos = 59; _y_pos = 69; _rotation = 135; break;
	            default: _x_pos = 60; _y_pos = 55; _rotation = 340; break;
	        }
	    break;
	    case spr_Jason_Block:
	        switch(_character_frame){
	            case 1: case 2: _x_pos = 77; _y_pos = 42; _rotation = 135; break;
	            default: _x_pos = 60; _y_pos = 55; _rotation = 340; break;
	        }
	    break;
	    //====
	    //Max=
	    //====
	    case spr_Max_Idle:
	        switch(_character_frame){
	            case 1: _x_pos = 74; _y_pos = 51; _rotation = 45; break;
	            default: _x_pos = 74; _y_pos = 52; _rotation = 45; break;
	        }
	    break;
	    case spr_Max_Attack:
	        switch(_character_frame){
	            case 1: case 2: _x_pos = 88; _y_pos = 47; _rotation = 0; _hidden = true; break;
	            default: _x_pos = 88; _y_pos = 47; _rotation = 0; break;
	        }
	    break;
	    case spr_Max_Block:
	        switch(_character_frame){
	            case 1: case 2: _x_pos = 78; _y_pos = 50; _rotation = 0; break;
	            default: _x_pos = 74; _y_pos = 52; _rotation = 45; break;
	        }
	    break;
	    //======
	    //Ciera=
	    //======
	    case spr_Ciera_Idle:
	        switch(_character_frame){
	            default: _x_pos = 93; _y_pos = 45; _rotation = 0; break;
	        }
	    break;
	    case spr_Ciera_Attack:
	        switch(_character_frame){
	            case 0:  _x_pos = 86; _y_pos = 18; _rotation = 0; break;
	            case 1: case 2: _x_pos = 61; _y_pos = 47; _rotation = 90; break;
	            default: _x_pos = 93; _y_pos = 45; _rotation = 0; break;
	        }
	    break;
	    case spr_Ciera_Block:
	        switch(_character_frame){
	            case 1: case 2: _x_pos = 84; _y_pos = 42; _rotation = 30; break;
	            default: _x_pos = 93; _y_pos = 45; _rotation = 0; break;
	        }
	    break;
	    case spr_Ciera_Cast:
	        switch(_character_frame){
	            case 0:  _x_pos = 84; _y_pos = 42; _rotation = 30; break;
	            case 1: case 2:  _x_pos = 86; _y_pos = 18; _rotation = 0; break;
	            default: _x_pos = 93; _y_pos = 45; _rotation = 0; break;
	        }
	    break;
	    //=====
	    //Kira=
	    //=====
	    //=======
	    //Karina=
	    //=======
	    //========
	    //Phillip=
	    //========
    
	    //========
	    //Enemies= (Only final frame needed for projectile purposes)
	    //========
	    case spr_Bandit_Archer_Attack: _x_pos = 70; _y_pos = 42; _rotation = 0; _hidden = true; break;//Bandit_Archer=
	    case spr_Prism_Flower_Idle: _x_pos = 46; _y_pos = 24; _hidden = true; break;//Prism Flower=
	    default: _hidden = true; break;
	}

	//adjust based on origin location (so we dont need to do math ourselves)
	_x_pos -= sprite_get_xoffset(_character_sprite);
	_y_pos -= sprite_get_yoffset(_character_sprite);
	_rotation *= _mirror;

	switch(_return_stat){
	    case "X_Pos": return _x_pos; break;
	    case "Y_Pos": return _y_pos; break;
	    case "Frame": return _frame; break;
	    case "Rotation": return _rotation; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Mirror": return _mirror; break;
	    case "Hidden": return _hidden; break;
	}



}
