projectile = "none";//projectile
projectile_path = "Default";//path to follow
projectile_direction = "Left";//path direction
state = "none";//event state
display = true;//do we draw the projectile?

movement_speed = 1;//how fast the projectile moves
end_effect = "none";//what effect happens at the end of path? (explosive arrows, etc)

start_x = 0;
start_y = 0;
end_x = 0;
end_y = 0;
x_speed = 0;
y_speed = 0;

x_pos = 0;
y_pos = 0;
is_moving = false;
rotation = 0;
mirror = 1;

//============
//Modifiables=
//============

//arc end location
arc_x = obj_Battle_Cutscene_Controller.scene_x + floor(obj_Battle_Cutscene_Controller.scene_width/2);
arc_y = obj_Battle_Cutscene_Controller.scene_y - 50;
arc_rotation = 45;

//offscreen end location
offscreen_left_x = obj_Battle_Cutscene_Controller.scene_x - 50;
offscreen_right_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width + 50;

//character y offsets
background_character_y_offset = -30;
foreground_character_y_offset = -50;

