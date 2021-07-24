current_object = noone;
original_attacker = noone;//original unit performing the action
original_target = noone;//original target of the action
attacker = noone; //current character performing the action
target = noone; //current character being targeted
new_attacker = noone;
new_target = noone;//next character to target
previous_target = noone;

target_array[0] = noone;
target_index = 0;
number_of_targets = 0;
target_type = "Enemy";//Only use is to determine character alt displays.

action = "Attack";//Action being performed
inventory_slot = 0;//spell / item slot
inventory_level = 0;//spell level

effect = "none";//actual effect(save on lookup time)
effect_level = 1;

state = "Start";
camera_action = "none";
camera_state = "Test_For_Pan";
pan_type = "in";
counter = 0;//wait for multiple event pings
max_counter = 0;//wait for multiple event pings

event = "Default";//which script do we call?
dialogue_end_delay = 20;
auto_skip_dialogue = true;
//screen_flash
border_color = c_black;
screen_flash = false;
flash_timer = 0;
draw_color = c_white;
tint_color = c_white;

counter_attack = false;
critical_hit = false;
blocked_attack = false;
waiting_for_projectile = false;
waiting_for_spell = false;

allow_counter_attacks = false;//do we allow counter attacks?
allow_multiple_attacks = false;//do we allow double attacks?
allow_blocking = false;//do we allow blocking?
performing_aoe = false;
target_starts_on_screen = true;

display = false;//prevent drawing before screen fade
background_sprite = spr_Battle_Background_Default;
old_background_sprite = spr_Battle_Background_Default;
pan_direction = "none";
pan_camera = false;
//Cutscene draw positions
scene_width = sprite_get_width(spr_Battle_Background_Default);//width of the battle cutscene
scene_height = sprite_get_height(spr_Battle_Background_Default);//height of the battle cutscene
scene_x = floor((Get_Camera_Width() - scene_width)/2);//Get_Anchor_X('Middle')-floor(scene_width/2);
scene_y = floor((Get_Camera_Height() - scene_height)/2);//Get_Anchor_Y('Middle')-floor(scene_height/2);

//Offset positions from top middle of cutscene (character draw positions)
foreground_x_offset = 58;
foreground_y_offset = scene_height;

background_x_offset = -48;
background_y_offset = scene_height - 16;

//Actual draw positions
foreground_left_x = ((scene_x + floor(scene_width/2)) - foreground_x_offset);
foreground_left_y = scene_y + foreground_y_offset;

foreground_right_x = ((scene_x + floor(scene_width/2)) + foreground_x_offset);
foreground_right_y = scene_y + foreground_y_offset;

background_left_x = ((scene_x + floor(scene_width/2)) + background_x_offset);
background_left_y = scene_y + background_y_offset;

background_right_x = ((scene_x + floor(scene_width/2)) - background_x_offset);
background_right_y = scene_y + background_y_offset;



camera_old_target = noone;
camera_target = noone;

x_pan = 0;
max_x_pan = (2*scene_width);
x_pan_speed = 35;

//screen shaking
shake_timer = 0;
shake_x = 0;
shake_y = 0;
shake_power_x = 0;
shake_power_y = 0;

waiting_for_state = false;

timer = false;
event_timer = 0;

