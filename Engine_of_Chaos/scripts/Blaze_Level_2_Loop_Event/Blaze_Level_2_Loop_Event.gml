function Blaze_Level_2_Loop_Event() {
	var _object = argument[0];

	with(_object){
	    if((random_range(0,100) > 70)||(instance_number(obj_Battle_Cutscene_Prop)<=0)){//If the random number was higher than 50, then create a fireball
	        var _x_pos = random_range(min_x,max_x);//Find Random X value to summon fireball at
	        var _y_pos = random_range(min_y,max_y);//Find Random Y value to summon fireball at
	        var _rotation = 0;
	        Create_Battle_Cutscene_Prop("Blaze_Fireball",_x_pos,_y_pos,_rotation,mirror,false,false,sfx_Blaze_Fire_Start);
	    }
	}



}
