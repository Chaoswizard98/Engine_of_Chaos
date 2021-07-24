//===========================
//Non-Modifyable Declarations
//===========================
allow_interaction = false;//Are we able to interact with this object
current_object = noone;
characterID = 0;//Whose stats page are we showing?
portrait_controller = noone;
input_event = "none";
play_pan_sound = false;
lookup_type = "Global";

//=======================
//Modifyable Declarations
//=======================
font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using
equipped_font_color = c_orange;//The color of our font

number_of_pages = 3;
page_number = 0;

status_page_x = floor((Get_Camera_Width() - (sprite_get_width(spr_Status_Page_Window) + sprite_get_width(spr_Default_Portrait)))/2) + sprite_get_width(spr_Default_Portrait);
status_page_y = floor((Get_Camera_Height() - sprite_get_height(spr_Status_Page_Window))/2);
sidebar_window_x = status_page_x - sprite_get_width(spr_Status_Sidebar_Window);
sidebar_window_y = status_page_y + sprite_get_height(spr_Default_Portrait);
gold_window_x = sidebar_window_x;
gold_window_y = sidebar_window_y + sprite_get_height(spr_Status_Sidebar_Window);

pan_speed = 8;

page_window_pan = 0;
sidebar_window_pan = 0;
gold_window_pan_x = 0;
gold_window_pan_y = 0;

max_page_window_pan = Get_Camera_Width() - status_page_x;
max_sidebar_window_pan = sprite_get_width(spr_Status_Sidebar_Window) + sidebar_window_x;
max_gold_window_pan_x = sprite_get_width(spr_Gold_Window) + gold_window_x;
max_gold_window_pan_y = Get_Camera_Height() - gold_window_y;
pan_direction = "none";

