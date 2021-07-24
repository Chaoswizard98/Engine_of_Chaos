Set_Character_Stats(id,"Max");
allow_wander = false;
Face_Direction(id,"Down");
if(global.Story_State = 3){
    x = 312;
    y = 672;
    direction = 180;
}
else if(global.Story_State != 1){
    instance_destroy();
}