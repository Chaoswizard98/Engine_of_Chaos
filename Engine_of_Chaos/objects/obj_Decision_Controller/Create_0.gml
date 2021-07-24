//================
//Non-Modifyables=
//================
current_object = noone;//object that created this one
display_type = "none";//what menu do we display?
number_of_icons = 2;//number of options in the menu
default_cancel_option = -1;//default cancel option. -1 for no default
menu_index = 0;//current index of the menu
allow_interaction = false;//can we push buttons?
pan_direction = "none";//direction of the pan
menu_icon[0] = noone;//icon to display
menu_name[0] = "";//name of the icon
menu_action[0] = "";//Action to perform
font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

play_pan_sound = false;
//============
//Modifyables=
//============
image_index = -1;//animate the sprites
image_speed = .0625;//speed of animation
icon_separation = 16;
max_pan = (Get_Camera_Width() - (((sprite_get_width(spr_Empty_Menu_Icon) + icon_separation) * number_of_icons)+sprite_get_width(spr_Menu_Name_Window)));//max pan
pan = max_pan;//pan
pan_speed = 8;//pan speed

