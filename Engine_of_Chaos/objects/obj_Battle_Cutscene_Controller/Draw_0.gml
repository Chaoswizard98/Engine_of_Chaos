if(display){
    var _x_pos = Get_Anchor_X("Top_Left") + scene_x + x_pan + shake_x;
    var _y_pos = Get_Anchor_Y("Top_Left") + scene_y + shake_y;
    
    var _bg_flash_x1 = Get_Anchor_X("Top_Left") + scene_x;
    var _bg_flash_y1 = Get_Anchor_Y("Top_Left");
    
    var _bg_flash_x2 = _bg_flash_x1+scene_width-1;
    var _bg_flash_y2 = Get_Anchor_Y("Bottom_Right");
    
    //Black background
    draw_rectangle_colour(Get_Anchor_X("Top_Left"),Get_Anchor_Y("Top_Left"),Get_Anchor_X("Bottom_Right"),Get_Anchor_Y("Bottom_Right"),c_black,c_black,c_black,c_black,false);
    //Flashing Background
    draw_rectangle_colour(_bg_flash_x1,_bg_flash_y1,_bg_flash_x2,_bg_flash_y2,border_color,border_color,border_color,border_color,false);
    
    var _draw_color = draw_color;
    if(tint_color != c_white){
        _draw_color = tint_color;
    }
    
    //Background image
    draw_sprite_ext(background_sprite,0,_x_pos,_y_pos,1,1,0,_draw_color,1);
    
    if(pan_direction = "Right"){//if we're panning, we need to draw the other 2 backgrounds
        draw_sprite_ext(spr_Battle_Background_Transition,0,_x_pos+scene_width,_y_pos,1,1,0,_draw_color,1);
        draw_sprite_ext(old_background_sprite,0,_x_pos+(2*scene_width),_y_pos,1,1,0,_draw_color,1);
    }
    else if(pan_direction = "Left"){//if we're panning, we need to draw the other 2 backgrounds
        draw_sprite_ext(spr_Battle_Background_Transition,0,_x_pos-scene_width,_y_pos,1,1,0,_draw_color,1);
        draw_sprite_ext(old_background_sprite,0,_x_pos-(2*scene_width),_y_pos,1,1,0,_draw_color,1);
    }
    
    //draw black border (bottom)
    draw_rectangle_colour(Get_Anchor_X("Top_Left")+scene_x,Get_Anchor_Y("Top_Left")+scene_y+scene_height,Get_Anchor_X("Top_Left")+scene_x+scene_width-1,Get_Anchor_Y("Bottom_Right"),border_color,border_color,border_color,border_color,false);//bottom
    
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Background"){
			event_perform(ev_other,ev_user2);
		}
    }
	
    //Draw Battle cutscene Characters
    with(obj_Battle_Cutscene_Character){
        if(location = "Background"){
            event_perform(ev_other,ev_user2);
        }
    }
	
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Middle"){
			event_perform(ev_other,ev_user2);
		}
    }
	
	 //Draw Foreground
    with(obj_Battle_Cutscene_Character){
        if(location = "Foreground"){
            event_perform(ev_other,ev_user4);
        }
    }
	
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Under_Foreground_Character"){
			event_perform(ev_other,ev_user2);
		}
    }
    
    //Draw Battle cutscene Characters
    with(obj_Battle_Cutscene_Character){
        if(location = "Foreground"){
            event_perform(ev_other,ev_user2);
        }
    }
    
    //Draw Projectiles
    with(obj_Projectile){
        event_perform(ev_other,ev_user2);
    }
	
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Foreground"){
			event_perform(ev_other,ev_user2);
		}
    }
	
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Highest"){
			event_perform(ev_other,ev_user2);
		}
    }
	
	//Draw Props (Spell Effects)
    with(obj_Battle_Cutscene_Prop){
		if(draw_location = "Highest_02"){
			event_perform(ev_other,ev_user2);
		}
    }
    
    //Draw black border
    draw_rectangle_colour(Get_Anchor_X("Top_Left"),Get_Anchor_Y("Top_Left"),Get_Anchor_X("Top_Left")+scene_x-1,Get_Anchor_Y("Bottom_Left"),c_black,c_black,c_black,c_black,false);//left
    draw_rectangle_colour(Get_Anchor_X("Top_Right"),Get_Anchor_Y("Top_Right"),Get_Anchor_X("Top_Left")+scene_x+scene_width-1,Get_Anchor_Y("Bottom_Right"),c_black,c_black,c_black,c_black,false);//right
    draw_rectangle_colour(Get_Anchor_X("Top_Left")+scene_x,Get_Anchor_Y("Top_Left"),Get_Anchor_X("Top_Left")+scene_x+scene_width-1,Get_Anchor_Y("Top_Left")+scene_y-1,border_color,border_color,border_color,border_color,false);//top
    
    //Draw Battle HUD
    with(obj_Battle_Cutscene_Character){
        event_perform(ev_other,ev_user3);
    }
}

