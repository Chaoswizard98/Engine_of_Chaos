draw_set_color(c_white);
draw_set_font(menu_font);

//==Sidebar Window==
Draw_Sidebar_Window();

//==Main Window==
switch(page_number){
    case 0: Draw_Status_Page_0(); break;
    case 1: Draw_Status_Page_1(); break;
    case 2: Draw_Status_Page_2(); break;
}
//else if 2...etc

