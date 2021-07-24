 //===============
//Non-Modifyables
//===============
camera_target = id;//Target we're following (Defaults to self)
x_offset = 0;//adjustment in case target origin isnt centered (like characters)
y_offset = 0;
x_pos = 0;//camera x position
y_pos = 0;//camera y position
halt_x_movement = false;//prevent camera from moving on x direction (room transitions)
halt_y_movement = false;//prevent camera from moving on y direction (room transitions)
call_cutscene = false;//Do we call the cutscene controller once we reach our destination?

//For cutscene panning
camera_pathfinding = false;
x_view_old = Get_Camera_X();//for testing the end of camera movement
y_view_old = Get_Camera_Y();//for testing the end of camera movement

//view_enabled = true;
//view_visible[0] = true;

//Screen Shaking
shake_x = 0;//current x offset due to screen shaking
shake_y = 0;//current y offset due to screen shaking
shake_power_x = 0;//current shake power on the x axis
shake_power_y = 0;//current shake power on the y axis
shake_timer = 0;//time left during screen shake
call_cutscene = false;//do we call the cutscene controller after shaking?

//===========
//Modifyables
//===========//*NOTE* If you plan on changing these, also change the reset script 'Reset_Camera'
camera_speed = 1;//How fast does the camera follow the target (in pixels); -1 will always keep it on the target.
x_border = 144;//Target stays at least 48 pixels from the edge of the camera
y_border = 96;

/* */
/*  */