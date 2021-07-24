function Execute_Monster_Spawner_Event() {
	//argument 0: spawner
	//argument 1: event
	var _spawner = argument[0];
	var _event = argument[1];
	var _character = noone;

	with(_spawner){
	    switch(spawner_ID){
	        case "Default":
	            if(_event = "Setup"){//apply variables to spawner
	                remaining_units = -1;//number of enemies this will spawn. (-1 for infinite)
	                max_active_units = -1;//max units that can be on the map from this tile at one time
	                cooldown_type = "Round_Start";//when do we update the cooldown timer?
	                cooldown = 1;//cooldown between spawns
	                timer = 0;//timer counts from cooldown to 0
                
	                spawn_criteria = "Turn_Start";//when does this event get triggered?
	                spawn_state = 1;//what region does the player need to be in?
	                attack_on_spawn = true;//does this character attack when spawned in?
	                spawn_action = "none";//action variable, //Immediate_Action
	            }
	            else if(_event = "Spawn_Character"){//spawn character
	                _character = Create_NPC(x,y,"Down","Default",true);//x,y,direction,character_ID,cutscene_mode
	            }
	        break;
	        case "Wolf":
	            if(_event = "Setup"){//apply variables to spawner
	                remaining_units = -1;//number of enemies this will spawn. (-1 for infinite)
	                max_active_units = -1;//max units that can be on the map from this tile at one time
	                cooldown_type = "Round_Start";//when do we update the cooldown timer?
	                cooldown = 0;//cooldown between spawns
	                timer = 0;//timer counts from cooldown to 0
                
	                spawn_criteria = "Turn_Start";//when does this event get triggered?
	                spawn_state = 1;//what region does the player need to be in?
	                attack_on_spawn = true;//does this character attack when spawned in?
	                spawn_action = "none";//action variable, //Immediate_Action
	            }
	            else if(_event = "Spawn_Character"){//spawn character
	                _character = Create_NPC(x,y,"Down","Wolf",true);//x,y,direction,character_ID,cutscene_mode
	            }
	        break;
	        case "Battle_01_Wolf_Cave":
	            if(_event = "Setup"){
	                remaining_units = 3;//number of enemies this will spawn. (-1 for infinite)
	                max_active_units = -1;//max units that can be on the map from this tile at one time
	                cooldown_type = "Turn_Start";//when do we update the cooldown timer?
	                cooldown = 0;//cooldown between spawns
	                timer = 0;//timer counts from cooldown to 0
                
	                spawn_criteria = "Turn_Start";//when does this event get triggered?
	                spawn_state = 2;//what region does the player need to be in?
	                attack_on_spawn = true;//does this character attack when spawned in?
	                spawn_action = "none";//action variable, //Immediate_Action
	            }
	            else if(_event = "Spawn_Character"){
	                if(remaining_units = 3){
	                    _character = Create_NPC(x,y,"Down","Alpha_Wolf",true);//x,y,direction,character_ID,cutscene_mode
	                    _character.ai_script_ID = "Battle_01_Alpha_Wolf";
	                }
	                else{
	                    _character = Create_NPC(x,y,"Down","Wolf",true);//x,y,direction,character_ID,cutscene_mode
	                    _character.ai_script_ID = "Battle_01_Alpha_Wolf_Guard";
	                }
	            }
	        break;
	    }
	}

	return _character;



}
