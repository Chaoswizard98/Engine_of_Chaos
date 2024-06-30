current_frame = 0;//current frame of the sprite animation
current_iteration = 1;
number_of_iterations = 1;
x_pos = 0;//Curent x/y position
y_pos = 0;
end_x = 0;//End x/y position to move to
end_y = 0;
x_speed = 0;//calculated move speed
y_speed = 0;
movement_speed = 0;//Movement speed
wave_x_center = 0;//sin wave center position
wave_y_center = 0;//sin wave center position
wave_offset = 0;//Offset for the wave animation
obj_following = noone;//The object we're following

prop = "none";//Prop Name
rotation = 0;//Rotation of the sprite
call_event = false;//do we ping cutscene when done?
mirror = 1;//do we mirror the sprite?
alpha = 1;//Transparency

loop_animation = false;//do we loop the animation
action = "Default";//action to perform
draw_location = "Highest";//Draw layer (Background,Foreground,Highest)
instant_destruction = false;//Do we instantly destroy this when the spell controller is destroyed? (if false, it is destroyed on final frame instead)

hidden = false;
start_delay = 0;//wait x frames before playing our animation

played_start_sound = false;
start_sound = noone;

number_of_tags = 5;
var i = 0;
for(i=0;i<number_of_tags;i+=1){
	prop_tags[i] = "none";
}