function NPC_Dialogue_English(_npc,_player,_dialogue_ID) {
	var _player_name = Get_Character_Name("Local",_player,"Total");
    
	switch(_dialogue_ID){
		//============
		//Generic NPCs
		//============
        case "Default_Advisor_Greeting": return ("Hello " + _player_name + ". Did you need something?"); break;
	    case "Default_Advisor_Farewell": return ("Take it easy " + _player_name + "!"); break;
		case "Default_Shopkeeper_Greeting": return ("What's up, boy!%\nWe guarantee all items to\nbe in good condition!"); break;
	    case "Default_Shopkeeper_Farewell": return ("Thank you! Come again!"); break;
		case "Default_Innkeeper_Greeting": return ("Hello there!%\nWhat can I do for ya?"); break;
	    case "Default_Innkeeper_Farewell": return ("Take care now!"); break;
		case "Default_Join_In_Battle": return ("Sure, I'll join you in battle."); break;
		case "Default_Switch_Character": return ("Why don't you rest a while " +_player_name+ "?^ I'll take it from here."); break;
		
		//==============
	    //Ashenwood NPCs
		//==============
	    case "Jasons_Mom": return ("Good Morning sweetie. Going out?%\nMake sure you eat something before you go!"); break;
	    case "Jasons_Dad": return ("Hey there son! Don't mind me I'm just doing some woodworking.%\nOh you're going on another adventure?%\nHave fun! Try not to die out there!"); break;
	    case "Jasons_Grandpa": return ("Hey there lad. I was about to tend to the animals.%\nIf you see Ol' Muleborne, tell him I said hi!"); break; 
	    case "Cieras_Mom": return ("I know she can handle herself, but I still worry about her.%\nKeep her safe ok?"); break;
	    case "Cieras_Dad": return ("Good Morning " + _player_name + "!%\nCIERA said you guys were headed off on another adventure.%\nYou kids look out for each other out there!"); break;
	    case "Cieras_Middle_Brother": return ("Phew!^ This is hard work!"); break;
	    case "Cieras_Older_Brother": return ("Hey there " + _player_name + "!%\nI'm just taking a quick break before I get back to the fields.%\nYou're going on another adventure?%\nBe sure to keep my sister safe, ok?"); break;
	    case "Maxs_Mom": return ("Going on another adventure " + _player_name + "?%\nMake sure MAX doesnt get into too much trouble ok?"); break;
            
	    case "Muleborne": return ("Hey there " + _player_name + ".%\nI heard you were going on another adventure.%\nHave you talked to my granddaughter yet?%\nShe said she had a gift for you."); break;
	    case "Jess": return ("Stay safe out there okay?"); break;
	    case "Ashenwood_Villager_1": return ("Don't mind me, I'm just doing a routine patrol.%\nKeeping an eye out for monsters and all that."); break;
	    case "Ashenwood_Villager_2": return ("I'm getting better,^ but I'm still struggling with proper edge alignment.%\nAt this rate I'll never become a knight.%\nThat won't stop me from trying though!"); break;
	    case "Ashenwood_Villager_3": return ("I heard you were working on your swordsmanship.%\nHow's that going?"); break;
	    case "Ashenwood_Kid_1": return ("Some adventurers stopped by the inn earlier.%\nI think I heard them talking about goblins."); break;
	    case "Ashenwood_Kid_2": return ("Did you ever eat a bug?%\nThey're kind of crunchy..."); break;
	    case "Ashenwood_Kid_3": return ("I saw a bunny the other day!%\nIt was cute and fluffy but it ran away when I got close..."); break;
	    case "Ashenwood_Innkeeper": return ("Be careful if you're headed east.%\nThe wolf population can get a bit out of hand this time of year."); break;
	    case "Granny_Gladys": return ("Hey there " + _player_name + ".%\nIf you need any healing while you're in town,^ you make sure you stop by ol' Granny Gladys.%\nI'm always happy to help!"); break;
	    case "Ashenwood_Adventurer_1": return ("That ogre we fought sure was tough!%\nHe shattered my shield and sent me flying with one swing!"); break;
	    case "Ashenwood_Adventurer_2": return ("My friend and I just took down an ogre living in a cave up north.%\nHe was living with a group of around 50 goblins.%\nApparently they provided him with food and in turn, he offered his protection.%\nIt was a tough fight,^ but we managed to take them all out!"); break;
	    case "Ashenwood_Traveler": return ("I traveled here all the way from Merillian City just to get my hands on a few drinks.%\nSeriously, the wine you make here is out of this world!"); break;
        
		//=======
		//Animals
		//=======
	    case "Cow": return ("Mooooooo!"); break;
        
		//=======
		//Default
		//=======
	    case "Default": return ("Placeholder NPC Dialogue."); break;
	}

	return ("Unregistered Dialogue Message.");
}