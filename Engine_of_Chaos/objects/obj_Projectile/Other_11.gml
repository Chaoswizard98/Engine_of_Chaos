x_pos = start_x;
y_pos = start_y;

//Figure out move speed
var _steps = ceil(max(abs(start_x-end_x),abs(start_y-end_y))/movement_speed);
if(_steps = 0){
    x_speed = movement_speed;
    y_speed = movement_speed;
}
else{
    x_speed = abs(start_x-end_x)/_steps;
    y_speed = abs(start_y-end_y)/_steps;
}
if(start_x > end_x){
    x_speed = -x_speed;
}
if(start_y > end_y){
    y_speed = -y_speed;
}

is_moving = true;

