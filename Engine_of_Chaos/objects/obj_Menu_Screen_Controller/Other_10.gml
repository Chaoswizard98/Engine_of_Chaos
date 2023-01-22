switch(state){
    //======
    //Start=
    //======
    case "Start":
        state = "Display_Start_Message"; 
        Create_Screen_Fade(c_black,1,0,.04,"in",id);//color, start, end, speed, direction, object
    break;
    //======================
    //Display Start Message=
    //======================
    case "Display_Start_Message":
        state = "Display_Start_Menu";
        instance_destroy(obj_Screen_Fade_Controller);
        if(Pressed_Key("Any_Button",true)){//if we're holding a button on startup
            Create_Dialogue(noone,sfx_Dialogue01,Get_General_Messages("Intro_Menu","Intro_Dialogue_Short"),id,false,false); 
        }
        else{
            Create_Dialogue(noone,sfx_Dialogue01,Get_General_Messages("Intro_Menu","Intro_Dialogue"),id,false,false);//skip to final dialogue state
        }
    break;
    //===================
    //Display Start Menu=
    //===================
    case "Display_Start_Menu":
        state = "Waiting_For_Start_Menu";
        Create_Start_Menu_Controller(id);
    break;
}

