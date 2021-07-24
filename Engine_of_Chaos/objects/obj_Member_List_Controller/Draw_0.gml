//==========
//Top Window
//==========
switch(display_type){
    case "Status": Draw_Member_List_Top_Window_Global_Normal(); break;
    case "Magic": Draw_Member_List_Top_Global_Magic(); break;
    case "Item": Draw_Member_List_Top_Global_Item(); break;
    case "Mainhand_Equip": Draw_Member_List_Top_Global_Equip(); break;
    case "Buying_Item": Draw_Member_List_Top_Global_Item(); break;
    case "Buying_Equipment": Draw_Member_List_Top_Global_Item(); break;
}
//=============
//Bottom Window
//=============
if(display_type = "Buying_Equipment"){//for shops
    Draw_Member_List_Equipment_Shop_Page_0();
}
else{//use default pages
    switch(stats_page){
        case 0: Draw_Member_List_Page_0(); break;//Name, Class, Level, Exp
        case 1: Draw_Member_List_Page_1(); break;//Name HP, MP, ATT, DEF, AGI, MOV
    }
}

