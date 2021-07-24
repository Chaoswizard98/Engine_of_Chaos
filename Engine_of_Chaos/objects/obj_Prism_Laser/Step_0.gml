x_pos += x_speed;
y_pos += y_speed;
if(!hit_target){
    if((x_pos + sprite_get_width(spr_Prism_Flower_Projectile)) >= Get_Battle_Cutscene_Character_Draw_Location(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target),"X_Pos",0)){//did we hit the target?
        hit_target = true;
        with(obj_Spell_Controller){
            event_perform(ev_other,ev_user0);
        }
    }
}
if(((x_pos >= end_x)&&(x_speed > 0))||((x_pos <= end_x)&&(x_speed < 0))){
    x_pos = end_x;
    y_pos = end_y;
    instance_destroy();//destroy this object
}

