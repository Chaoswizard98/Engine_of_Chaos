function Get_Battle_Cutscene_Prop_Stats() {
	/*sprite
	animation speed


	blaze fireball
	blaze fire

	explosion_big
	explosion_small
	grand_cannon

	tornado
	*/

	var _prop = argument[0];
	var _return_stat = argument[1];

	var _sprite = spr_Blank_Sprite;
	var _animation_speed = 0;
	var _flash_color = c_white;


	switch(_prop){
	    case "Explosion_Small":
	        _sprite = spr_Explosion_Small;
	        _animation_speed = .25;
	    break;
	    case "Explosion_Big":
	        _sprite = spr_Explosion_Big;
	        _animation_speed = .25;
	    break;
	    case "Blaze_Fire_1":
	        _sprite = spr_Blaze_Fire_1;
	        _animation_speed = .25;
	    break;
	    case "Blaze_Fireball":
	        _sprite = spr_Blaze_Fireball;
	        _animation_speed = .25;
	        _flash_color = c_red;
	    break;
	    case "Freeze_Shard_1":
	        _sprite = spr_Freeze_Shard_1;
	        _animation_speed = .25;
	    break;
	    case "Heal":
	        _sprite = spr_Heal;
	        _animation_speed = .5;
	    break;
	    case "Detox":
	        _sprite = spr_Detox;
	        _animation_speed = .5;
	    break;
    
	    case "Prism_Flower_Start":
	        _sprite = spr_Prism_Flower_Particles;
	        _animation_speed = 0;
	    break;
	    case "Prism_Flower_Shot":
	        _sprite = spr_Prism_Flower_Shot;
	        _animation_speed = .5;
	    break;
	}

	switch(_return_stat){
	    case "Sprite": return _sprite; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Flash_Color": return _flash_color; break;
	}



}
