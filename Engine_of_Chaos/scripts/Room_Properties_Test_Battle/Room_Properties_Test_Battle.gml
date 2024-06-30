//==================
//Room Creation Code
//==================
function Room_Creation_Test_Battle(){
	//======
	//JASON=
	//======
	var i;
	i = 0;
	Set_Starting_Stats(i,"AU_Jason","JASON","AU_Swordsman_Jason",30);//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Sword",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,false);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//====
	//MAX=
	//====
	i = 1;
	Set_Starting_Stats(i,"AU_Max","MAX","AU_Archer_Max",30);//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Arrow",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//======
	//CIERA=
	//======
	i = 2;
	Set_Starting_Stats(i,"AU_Ciera","CIERA","AU_Healer_Ciera",30);//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Staff",true);//lookup type, character, item, auto-equip
	Give_Character_Item("Global",i,"AU_Healer_Staff",false);//lookup type, character, item, auto-equip
	
	global.Spell_Level[i,1] = 4;
	global.Spell_Level[i,2] = 4;
	global.Spell_Level[i,3] = 4;
	global.Spell_Level[i,4] = 4;
	Join_Party("Global",i,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//=====
	//KIRA=
	//=====
	i = 3;
	Set_Starting_Stats(i,"AU_Kira","KIRA","AU_Thief_Kira",30);//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Battered_Knife",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//=======
	//KARINA=
	//=======
	i = 4;
	Set_Starting_Stats(i,"AU_Karina","KARINA","AU_Mage_Karina",30);//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Staff",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	//========
	//PHILLIP=
	//========
	i = 5;
	Set_Starting_Stats(i,"AU_Phillip","PHILLIP","AU_Knight_Phillip");//ID, Character_ID, Name, Level, Level_Scheme
	Give_Character_Item("Global",i,"AU_Wooden_Spear",true);//lookup type, character, item, auto-equip
	Join_Party("Global",i,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	
	Start_Battle("Test_Battle",room_Title_Screen,true,"Default",1);
	Play_Music(bgm_Random_Battle,"Fade_To_Next",250,0);
}

//=============
//Room Transfer
//=============
function Room_Stats_Test_Battle(_stat, _direction){
	var _cutscene = "none";
	var _room = noone;
	var _transition = "Screen_Fade";
	var _tile = "Egress";
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
		case "Cutscene": return _cutscene; break;
		case "Room": return _room; break;
		case "Transition": return _transition; break;
		case "Tile": return _tile; break;
	}
}