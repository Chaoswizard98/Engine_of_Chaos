function Create_New_Data(){
	var i,j;

	global.Version = "1.1.0";//Version number for save file. (useful for testing for outdated versions)
	global.Gold = 100;//Starting gold
	global.Story_State = 0;//Internal story state flag

	global.Number_Of_Chapters = 1;
	global.Number_Of_Chapter_Flags = 3;

	for(i = 0; i < global.Number_Of_Chapters; i += 1){//Loop through all chapters
	    for(j = 0; j < global.Number_Of_Chapter_Flags; j += 1){//Loop through all chapter Flags
	        Set_Story_Flag(i,j,"none");//extra flags [chapter,flag]
	    }
	}

	global.Number_Of_Characters = 5;//Total number of characters in this list

	global.Number_Of_Quantity_Shops = 2;//How many shops are quantity based?
	global.Quantity_Shop_Size[0] = 0;//how many items in a particular shop?
	global.Quantity_Shop_Stock[0,0] = "none";//Items in the shop
	
	global.Quantity_Shop_Size[1] = 1;//how many items in a particular shop?
	global.Quantity_Shop_Stock[1,0] = "AU_Power_Wine";//Items in the shop

	global.Number_Of_Chests = 13;//how many chests are in the game?

	//initiate chests
	for (i = 0; i< global.Number_Of_Chests; i+= 1){
	    global.Chest_Looted[i] = false;
	}

	//======
	//JASON=
	//======
	i = 0;
	Set_Starting_Stats(i,"AU_Jason","JASON","AU_Swordsman_Jason");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Sword",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,false);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//====
	//MAX=
	//====
	i = 1;
	Set_Starting_Stats(i,"AU_Max","MAX","AU_Archer_Max");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Arrow",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"none",false,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//======
	//CIERA=
	//======
	i = 2;
	Set_Starting_Stats(i,"AU_Ciera","CIERA","AU_Healer_Ciera");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Staff",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"none",false,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//=====
	//KIRA=
	//=====
	i = 3;
	Set_Starting_Stats(i,"AU_Kira","KIRA","AU_Thief_Kira");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Knife",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"none",false,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//=======
	//KARINA=
	//=======
	i = 4;
	Set_Starting_Stats(i,"AU_Karina","KARINA","AU_Mage_Karina");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Staff",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"none",false,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//========
	//PHILLIP=
	//========
	i = 5;
	Set_Starting_Stats(i,"AU_Phillip","PHILLIP","AU_Knight_Phillip");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Spear",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"none",false,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
}