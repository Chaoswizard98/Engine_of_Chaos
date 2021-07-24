if(opening){
    animation_frame += animation_speed;
    if(animation_frame >= (number_of_frames)){//if end of animation
        instance_destroy();
    }
}

