function Retreat_From_Battle() {
	var _player = player_trigger;
	var _tile = other_trigger;

	switch(state){
	    case 0:
	        Create_Dialogue(noone,Get_Generic_Voice("Retreat_From_Battle"),Get_General_Messages("Generic_Battle","Retreat"),id,false,false);
	        state += 1;
	    break;
	    case 1:
	        Create_YesNo_Menu(id);
	        state += 1;
	    break;
	    case 2:
	        state += 1;
	        if(decision = "Yes"){
	            with(obj_Character){
	                Save_Character_Stats(id);
	            }
	            Set_Battle_Victory_Flags("Retreat",_tile.next_room);
	            Room_Transfer(_player,"Tile",_tile);
	            instance_destroy();
	        }
	        else{
	            Pan_Out_Dialogue();
	        }
	    break;
	    case 3:
	        state += 1;
	        _player.allow_interaction = true;
	        _tile.call_trigger = false;
	        instance_destroy();
	    break;
	}



}
