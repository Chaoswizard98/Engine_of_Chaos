function NPC_Dialogue_English(_npc,_player,_dialogue_ID) {
	var _player_name = Get_Character_Name("Local",_player,"Total");
    
	switch(_dialogue_ID){
		//============
		//Generic NPCs
		//============
        case "Default_Advisor_Greeting": return ("Hello " + _player_name + ". Did you need something?"); break;
	    case "Default_Advisor_Farewell": return ("Take it easy " + _player_name + "!"); break;
		case "Default_Priest_Greeting": return ("Ah, I've been expecting you."); break;
	    case "Default_Priest_Farewell": return ("May the light guide you on your journey."); break;
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
        
		//=============
		//Hillford NPCs
		//=============
		case "Priest": return ("Ah, I've been expecting you.%\nHow may I assist you today?"); break;
		case "Annas_Herbals_Greeting": return ("Hey there!%\nWelcome to Anna's Herbals!"); break;
		case "Judy": return ("My cat FLUFFY is missing.%\nIf you find him,^ please bring him back to me!%\nI miss him dearly..."); break;
		case "Judy_With_Fluffy": return ("Thanks again for returning FLUFFY to me!"); break;
		case "Hillford_Kid_1": return ("Chasing chickens is fun!"); break;
		case "Hillford_Miner_01": return ("It's important to step outside every once in a while.%\n You'll go crazy if you spend too much time digging in a dimly lit mineshaft."); break;
		case "Hillford_Miner_02": return ("Hillford and Moorenfirch worked together to carve a tunnel through the mountains to make travel easier.%\nOur little town grew a lot after that project was completed!"); break;
		case "AU_Hillford_Mine_Blocker": return ("Sorry but I can't let you pass here just yet. ^We have a load of ore coming through."); break;
		
		case "Hillford_Villager_01": return ("Normally I'll take a walk through the forest,^ but the wolves get hostile this time of year.%\n Thankfully adventurers come through every once in a while and help keep their numbers down."); break;
		case "Hillford_Villager_02": return ("Most people follow the Goddess Aronia here in Hillford,^ but all are welcome in our little church."); break;
		case "Hillford_Kid_02": return ("My parents won't let me have a pony so I come here to pet these ones."); break;
		case "AU_Hillford_Door_Blocker_01": return ("Oh quit your complaining. Moorenfirch ain't that far away."); break;
		case "AU_Hillford_Door_Blocker_02": return ("I'm getting too old for all this walking around that we do."); break;
		case "AU_Hillford_Innkeeper": return ("The mines should be relatively monster free.^ So long as you don't draw attention to yourself, you should be fine."); break;
		
		case "AU_Hillford_Miner_03": return ("This path leads to Silverwind.^ Well,^ it will eventually.^ It's our largest job yet!"); break;
		case "AU_Hillford_Miner_04": return ("Ever since the tunnel between Hillford and Moorenfirch was completed, travel has become much easier."); break;
		case "AU_Hillford_Miner_05": return ("Most of the gemstones here are sent to the mages college in Merillain City.^ Apparently they're used to imbue items with magic."); break;
		case "AU_Hillford_Miner_06": return ("The gemstones we mine here are a form of condensed magical power."); break;
		case "AU_Hillford_Miner_07": return ("Since they act as a form of light,^ we tend to leave a few gems in the walls.^ No need to mine them all!"); break;
		case "AU_Hillford_Miner_08": return ("Even though Hillford is part of Merillian's territory,^ it was actually Silverwind that initiated the tunneling project."); break;
		
		
		case "Hillford_BS_Apprentice": return ("Hello there,^ welcome to Dolan's Smithy.%\n I'm just an apprentice so if you’re looking to buy something,^ you should talk to my master."); break;
		//=======
		//Animals
		//=======
	    case "Generic_Cow": return ("Mooooooo!"); break;
		case "Generic_Cat": return ("Meow!"); break;
        
		//=======
		//Default
		//=======
	    case "Default": return ("Placeholder NPC Dialogue."); break;
	}

	return ("Unregistered Dialogue Message.");
}