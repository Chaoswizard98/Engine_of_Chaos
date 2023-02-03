function Create_Global_Game_Settings() {
	//controls
	global.Up_Button = vk_up;
	global.Down_Button = vk_down;
	global.Left_Button = vk_left;
	global.Right_Button = vk_right;
	global.Select_Button = ord("Z");
	global.Cancel_Button = ord("X");
	global.Inspect_Button = ord("C");
	global.Main_Menu_Button = vk_escape;
	global.Full_Screen_Button = vk_f12;

	//game settings
	global.Dialogue_Speed = 4;
	global.Perma_Death = false;
	global.Difficulty = "Normal";
	global.Sound_Volume = .5;
	global.Music_Volume = .25;
	global.Default_Language = "English"; //default project language (default fallback for non-valid language scripts)
	global.Language = "English"; //Current language 
	global.Number_Of_Save_Slots = 4;
	global.Save_Slot = 0;

	//cheats
	global.Control_All_Units = false;
	global.Unlimited_Gold = false;
	global.Buy_All_Items = false;
	global.Invincibility = false;
	global.Infinite_Magic = false;
	global.Infinite_Item_Use = false;
	global.Ignore_Terrain = false;
	global.Infinite_Movement = false;

	//engine settings
	global.View_Width = 480;//Width of the game's view
	global.View_Height = 270;//Height of the game's view
	global.Full_Screen = false;
	display_reset(0, true);

	global.Tile_Size = 24;
	global.Number_Of_Inventory_Slots = 4;
	global.Number_Of_Equipment_Slots = 2;
	global.Number_Of_Spell_Slots = 4;
	global.Xp_Per_Level = 100;//xp required to level up
	global.Allow_Xp_Roll_Over = true;//do we keep the remaining xp on level up?
	global.Usable_HP_MP = false;//can we use newly aquired HP / MP in battle (via level up)
	global.Damage_Cures_Sleep = true;//Does taking damage end the sleep status effect?
	global.Gold_Cap = 9999999;//Highest value gold can be.
	global.Use_Death_Sprite_Override = false;//Whether or not dead party members appear as blue flames when dead.

	//Utility
	global.Player = noone;//Keeps track of the current character we're controlling.
	global.Player_ID = "AU_Jason";//Same as above, but the ID instead of the object.
	global.Price_Tag_Font = font_add_sprite(spr_Shop_Font, ord("0"), true, 1);//font for shop prices
	global.Show_Terrain_Tiles = false;//debug for showing trigger tiles, etc
	global.Show_FPS = false;//Whether or not we show the current FPS
	global.In_Battle = false;//are we currently in a battle?
	global.Xp_Modifier = 1;//xp gains modifier for a specific battle.
	global.Battle_Cutscene_Terrain = "Default";//what battle background / foreground set do we use in battle?
	global.Max_Target_Range = 99;//Max search distance when generating attack range
	global.Max_AoE_Range = 99;//Max AoE Size
	global.Egress_Room = noone;//Room we retreat back to.
}