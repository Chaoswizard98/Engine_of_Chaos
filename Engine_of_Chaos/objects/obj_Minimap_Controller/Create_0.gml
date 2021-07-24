minimap_tile_size = 4;

window_pan_direction = "none";
play_pan_sound = false;

max_pan = (floor(Get_Camera_Width() / 2) + 300);
window_pan = max_pan;
pan_speed = (max_pan / 12);
allow_interaction = false;

show_markers = true;
marker_flash_state = 0;
marker_flash_timer = 0;
max_flash_time = 15;
show_character_markers = true;
show_chest_markers = false;

state = "none";
current_object = noone;
minimap_surface = noone;

number_of_tile_layers = 8;
tile_layers[0] = "Base_Tile_Layer_01";
tile_layers[1] = "Base_Tile_Layer_02";
tile_layers[2] = "Base_Tile_Layer_03";
tile_layers[3] = "Base_Tile_Layer_04";
tile_layers[4] = "Base_Tile_Layer_05";

tile_layers[5] = "Upper_Tile_Layer_01";
tile_layers[6] = "Upper_Tile_Layer_02";
tile_layers[7] = "Upper_Tile_Layer_03";


