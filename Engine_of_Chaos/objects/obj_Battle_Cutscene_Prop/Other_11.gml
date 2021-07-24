var _steps = ceil(max(abs(x_pos-end_x),abs(y_pos-end_y))/movement_speed);
if(_steps = 0){
    x_speed = movement_speed;
    y_speed = movement_speed;
}
else{
    x_speed = abs(x_pos-end_x)/_steps;
    y_speed = abs(y_pos-end_y)/_steps;
}
if(x_pos > end_x){
    x_speed = -x_speed;
}
if(y_pos > end_y){
    y_speed = -y_speed;
}

