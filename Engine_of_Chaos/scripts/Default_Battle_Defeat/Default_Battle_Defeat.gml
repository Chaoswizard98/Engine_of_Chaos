function Default_Battle_Defeat() {

	switch(state){
	    case 0:
	        state += 1;
	        Create_Dialogue("none",Get_Voice("Lost_Battle"),/*Get_General_Messages('Generic_Battle','Retreat')*/obj_Battle_Controller.battle_flags[0]+" was defeated...",id,false,false);
	    break;
	    case 1:
	        state += 1;
			with(obj_Character){
	            Save_Character_Stats(id);
			}
	        Room_Transfer(global.Player_ID,"Force",global.Egress_Room,"Egress");//character_ID,Transition_Type,room,Tile_ID
	    break;
	}



}
