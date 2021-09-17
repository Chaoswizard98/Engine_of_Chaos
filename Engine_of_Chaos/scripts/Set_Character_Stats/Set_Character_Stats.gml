function Set_Character_Stats(){
	var _character;
	_character = argument[0];

	if(argument_count > 1){
	    _character.character_ID = argument[1];
	}

	//Set character stats
	var _script = asset_get_index("Town_Character_Stats_"+_character.character_ID);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			script_execute(_script,_character);//run the script
		}
	}
	
	Set_Appearance(_character);
	
	
	//with(_character){
	  /*
	    //========
	    //ENEMIES=
	    //========
	        case "Wolf": Set_Enemy_Wolf_Stats(_character); break;
	        case "Alpha_Wolf": Set_Enemy_Alpha_Wolf_Stats(_character); death_flag_script = "Important_Character_1"; break;
	        case "Bandit": Set_Enemy_Bandit_Stats(_character); break;
	        case "Bandit_Archer": Set_Enemy_Bandit_Archer_Stats(_character); break;
	        case "Forest_Serpent": Set_Enemy_Forest_Serpent_Stats(_character); break;
	        case "Bat": Set_Enemy_Bat_Stats(_character); break;
        
	        case "Prism_Flower": Set_Enemy_Prism_Flower_Stats(_character); break;
	        case "Burst_Rock": Set_Enemy_Burst_Rock_Stats(_character); break;
	    //========
	    //SUMMONS=
	    //========
	        case "Wolf_Summon": Set_Wolf_Summon_Stats(_character); break;
        
	    //======
	    //=NPCs=
	    //======
	        case "Chaos":
	            name = "Chaos";//Name
	            overworld_sprite_ID = "Chaos";//Overworld Sprite
	            portrait_ID = "Chaos";//Portrait Sprite
	            voice_ID = "Chaos";//Character Voice
	        break;
	        case "Astral":
	            name = "Sir Astral";//Name
	            overworld_sprite_ID = "Astral";//Overworld Sprite
	            portrait_ID = "Astral";//Portrait Sprite
	            voice_ID = "Astral";//Character Voice
	        break;
	        case "Jamie":
	            name = "Jamie";//Name
	            overworld_sprite_ID = "Jamie";//Overworld Sprite
	            portrait_ID = "Jamie";//Portrait Sprite
	            voice_ID = "Jamie";//Character Voice
	        break;
        
*/
}