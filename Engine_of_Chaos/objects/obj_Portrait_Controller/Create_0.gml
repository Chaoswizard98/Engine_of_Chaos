portrait = noone;//Portrait we're drawing
portrait_blink = noone;//blink animation of the portrait
current_object = noone;//the object we're linked to

display_type = "none";//where are we appearing on screen? (satus page / dialogue)
pan_direction = "none";//global Pan flag "in" or "out", 'none' means it's not panning.

talk_frame = 0;//frame of talk animation
talk_speed = 0;//speed of animation (set by dialogue controller)
talk_speed_modifier = .08;//multiply this by speed to get animation speed
talking = false;//is the portrait talking?

blink_frame = 0;//frame of blink animation
blink_speed = 1;//blink animation speed
blink_min = 20;//mimimum wait time between blinks
blink_max = 180;//maximum wait time between blinks
blink_timer = random_range(blink_min,blink_max);//set blink timer
blinking = false;//is the portrait blinking?
is_dead = false;//If the character is dead, eyes appear closed

event = "none";
play_pan_sound = false;
pan_speed = 8;

dialogue_x_pos = 8;
dialogue_y_pos = 8;
max_dialogue_y_pan = sprite_get_height(spr_Default_Portrait);

status_x_pos = floor((Get_Camera_Width() - (sprite_get_width(spr_Status_Page_Window) + sprite_get_width(spr_Default_Portrait)))/2);
status_y_pos = floor((Get_Camera_Height() - sprite_get_height(spr_Status_Page_Window))/2);
max_status_x_pan = sprite_get_width(spr_Default_Portrait) + status_x_pos;
max_status_y_pan = sprite_get_height(spr_Default_Portrait) + status_y_pos;

member_list_x_pos = floor((Get_Camera_Width() - (sprite_get_width(spr_Member_List_Top) + sprite_get_width(spr_Default_Portrait)))/2);
member_list_y_pos = floor((Get_Camera_Height() - (sprite_get_height(spr_Member_List_Top)+sprite_get_height(spr_Member_List_Bottom)))/2);
max_member_list_x_pan = sprite_get_width(spr_Default_Portrait) + member_list_x_pos;
max_member_list_y_pan = sprite_get_height(spr_Default_Portrait) + member_list_y_pos;

character_creation_x_pos = floor((Get_Camera_Width() - (sprite_get_width(spr_Name_Character_Window)))/2);
character_creation_y_pos = (floor((Get_Camera_Height() - (sprite_get_height(spr_Name_Character_Window) + sprite_get_height(spr_Default_Portrait)))/2)-32);
max_character_creation_x_pan = sprite_get_width(spr_Default_Portrait) + character_creation_x_pos;
max_character_creation_y_pan = sprite_get_height(spr_Default_Portrait) + character_creation_y_pos;

pan_x = 0;
pan_y = 0;

