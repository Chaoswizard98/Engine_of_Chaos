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
            Create_Dialogue(noone,sfx_Dialogue01,"I can tell just how pumped you are, so here's the menu to get started!@",id,false,false); 
        }
        else{
            Create_Dialogue(noone,sfx_Dialogue01,"Did you know that you can skip this message by holding space on the previous screen?%\nI can tell just how pumped you are, so here's the menu to get started!@",id,false,false);//skip to final dialogue state
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

/*
fade in
message 1 (skip if space still held)
message 2
Create start menu



/* */
/*  */
