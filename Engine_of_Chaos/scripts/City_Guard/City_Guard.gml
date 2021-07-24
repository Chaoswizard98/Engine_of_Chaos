function City_Guard() {
	var Player = player_trigger;
	var Guard;

	with(obj_Character){
	    if(character_ID = "City_Guard"){
	        Guard = id;
	    }
	}

	switch(state){
	    case 0:
	        Player.allow_interaction = false;
	        Player.cutscene_mode = true;
	        Guard.cutscene_mode = true;
	        state += 1;
	        if(Guard.y = Player.y){
	            event_perform(ev_other,ev_user0);
	        }
	        else{
	            var _tiles = Find_Distance_Radius(Guard.x,Guard.y,Guard.x,Player.y);//number of tiles we need to walk
	            if(Guard.y < Player.y){
	                Move_Character(Guard,"Down",_tiles,6);
	            }
	            else{
	                Move_Character(Guard,"Up",_tiles,6);
	            }
	        }
	    break;
	    case 1:
	        Guard.direction = 0;
	        state += 1;
	        Player.cutscene_mode = false;
	        Player.allow_interaction = true;
	        Guard.cutscene_mode = false;
	        instance_destroy();
	    break;
	}



}
