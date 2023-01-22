event_inherited();
var i;

//===============
//Non-Modifyables
//===============
allow_interaction = false;//do we accept user input?
player_controlled = false;//is the player controlling this object?
moving = false;//are we moving?
move_timer = 0;//current move timer
speed_x = 0;//current x speed
speed_y = 0;//current y speed
number_of_frames = 2;//default frame number per direction
mirror = 1;//do we mirror the right frames? (if left frames dont exist)
parent_event = "none";//menu event stuff
parent_event_trigger = "none";//parent event trigger
movement_iterations = 0;
direction = 270;
can_trigger_room_transition = false;//can they trigger room transition events?
is_battle_object = false;//Do they get deleted if a battle isn't active?

//Summoned Unit Variables
is_summon = false;//are they a summoned creature?
summoner = noone;//One who summoned them
master_summoner = id;//The original summoner (In case of a summon summoning another unit)
magic_consumed = 0;//Mana consumed from the caster each turn
persistent_summon = false;//do they stick around even after summoner death?
summoned_turns_remaining = -1;//How many turns do they get when summoned? (-1 for infinite)
display_level = false;

//AI Stuff
waiting_for_AI = false;
ai_timer = 0;
max_ai_timer = 18;
ai_script_ID = "Default";
ai_x_origin = x;
ai_y_origin = y;
ai_destination_x = 0;
ai_destination_y = 0;
ai_action = "none";
ai_target = noone;
ai_inventory_slot = 0;
ai_inventory_level = 0;

ai_walk_region = 0;//the region where the AI starts moving towards their target
ai_sprint_region = 0;//The region where the AI sprints at their target

//AI Flags can be used however you want.
for(i = 0; i < 10; i += 1){//Sets all 10 flags to '0'
    ai_flags[i] = 0;
}

//pathfinding
pathfinding = false;//are we currently moving a path?
pathfinding_speed = 2;//speed when moving on a path
path_timer = 0;//timer for moving on path (to play step sound)
pathfind_loop = false;//for transfer tiles
pathfinding_end_action = "none";//what do we do during 'end of path' event?

//Character stuff
character_ID = "Default";//Unique ID of the character
global_ID = -1;//Global ID of the character (for party members / any character that has stats saved globally)
faction = "none";//Character's Faction
name = "";//Character's Name
class = "none";
level = 1;
level_scheme = "Default";
experience = 0;
can_gain_xp = false;//prevent npcs from gaining xp
current_health = 10;
max_health = 10;
current_magic = 0;
max_magic = 0;
drop_table = "none";
can_recieve_drops = false;
gold_value = 0;
can_recieve_gold = false;

turns = 1;

attack = 0;
defense = 0;
agility = 0;
movement_range = 5;
movement_type = "Foot";//what terrain can they walk on
max_attack_range = 1;
min_attack_range = 0;
attack_size = 1;
attack_range_type = "Default";
attack_pattern = "Default";
attack_target_type = "Enemy";
attack_select_type = "Enemy";

fire_damage = 0;
ice_damage = 0;
water_damage = 0;
lightning_damage = 0;
wind_damage = 0;
earth_damage = 0;
light_damage = 0;
shadow_damage = 0;
magic_damage = 0;
void_damage = 0;

fire_resistance = 0;
ice_resistance = 0;
water_resistance = 0;
lightning_resistance = 0;
wind_resistance = 0;
earth_resistance = 0;
light_resistance = 0;
shadow_resistance = 0;
magic_resistance = 0;


accuracy = 100;
evasion = 6.25;
crit = 6.25;
counter = 6.25;
multi_strike = 6.25;
special_attack = 0;
special_attack_type = "none";
battle_cutscene_death_event = "none";

kills = 0;
deaths = 0;

//Battle Stuff
battle_ID = "Default";
group_ID = "Default";
control_in_battle = false;//can we control this character in battle?


death_flag = false;//for setting them to 'dying' during death event
death_flag_script = "none";//for having death cause variable updates.

start_death_event = "none";//for running custom death cutscenes before death animation plays
start_death_event_priority = 0;//for running custom death cutscenes before death animation plays

end_death_event = "none";//for running custom death cutscenes after death animation plays
end_death_event_priority = 0;//for running custom death cutscenes after death animation plays


hidden = false;
disable_on_hide = true;//if they are fully disabled when hidden. (basically cease to exist)
reveal_cutscene_ID = "Reveal_Hidden_Unit";//what cutscene do we play when revealing this unit?
reveal_criteria = "Default";//criteria for reveal
reveal_state = -1;//what battle state do they reveal on?
attack_on_reveal = false;//do they get a turn after they reveal themselves?
reveal_action = "Default";//do they get a turn when revealing? Or wait until next round?
reveal_requires_exact_region = false;//do we need to be in the exact region for them to reveal? If not, any higher region will trigger a reveal

turn_start_x = x;//x position at the start of the turn
turn_start_y = y;//y position at the start of the turn
spawner_ID = noone;//which spawner did we come from? (if any)

//Spells
for(i = 0; i < global.Number_Of_Spell_Slots; i += 1){
    spells[i] = "none";
}
for(i = 0; i < global.Number_Of_Spell_Slots; i += 1){
    spell_level[i] = 0;
}


//Items
for(i = 0; i < global.Number_Of_Inventory_Slots; i += 1){
    items[i] = "none";
}
//give them empty equipment slots
for(i = 0; i < global.Number_Of_Equipment_Slots; i += 1){
    equipment[i] = -1;
}

//===============
//Status Effects=
//===============
for(i = 0; i < 6; i += 1){
    //buffs
    attack_up[i] = 0;
    defense_up[i] = 0;
    agility_up[i] = 0;
    movement_up[i] = 0;
    
    //debuffs
    attack_down[i] = 0;
    defense_down[i] = 0;
    agility_down[i] = 0;
    movement_down[i] = 0;
    
    //status ailments
    flight[i] = 0;
    poison[i] = 0; 
    paralysis[i] = 0;  
    silence[i] = 0;   
    sleep[i] = 0;  
    stun[i] = 0;  
    petrify[i] = 0;  
    bleed[i] = 0; 
    magic_immunity[i] = 0; 
    snare[i] = 0; 
    confusion[i] = 0;
    berserk[i] = 0;
    curse_suppression[i] = 0;
}



//follower stuff
object_following = noone;//what object are we following?
projected_x = x;//projected x destination
projected_y = y;//projected y destination
previous_x = x;//previous x position
previous_y = y;//previous y position
follower_chain = "none";//for walking through other characters in the chain
follower_x_offset = 0;//when following characters, offset (in tiles) from center
follower_y_offset = 0;//when following characters, offset (in tiles) from center

//cutscene stuff
cutscene_mode = false;//blocks all non-cutscene events (ie, walking, player control, etc)
animation = "none";//shudder, head nod, head shake, etc
animation_start = false;//Gives animations a 1 frame startup delay.
death_animation = "Default";//what animation do they play when dying?
chained_animation = "none";//advanced animation script (For chained animations like death)
animation_count = 0;//Number of times to run the animation
animation_timer = 0;//timer for animations
animation_direction = 0;//direction of the jump
animation_speed = 0;//speed of the animation
animation_offset_x = 0;//head position
animation_offset_y = 0;//head position
animation_direction = 0;//jump direction, head nod / shake direction, etc
number_of_animations = 0;//number of loops to perform
spin_direction = "clockwise";//direction of the spin
end_direction = "down";//end spin animation facing down
animation_frame = 0;
animation_sprite = sprite_index;
freeze_last_frame = false;
hide_character = true;//For animations. Hides the character sprite so that a new custom one can be drawn
alpha = 1;//alpha value of the character (for fading)
end_alpha = 1;//value to end on
flash_color = c_white;
call_cutscene = true;
custom_move_script = "none";
move_script_state = 0;
rotation = 0;

//Shaders
use_shader = false;//are we using a shader?
shader_type = "none";//shader to use
//r,g,b,a [Color to replace]
shader_color_in[0] = 0;//r
shader_color_in[1] = 0;//g
shader_color_in[2] = 0;//b
shader_color_in[3] = 1;//a
//r,g,b,a [New Color]
shader_color_out[0] = 0;//r
shader_color_out[1] = 0;//g
shader_color_out[2] = 0;//b
shader_color_out[3] = 0;//a
//r,g,b,a [Tolerance]
shader_tolerance[0] = 0;//r
shader_tolerance[1] = 0;//g
shader_tolerance[2] = 0;//b
shader_tolerance[3] = 0;//a

hit_flash = false;
hit_flash_color = c_white;
hit_flash_speed = 0;
flash_speed = 0;
flash_alpha = 0;
flash_timer = 0;
spell_cast = false;

//NPC stuff
is_npc = false;//should they be treated as an npc?
allow_wander = false;//can the npc walk around?
wander_radius = 6;//how far it can go from origin
x_origin = x;//x origin for wandering
y_origin = y;//y origin for wandering
face_player_during_dialogue = true;//do they face the player when spoken to?
face_original_direction = false;//do they face the original direction after talking to them?
original_direction = "Down";//the way they originally face (for returning to this direction after talking to them)

dialogue_script = "NPC_Dialogue";//Script that gets run when talking to them
talk_menu_script = "NPC_Dialogue";//Secondary script for "talk" menu option
dialogue_ID = "none";//dialogue message id for default 1-line responses

advisor_dialogue_greeting_ID = "Default_Advisor_Greeting";
advisor_dialogue_farewell_ID = "Default_Advisor_Farewell";
event_cooldown = 60;//time between movement events
event_timer = event_cooldown;//event timer
has_circuit = false;//do they walk a set path?
circuit_direction = "up";//default direction
idle_wander_rolls = 0;//(Integer) Added to the wander direction rolls. direction = 1 to 4 + idle rolls

//Shops
buy_value_modifier = .75;//buys for 75% of item value (rounded down)
sell_value_modifier = 1;//sells for 100% of item value (rounded down)
repair_value_modifier = .5;//repairs items for 50% item value (rounded down)

shop_ID[0] = "Default";//Shop inventory to use
shop_ID[1] = "Sell";//Shop inventory to use
shop_ID[2] = "Repair";//Shop inventory to use
shop_ID[3] = "Deals";//Shop inventory to use

shop_dialogue_ID[0] = "Default_Shop";//Shop dialogue script (Buy)
shop_dialogue_ID[1] = "Default_Shop";//Shop dialogue script (Sell)
shop_dialogue_ID[2] = "Default_Shop";//Shop dialogue script (Repair)
shop_dialogue_ID[3] = "Default_Shop";//Shop dialogue script (Deals)

//Church
revival_cost_modifier = 1;
cure_poison_cost_modifier = 1;
cure_paralysis_cost_modifier = 1;
cure_curse_cost_modifier = .25;

church_dialogue_ID[0] = "Default_Church";//Church dialogue script (Raise)
church_dialogue_ID[1] = "Default_Church";//Church dialogue script (Cure)
church_dialogue_ID[2] = "Default_Church";//Church dialogue script (Promote)
church_dialogue_ID[3] = "Default_Church";//Church dialogue script (Save)

//===========
//Modifyables
//===========
idle_animation_speed = .0625;//animation speed for standing still
player_walking_animation_speed = .125;//animation speed for moving
npc_walking_animation_speed = .0625;//animation speed for moving
player_move_speed = 2;//walk speed when the player moves them
npc_move_speed = 1;//walk speed when an NPC moves by itself
move_speed = 0;//actual move speed (set via above 2, or cutscenes)
sprite_offset_x = (global.Tile_Size / 2);//draw location
sprite_offset_y = 4;//draw location

//============================
//Post Modifyable Calculations
//============================
Fix_Overworld_Sprite_Origin(sprite_index);
image_speed = idle_animation_speed;

