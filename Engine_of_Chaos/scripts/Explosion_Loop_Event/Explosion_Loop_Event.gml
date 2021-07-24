function Explosion_Loop_Event() {
	var _object = argument[0];

	with(_object){
	    if((random_range(0,100) > 50)||(instance_number(obj_Battle_Cutscene_Prop)<=0)){//If the random number was higher than 50, then create a fireball
	        var _rotation = (irandom_range(0,3)*90);
	        var _x_pos = random_range(min_x,max_x);//Find Random X value to summon fireball at
	        var _y_pos = random_range(min_y,max_y);//Find Random Y value to summon fireball at
	        Create_Battle_Cutscene_Prop("Explosion_Big",_x_pos,_y_pos,_rotation,mirror,false,false,noone);
        
	        _rotation = (irandom_range(0,3)*90);
	        _x_pos = random_range(min_x,max_x);//Find Random X value to summon fireball at
	        _y_pos = random_range(min_y,max_y);//Find Random Y value to summon fireball at
	        Create_Battle_Cutscene_Prop("Explosion_Small",_x_pos,_y_pos,_rotation,mirror,false,false,noone);
        
	        _rotation = (irandom_range(0,3)*90);
	        _x_pos = random_range(min_x,max_x);//Find Random X value to summon fireball at
	        _y_pos = random_range(min_y,max_y);//Find Random Y value to summon fireball at
	        Create_Battle_Cutscene_Prop("Explosion_Small",_x_pos,_y_pos,_rotation,mirror,false,false,noone);
        
        
	        audio_stop_sound(sfx_Boom);
	        Play_Sound(sfx_Boom);
	    }
	}



}
