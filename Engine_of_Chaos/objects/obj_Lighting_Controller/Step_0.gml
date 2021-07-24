if(run_day_light_cycle){//do we run the day light cycle
    current_step -= 1;
    if(current_step <= 0){
        hour += 1;
        if(hour > 24){
            hour = 1;
        }
        current_step = steps_per_hour;
        light_background_color = Get_Day_Light_Color(hour);//update bg color
    }
}

