function Battle_Victory_Battle_02() {
	switch(state){
	    case 0:
	        state += 1;
	        Create_Screen_Fade(c_black,0,1.5,.04,"out",id);//color, start, end, speed, direction, object
	    break;
	    case 1:
	        state += 1;
	        Set_Battle_Victory_Flags("Default");
	        with(obj_Character){
	            Save_Character_Stats(id);
	            if(character_ID = global.Player_ID){
	                Control_New_Character(id,id);
	            }
	            else{
	                instance_destroy();
	            }
	        }
	        //Set_Camera_Target(global.Player);
	        //Center_Camera();
	        //global.In_Battle = false;//Not in battle
	        //Destroy_Battle_Objects();
			//Spawn_Followers("Chapter_1");
	        //Continue_Screen_Fade(0,.04,"in",id);//fade back in
			Room_Transfer(global.Player,"Restart");
	    break;
	    case 2:
	        //state += 1;
	        //global.Player.allow_interaction = true;//allow player movement
	        //instance_destroy();
	    break;
	}



}
