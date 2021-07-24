function Retreat_From_Battle_Overworld() {
	var _player = player_trigger;
	var _direction = npc_trigger;

	switch(state){
	    case 0:
	        Create_Dialogue("none",Get_Voice("Retreat_From_Battle"),Get_General_Messages("Generic_Battle","Retreat"),id,false,false);
	        state += 1;
	    break;
	    case 1:
	        Create_YesNo_Menu(id);
	        state += 1;
	    break;
	    case 2:
	        state += 1;
	        if(decision = "Yes"){
	            var _next_room = noone;
	            with(obj_Character){
	                Save_Character_Stats(id);
	            }
	            switch(_direction){
	                case "Up": _next_room = global.Adjacent_Room[0]; break;
	                case "Down": _next_room = global.Adjacent_Room[1]; break;
	                case "Left": _next_room = global.Adjacent_Room[2]; break;
	                case "Right": _next_room = global.Adjacent_Room[3]; break;
	            }
	            Set_Battle_Victory_Flags("Retreat",_next_room);
	            Room_Transfer(_player,"Overworld",_direction);
	            instance_destroy();
	        }
	        else{
	            Pan_Out_Dialogue();
	        }
	    break;
	    case 3:
	        state += 1;
	        _player.allow_interaction = true;
	        instance_destroy();
	    break;
	}



}
