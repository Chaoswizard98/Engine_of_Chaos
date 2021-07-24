//
state = "Start";
voice_ID = "sfx_Dialogue05";
decision = "none";
parent_event = "none";
parent_event_trigger = "none";
shop_ID = "Default";//shop stock
shop_type = "Buy";
dialogue_ID = "Default_Shop";//dialogue message differences
script_ID = "Default";//script differences
item_type = "Default";//can also be 'Rare_Items' changes welcome message
current_player = noone;
current_npc = noone;
lookup_type = "Global";

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

current_object = id;
allow_interaction = false;
play_pan_sound = false;

arrow_flash = 0;
arrow_flash_timer = 0;
arrow_flash_speed = 10;

cursor_flash = 0;
cursor_flash_timer = 0;
cursor_flash_speed = 10;

item_scroll_timer = 0;
item_scroll_speed = 4;
item_scroll_max = 32;
scrolling_page_direction = "none";



shop_window_x = floor((Get_Camera_Width() - sprite_get_width(spr_Shop_Window))/2);
shop_window_y = 8;
max_shop_window_pan = shop_window_y + sprite_get_height(spr_Shop_Window);
shop_window_pan = max_shop_window_pan;

item_window_x = shop_window_x - 8;
item_window_y = shop_window_y + 42;
max_item_window_pan = item_window_x + sprite_get_width(spr_Item_Name_Window);
item_window_pan = max_item_window_pan;

gold_window_x = (Get_Camera_Width() - (sprite_get_width(spr_Shop_Gold_Window) + 8));
gold_window_y = (Get_Camera_Height() - (sprite_get_height(spr_Shop_Gold_Window) + 8));
max_gold_window_pan = (sprite_get_width(spr_Shop_Gold_Window) + 8);
gold_window_pan = max_gold_window_pan;

pan_speed = 8;

pan_direction = "none";
display_type = "Default";

page_number = 0;//current page of items
item_index = 0;//current item slot
index_offset = 32;//offset for item window panning
number_of_items = 0;//total number of items in shop
items_per_page = 7;//number of items shown per page
buy_value_modifier = .7;//buys for 70% of item value
sell_value_modifier = 1;//sells for 100% of item value
repair_value_modifier = .5;//repairs for 50% of item value

item_array[0] = "none";

//====
number_of_pages = ceil(number_of_items / items_per_page);

