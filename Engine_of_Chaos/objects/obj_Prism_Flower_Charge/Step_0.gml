if(charging){
    current_frame += 1;
    if(current_frame >= frames_per_charge){
        charge += 1;
        current_frame = 0;
        if(charge >= max_charge){
            charging = false;
        }
    }
    if(charge <= (max_charge -1)){
        if((random_range(0,100) > 70)||(instance_number(obj_Battle_Cutscene_Prop)<=1)){//If the random number was higher than 50, then create a fireball
            var _x_pos = random_range(min_x,max_x);//Find Random X value to summon fireball at
            var _y_pos = random_range(min_y,max_y);//Find Random Y value to summon fireball at
            audio_stop_sound(sfx_Dialogue04);
            var _this = Create_Battle_Cutscene_Prop("Prism_Flower_Start",_x_pos,_y_pos,0,1,false,false,sfx_Dialogue04);
            _this.image_index = irandom_range(0,2);
            _this.end_x = x_pos;
            _this.end_y = y_pos;
            _this.movement_speed = 1;
            with(_this){
                event_perform(ev_other,ev_user1);
            }
            _this.action = "Move_To_Location";
        }
    }
    if(!charging){
        Create_Screen_Flash(c_white,0,"in",2,.05,0,1.5,id);//color, start alpha, direction, iterations,speed,min,max
        Create_Battle_Cutscene_Prop("Prism_Flower_Shot",x_pos,y_pos,0,1,false,true,sfx_Prism_Flower_Shot);
    }
}


