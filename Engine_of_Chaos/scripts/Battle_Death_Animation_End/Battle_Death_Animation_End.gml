function Battle_Death_Animation_End() {
	//var _character;// = player_trigger;
	switch(state){
	    case 0:
	        state += 1;
	        var _array = instance_create_layer(0,0,"UI_Instance_Layer",obj_Temp_Array);//create temp array for storing dying characters
	        with(obj_Character){//loop through all characters
	            if(death_flag){//if they are dead
	                _array.array[_array.size] = id;//add them to the temp array
	                _array.size += 1;//update array size
	            }
	        }
	        var i;
	        for(i = 0; i < _array.size; i+= 1){//loop through array
	            Remove_From_Turn_Order(_array.array[i]);//remove character from turn order
	            with(_array.array[i]){//destroy the character
	                instance_destroy();
	            }
	        }
	        with(_array){//delete the array
	            instance_destroy();
	        }
	        Execute_Battle_Event("Start_New_Turn");
	        instance_destroy();
	    break;
	}



}
