//===============
//Draw Locations=
//===============
var _portrait_x;
var _portrait_y;

if(display_type = "Dialogue"){
    _portrait_x = Get_Anchor_X("Top_Left") + dialogue_x_pos - floor(pan_x);
    _portrait_y = Get_Anchor_Y("Top_Left") + dialogue_y_pos - floor(pan_y);
}
else if(display_type = "Status_Page"){
    _portrait_x = Get_Anchor_X("Top_Left") + status_x_pos - floor(pan_x);
    _portrait_y = Get_Anchor_Y("Top_Left") + status_y_pos - floor(pan_y);
}
else if(display_type = "Member_List"){
    _portrait_x = Get_Anchor_X("Top_Left") + member_list_x_pos - floor(pan_x);
    _portrait_y = Get_Anchor_Y("Top_Left") + member_list_y_pos - floor(pan_y);
}
else if(display_type = "Character_Creation"){
    _portrait_x = Get_Anchor_X("Top_Left") + character_creation_x_pos - floor(pan_x);
    _portrait_y = Get_Anchor_Y("Top_Left") + character_creation_y_pos - floor(pan_y);
}

//==========
//Draw Code=
//==========
draw_set_colour(c_white);//set to normal draw color
draw_sprite(portrait,talk_frame,_portrait_x,_portrait_y);
if(is_dead){
    draw_sprite(portrait_blink,floor(sprite_get_number(portrait_blink)/2),_portrait_x, _portrait_y);
}
else if(blinking){//Draw the blinking overlay frame
    draw_sprite(portrait_blink,blink_frame,_portrait_x, _portrait_y);
}

