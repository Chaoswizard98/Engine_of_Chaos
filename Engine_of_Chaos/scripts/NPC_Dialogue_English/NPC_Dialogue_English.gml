function NPC_Dialogue_English(_npc,_player,_dialogue_ID) {
	var _player_name = Get_Character_Name("Local",_player,"Total");
    
	switch(_dialogue_ID){
		//============
		//Generic NPCs
		//============
        case "Default_Advisor_Greeting": return ("Hello " + _player_name + ". Did you need something?"); break;
	    case "Default_Advisor_Farewell": return ("Take it easy " + _player_name + "!"); break;
		case "Default_Shopkeeper_Greeting": return ("What's up, boy!%#We guarantee all items to#be in good condition!"); break;
	    case "Default_Shopkeeper_Farewell": return ("Thank you! Come again!"); break;
		case "Default_Innkeeper_Greeting": return ("Hello there!%#What can I do for ya?"); break;
	    case "Default_Innkeeper_Farewell": return ("Take care now!"); break;
		case "Default_Join_In_Battle": return ("Sure, I'll join you in battle."); break;
		case "Default_Switch_Character": return ("Why don't you rest a while " +_player_name+ "?^ I'll take it from here."); break;
		
		//==============
	    //Ashenwood NPCs
		//==============
	    case "Jasons_Mom": return ("Good Morning sweetie. Going out?%#Make sure you eat something before you go!"); break;
	    case "Jasons_Dad": return ("Hey there son! Don't mind me I'm just doing some woodworking.%#Oh you're going on another adventure?%#Have fun! Try not to die out there!"); break;
	    case "Jasons_Grandpa": return ("Hey there lad. I was about to tend to the animals.%#If you see Ol' Muleborne, tell him I said hi!"); break; 
	    case "Cieras_Mom": return ("I know she can handle herself, but I still worry about her.%#Keep her safe ok?"); break;
	    case "Cieras_Dad": return ("Good Morning " + _player_name + "!%#CIERA said you guys were headed off on another adventure.%#You kids look out for each other out there!"); break;
	    case "Cieras_Middle_Brother": return ("Phew!^ This is hard work!"); break;
	    case "Cieras_Older_Brother": return ("Hey there " + _player_name + "!%#I'm just taking a quick break before I get back to the fields.%#You're going on another adventure?%#Be sure to keep my sister safe, ok?"); break;
	    case "Maxs_Mom": return ("Going on another adventure " + _player_name + "?%#Make sure MAX doesnt get into too much trouble ok?"); break;
            
	    case "Muleborne": return ("Hey there " + _player_name + ".%#I heard you were going on another adventure.%#Have you talked to my granddaughter yet?%#She said she had a gift for you."); break;
	    case "Jess": return ("Stay safe out there okay?"); break;
	    case "Ashenwood_Villager_1": return ("Don't mind me, I'm just doing a routine patrol.%#Keeping an eye out for monsters and all that."); break;
	    case "Ashenwood_Villager_2": return ("I'm getting better,^ but I'm still struggling with proper edge alignment.%#At this rate I'll never become a knight.%#That won't stop me from trying though!"); break;
	    case "Ashenwood_Villager_3": return ("I heard you were working on your swordsmanship.%#How's that going?"); break;
	    case "Ashenwood_Kid_1": return ("Some adventurers stopped by the inn earlier.%#I think I heard them talking about goblins."); break;
	    case "Ashenwood_Kid_2": return ("Did you ever eat a bug?%#They're kind of crunchy..."); break;
	    case "Ashenwood_Kid_3": return ("I saw a bunny the other day!%#It was cute and fluffy but it ran away when I got close..."); break;
	    case "Ashenwood_Innkeeper": return ("Be careful if you're headed east.%#The wolf population can get a bit out of hand this time of year."); break;
	    case "Granny_Gladys": return ("Hey there " + _player_name + ".%#If you need any healing while you're in town,^ you make sure you stop by ol' Granny Gladys.%#I'm always happy to help!"); break;
	    case "Ashenwood_Adventurer_1": return ("That ogre we fought sure was tough!%#He shattered my shield and sent me flying with one swing!"); break;
	    case "Ashenwood_Adventurer_2": return ("My friend and I just took down an ogre living in a cave up north.%#He was living with a group of around 50 goblins.%#Apparently they provided him with food and in turn, he offered his protection.%#It was a tough fight,^ but we managed to take them all out!"); break;
	    case "Ashenwood_Traveler": return ("I traveled here all the way from Merillian City just to get my hands on a few drinks.%#Seriously, the wine you make here is out of this world!"); break;
        
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