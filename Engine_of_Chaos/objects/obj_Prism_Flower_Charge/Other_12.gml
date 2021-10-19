if(charging){
    if(Chance(.8)){
        //draw_sprite(spr_Prism_Flower_Charge,charge,x_pos,y_pos);
		draw_sprite_ext(spr_Prism_Flower_Charge,charge,Get_Anchor_X("Top_Left") + x_pos,Get_Anchor_Y("Top_Left") + y_pos,mirror,1,rotation,c_white,1);
    }
}

