function Search_Event() {
	var _character = argument[0];
	var _event = argument[1];

	switch(_event){
	    case "player_trigger":
	        with(_character){
	            var interactable_object;
	            interactable_object = Get_Interactable_Object(x,y,direction);
	            if(interactable_object != noone){//if we can interact with an object
	                allow_interaction = false;//disable player's motor skills
	                interactable_object.current_object = id;//set current object to this one
	                with(interactable_object){
	                    event_perform(ev_other,ev_user11);//run interact code
	                }
	            }
	        }
	    break;
    
	    case "menu_trigger":
	        var interactable_object;
	        interactable_object = Get_Interactable_Object(_character.x,_character.y,_character.direction);
	        if(interactable_object != noone){//if we can interact with an object
	            interactable_object.current_object = _character;//set current object to this one
	            with(interactable_object){
	                event_perform(ev_other,ev_user11);//run interact code
	            }
	            parent_event = "Destroy_All_Menus";
	            parent_event_trigger = "none";
	            event_perform(ev_other,ev_user13);
	        }
	        else{
	            parent_event = "Backed_Out_Of_All_Menus";
	            Create_Dialogue(noone,Get_Generic_Voice("Search"),"You find nothing of value.",id,true,true);
	        }
	    break;
	}
}