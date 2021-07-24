function Create_Battle_Cutscene_Character() {
	var _character = argument[0];
	var _position = argument[1];
	var _animation = argument[2];

	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Battle_Cutscene_Character);
	_this.character = _character;

	if(Get_Battle_Cutscene_Sprite_Stats(Get_Character_Battle_Cutscene_Sprite("Local",_character,"Total"),_animation,"Location")="Foreground"){//Foreground Position
	    _this.location = "Foreground";
	    if(_position = "Normal"){
	        _this.position = "Right";
	    }
	    else{
	        _this.position = "Left";
	    }
	    if(Get_Equipped_Item("Local",_character,0) != "none"){//if they have a weapon equipped
	        _this.weapon_object = Create_Battle_Cutscene_Weapon(_this);
	    }
	}
	else{//Background Position
	    _this.location = "Background";
	    if(_position = "Normal"){
	        _this.position = "Left";
	    }
	    else{
	        _this.position = "Right";
	    }
	}

	_this.display_type = _this.position;//Set Battle HUD draw location

	Play_Battle_Animation(_this,_animation,false,false,false);

	return _this;



}
