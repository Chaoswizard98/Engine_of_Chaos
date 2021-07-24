switch(display_type){
    case "Dialogue":
        if(event = "Panned_In"){
            event = "none";
            obj_Dialogue_Controller.pan_direction = "in";
        }
    break;
    case "Status_Page":
        if(event = "Panned_In"){
            event = "none";
        }
    break;
}

