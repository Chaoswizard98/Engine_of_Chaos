//===========================
//Non-Modifyable Declarations
//===========================
image_speed = .0625;
allow_interaction = false;
lookup_type = "Global";//what stat set are we reading from?
action = "Status";//what action are we performing
state = "Selecting_Character";//current state of the controller
voice_ID = "none";//remember shop clerk / priest / advisor voice.

parent_event = "none";//event we're running, button presses, or external controller calls
parent_event_trigger = "none";
input_event = "none";
character_selector_state = -1;//flashing selector over character's name
item_index = 0;
item_selector = 1;//off by default
item_array[0] = -1;
selected_spell_level = -1;

current_object = noone;
current_player = noone;
current_npc = noone;

number_of_characters = 0;

stats_page = 0;//what stats are displayed?
number_of_stat_pages = 2;//number of pages that can be displayed.

y_scroll = 0;//for scrolling text
scrolling = false;//for scrolling text
scroll_direction = "none";//for scrolling text
portrait_controller = noone;
character_list[0] = noone;
decision = "none";//calls from yes/no menu
character_index_offset_y = 16;//spacing between characters in the menu

equip_slot = 0;//what equipement slot are we looking at? 0: main hand, 1: off hand, etc
selected_character = 0;//for giving/using items
selected_item = 0;//item slot for giving / using items
selected_item_slot = 0;

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

display_type = "Status";//what do we draw?
play_pan_sound = false;

number_of_status_ailments = 0;
status_ailment_array[0] = 0;

//=======================
//Modifyable Declarations
//=======================

font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using
equipped_font_color = c_orange;//The color of our font

//Window Pans
top_window_x = floor((Get_Camera_Width() - (sprite_get_width(spr_Member_List_Top) + sprite_get_width(spr_Default_Portrait)))/2) + sprite_get_width(spr_Default_Portrait);
top_window_y = floor((Get_Camera_Height() - (sprite_get_height(spr_Member_List_Top) + sprite_get_height(spr_Member_List_Bottom)))/2);

bottom_window_x = floor((Get_Camera_Width() - sprite_get_width(spr_Member_List_Bottom))/2);
bottom_window_y = floor((Get_Camera_Height() - (sprite_get_height(spr_Member_List_Top) + sprite_get_height(spr_Member_List_Bottom)))/2) + sprite_get_height(spr_Member_List_Top);

max_top_window_pan_x = Get_Camera_Width() - top_window_x;
max_top_window_pan_y = top_window_y + sprite_get_height(spr_Member_List_Top);
max_bottom_window_pan = Get_Camera_Height() + bottom_window_y;

top_window_pan_x = max_top_window_pan_x;
top_window_pan_y = max_top_window_pan_y;
bottom_window_pan = max_bottom_window_pan;

pan_speed = 8;
pan_direction = "none";

//list data
max_characters_displayed = 5;//Max characters on screen at once
index = 0;
start_index = 0;

