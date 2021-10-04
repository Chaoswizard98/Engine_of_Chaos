function Draw_Health_Bar(_x,_y,_health,_max_health,_bonus_health){
	var _max_size = 100;//max draw size
	var _size = min(max(_health,_max_health,_bonus_health),_max_size);//figure out bar length
	var _remainder = _health mod _max_size;//ammount of health that overflows
	var _sprite = noone;//which color do we draw?

	if(_size != 0){
	    var i = 0;
	    draw_sprite(spr_Health_Bar_End,0,_x+i,_y);
    
	    for(i=0; i<_size; i+= 1){
	        if(i<_remainder){//if drawing remaining health
	            switch((_health div _max_size)+1){
	                case 0: _sprite = spr_Health_Bar_Red; break;
	                case 1: _sprite = spr_Health_Bar_Yellow; break;
	                case 2: _sprite = spr_Health_Bar_Green; break;
	                case 3: _sprite = spr_Health_Bar_Blue; break;
	                default: _sprite = spr_Health_Bar_Black; break;
	            }
	        }
	        else if(i<(_remainder+_bonus_health)){//if drawing bonus health
	            _sprite = spr_Health_Bar_Purple;//draw bonus health
	        }
	        else{
	            switch(_health div _max_size){//otherwise draw max health
	                case 0: _sprite = spr_Health_Bar_Red; break;
	                case 1: _sprite = spr_Health_Bar_Yellow; break;
	                case 2: _sprite = spr_Health_Bar_Green; break;
	                case 3: _sprite = spr_Health_Bar_Blue; break;
	                default: _sprite = spr_Health_Bar_Black; break;
	            }
	        }
	        draw_sprite(_sprite,0,_x+i+1,_y);
	    }
    
	    draw_sprite(spr_Health_Bar_End,0,_x+i+1,_y);
	}
}