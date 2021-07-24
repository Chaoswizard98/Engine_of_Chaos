switch(state){
    case "Start_Screen_Fade":
        state = "Pan_In";
        Create_Screen_Fade(c_black,0,.5,.04,"out",id);
    break;
    case "Pan_In":
        state = "Pan_Out";
        window_pan_direction = "in";
        play_pan_sound = true;
    break;
    case "Pan_Out":
        state = "End_Screen_Fade";
        Continue_Screen_Fade(0,.04,"in",id);
    break;
    case "End_Screen_Fade":
        state = "none";
        with(obj_Screen_Fade_Controller){
            instance_destroy();
        }
        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
        surface_free(minimap_surface);
        instance_destroy();
    break;
}

