function Get_Projectile_Setup() {
	var _character = argument[0];
	var _animation = argument[1];
	var _return_stat = argument[2];
	var _cutscene_character = Get_Battle_Cutscene_Character(_character);
	var _character_sprite = _cutscene_character.sprite_ID;

	//Stats
	var _projectile = "none";

	var _start_x = _cutscene_character.x_pos + Get_Weapon_Cutscene_Position(_cutscene_character,"X_Pos");
	var _start_y = _cutscene_character.y_pos + Get_Weapon_Cutscene_Position(_cutscene_character,"Y_Pos");
	var _projectile_path = Get_Battle_Cutscene_Sprite_Stats(_character_sprite,_animation,"Projectile_Path");

	_projectile = Get_Battle_Cutscene_Sprite_Stats(_character_sprite,_animation,"Projectile_Type");
	if(_projectile = "Weapon"){//if we're using the item stats,
	    _projectile = Get_Equipped_Item_Stats("Local",_character,0,"Projectile");//use item stats (mainhand)
	}


	switch(_return_stat){
	    case "Start_X": return _start_x break;
	    case "Start_Y": return _start_y break;
	    case "Projectile": return _projectile; break;
	    case "Projectile_Path": return _projectile_path break;
	}







}
