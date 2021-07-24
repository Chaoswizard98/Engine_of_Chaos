function Create_Member_List_Controller() {
	//argument0: Lookup type (global) or (local)
	//argument1: Party / Faction we're looking at
	//argument2: Display type
	//argument3: action
	//argument4: object that's creating this instance
	//if(argument[0] = 'Global'){//use global.stats
	    var _lookup_type = argument[0];
	    var _faction = argument[1];//Faction to display
    
	    var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Member_List_Controller);//create the controller
	    _this.lookup_type = _lookup_type;
	    //==member list setup==
	    with(obj_Member_List_Controller){
	        current_object = argument[4];//remember which object created this one
	        action = argument[3];
	        display_type = argument[2];
	        var i;
	        i = 0;
        
	        if(_lookup_type = "Global"){
	            for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	                if(global.Faction[i] = _faction){//if character is a member of the faction we're displaying
	                    if(action = "Leave_Battle_Party"){
	                        if(global.In_Battle_Party[i]){
	                            character_list[number_of_characters] = i;//add them to the list
	                            number_of_characters+= 1;
	                        }
	                    }
	                    else if(action = "Join_Battle_Party"){
	                        if(!global.In_Battle_Party[i]){
	                            character_list[number_of_characters] = i;//add them to the list
	                            number_of_characters+= 1;
	                        }
	                    }
	                    else{
	                        character_list[number_of_characters] = i;//add them to the list
	                        number_of_characters+= 1;
	                    }
                    
	                }
	            }
	        }
	        else if(_lookup_type = "Local"){
	            with(obj_Character){
	                if(faction = _faction){
	                    _this.character_list[_this.number_of_characters] = id;//add them to the list
	                    _this.number_of_characters+= 1;
	                }
	            }
	        }
	        if(Faction_Is_Empty(_lookup_type,_faction)){
	            UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	            instance_destroy();
	        }
	        else{//if we arent throwing an error code...
	            var _portrait_ID;
	            _portrait_ID = Get_Character_Portrait(_lookup_type,character_list[0],"Total");//get correct portrait (test for overrides)
	            portrait_controller = Create_Portrait_Controller(_portrait_ID,"Member_List",id,Character_Is_Dead(_lookup_type,character_list[0]));//create the portrait controller
	            top_window_pan_x = max_top_window_pan_x;
	            top_window_pan_y = max_top_window_pan_y;
	            bottom_window_pan = max_bottom_window_pan;
	            pan_direction = "in";
	            play_pan_sound = true;
	        }
        
	    }
	//}



}
