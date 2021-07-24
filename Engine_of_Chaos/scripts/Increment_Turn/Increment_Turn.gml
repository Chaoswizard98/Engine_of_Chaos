function Increment_Turn() {
	with(obj_Battle_Controller){
	    current_turn += 1;//increment turn
	    if(current_turn >= number_of_turns){//if we hit the end of the round
	        current_turn = 0;//reset current turn
	        Create_Turn_Order();//create a new turn order
	    }
	    if(!Can_Have_Turn()){//if the current turn object cant have their turn,
	        Increment_Turn();//move to the next object
	    }
	}



}
