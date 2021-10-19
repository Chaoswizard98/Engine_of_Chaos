current_frame = 0;//current frame of the sprite animation
x_pos = 0;//Curent x/y position
y_pos = 0;
end_x = 0;//End x/y position to move to
end_y = 0;
x_speed = 0;//calculated move speed
y_speed = 0;
movement_speed = 0;//Movement speed

prop = "none";//Prop Name
rotation = 0;//Rotation of the sprite
call_event = false;//do we ping cutscene when done?
mirror = 1;//do we mirror the sprite?

loop_animation = false;//do we loop the animation
action = "Default";//action to perform
draw_location = "Highest";//Draw layer (Background,Foreground,Highest)

hidden = false;

number_of_tags = 5;
var i = 0;
for(i=0;i<number_of_tags;i+=1){
	prop_tags[i] = "none";
}