function General_Messages_English(_menu, _message_ID, _data1, _data2, _data3, _data4, _data5) {
	//Menu: Menu we're calling from
	//Message_ID: Message to look up

	//Data#: Extra data provided by the menu object
	//things like character names, items, prices, etc.


	switch(_menu){
		//===========
		//Intro Menu=
		//===========
		case "Intro_Menu":
			switch(_message_ID){
				case "Intro_Dialogue_Short": return ("I can tell just how pumped you are, so here's the menu to get started!@") break;	
				case "Intro_Dialogue": return ("Did you know that you can skip this message by holding space on the previous screen?%\nI can tell just how pumped you are, so here's the menu to get started!@") break;	
			}
		break;
		
		
		
	    //=================
	    //Party_Management=
	    //=================
	    case "Party_Management":
	        switch(_message_ID){
	            case "Who_Quits_Party?": return ("Who quits the battle party?") break;
	            case "Cancel": return ("Did you change your mind?") break;
	            case "Cancel_Leader": return (_data1 + "! What will they do without you!?") break;
	            case "Quit_Party": return (_data1 + ", why don't you take a rest now?") break;
	            case "Empty_Faction": return ("Erm.^ You don't have a battle party...") break;
            
	            case "Full_Party": return ("Everyone is already in the battle party!") break;
	            case "Who_Joins_Party?": return ("Who joins the battle party?") break;
	            case "Joins_Party": return (_data1 + ", fight bravely on the front!") break;
	            case "Choose_Relief": return ("Choose a relief.") break;
	            case "Swap_Party_Members": return (_data1 +", why don't you take a rest now?%\n"+_data2 +", fight bravely on the front!") break;
	        }
	    break;
	    //==============
	    //Shop Messages=
	    //==============
	    case "Default_Shop":
	        switch(_message_ID){
	            case "Start_Buy_Deals": return ("You must be surprised!\nWhat do you want to buy?@"); break;
	            case "Start_Buy": return ("What do you want to buy?@"); break;
	            case "Start_Sell": return ("Whose and which item do\nyou want to sell?"); break;
	            case "Start_Repair": return ("Whose and which item\nshall I repair?"); break;
	            case "Not_Damaged": return ("It's not damaged."); break;
	            case "Out_Of_Stock": return "I'm very sorry!\nI'm out of stock!"; break;
	            case "Who_Gets_It?": return ("\nWho gets it?"); break;
	            case "Not_Enough_Gold": return ("\nYou need more money to buy it."); break;
	            case "Cancel_Purchase": return ("Oh...shucks!"); break;
	            case "Equip_Item?": return ("Equip it now?@"); break;
	            case "Buy_Item": return ("Here ya go!\nUse it wisely!"); break;
	            case "Start_Empty_Faction": return ("You weren't expecting to use my services now were you?"); break;
            
	            case "Item_Costs_X": return ("\nThe "+_data1+" costs\n"+_data2+ " gold coins.\nOK?@"); break;
            
	            case "Cant_Equip": return (_data1 + " can't be equipped with it. OK?@"); break;
	            case "Hands_Full": return ("Oops! " + _data1 + "'s hands\nare full! To anybody else?@"); break;
	            case "Cant_Equip_Cursed": return (_data1 + " can't remove\nthe cursed equipment.%\nHere ya go!\nUse it wisely!"); break;
	            case "Buy_And_Equip_Cursed": return ("Gosh!^ " + _data1 + " has been cursed!"); break;
	            case "Buy_And_Equip": return ("Ah, it suits you!"); break;
            
	            case "Buy_For_X": return ("I'll pay " + _data1+ " gold coins\nfor it, OK?@"); break;
	            case "Buy_For_X_Rare": return ("Wow, it's a rare bird!\nI'll pay " + _data1+ " gold coins\nfor it, OK?@"); break;
	            case "Repair_For_X": return ("I'll repair that for " + _data1+ " gold coins.\nOK?@"); break;
	            case "Cant_Buy": return ("Sorry, I can't buy that..."); break;
	            case "Sold_Item": return ("Yeah, I got it."); break;
	            case "Repaired_Item": return ("Here ya go! Good as new!"); break;
	            case "Cancel_Sell_Item": return ("Too bad."); break;
	            case "Cancel_Repair_Item": return ("Too bad."); break;
	            case "Cancel_Sell_Cursed": return ("Hey, that's one of those cursed items isn't it?%\nSorry but I won't be buying that!"); break;
	        }
	    break;
	    //================
	    //Church Messages=
	    //================
	    case "Default_Church":
	        switch(_message_ID){
	            case "Perma_Death": return ("Sorry, but even I cannot revive the dead..."); break;
	            case "Investigate": return ("Let me investigate all of you."); break;
	            case "Nobody_Dead": return ("Nobody is dead."); break;
	            case "Revive_For_X": return ("Gosh! " + _data1 + " is\nexhausted!%\nBut I can recall the soul.%\nIt will cost "+_data2+ " gold\ncoins. OK?@"); break;
	            case "Cant_Afford": return ("You can't afford it!?\nWhat a pity..."); break;
	            case "Cancel": return ("You don't need my help?"); break;
	            case "Character_Revived": return (_data1 + " has been revived!"); break;
	            case "Another_Desire": return ("Do you have another desire?@"); break;
	            case "Invalid_Party": return ("Sorry, I can't help you right now."); break;
            
	            case "Save": return ("May I record your adventure now?@"); break;
	            case "Continue_Adventure": return ("Would you like to continue your adventure?@"); break;
	            case "Exit_Game": return ("Then take a rest before you continue."); break;
            
	            case "Nobody_Poisoned": return ("Nobody is poisoned."); break;
	            case "Nobody_Paralyzed": return ("Nobody is paralyzed."); break;
	            case "Nobody_Cursed": return ("Nobody is cursed."); break;
	            case "Cure_Poison_For_X": return ("Gosh! " + _data1 + " is\npoisoned!%\nBut I can treat it.%\nIt will cost "+_data2+ " gold\ncoins. OK?@"); break;
	            case "Cure_Paralyzed_For_X": return ("Gosh! " + _data1 + " is\nparalyzed!%\nBut I can treat it.%\nIt will cost "+_data2+ " gold\ncoins. OK?@"); break;
	            case "Cure_Curse_For_X": return ("Gosh! " + _data1 + " is\ncursed!%\nBut I can treat it.%\nIt will cost "+_data2+ " gold\ncoins. OK?@"); break;
	            case "No_Longer_Poisoned": return (_data1 + " is no longer poisoned."); break;
	            case "No_Longer_Paralyzed": return (_data1 + " is no longer paralyzed."); break;
	            case "No_Longer_Cursed": return (_data1 + " is no longer cursed."); break;
            
	            case "Cant_Promote_Anyone": return ("No one in your party can be promoted."); break;
	            case "Promote_Who": return ("Who do you want to promote?"); break;
	            case "Im_Wrong": return ("Oh, I'm wrong."); break;
	            case "X_Wants_Promotion": return (_data1 + " wants to be promoted, right?@"); break;
	            case "Remain_Current_Class": return ("Hmm... " + _data1 + " had better remain the current class."); break;
	            case "Can_Promote_To_X": return (_data1 + " can be promoted to " +_data2+". OK?@"); break;
	            case "Promote": return ("Now, let me conduct the rite.\nThe light blesses... " +_data1+" "+_data2 + "...%\nWith the class of " +_data3+"!@"); break;
	            case "Successfully_Promoted": return (_data1 + " was successfully promoted to " +_data2+"."); break;
	        }
	    break;
	    //============
	    //Member List=
	    //============
	    case "Member_List":
	        switch(_message_ID){
	            case "Cast_Spell": return ("Cast the spell on who?"); break;
	            case "Use_Item": return ("Use the " +_data1 + " on who?"); break;
        
	            //Give
	            case "Cancel_Give_Cursed": return ("You cannot give away the\n"+_data1+".^\nIt's cursed!"); break;
	            case "Give_To_Whom?": return ("Give the " +_data1 + " to whom?"); break;
	            case "Give_To_Self": return ("The " +_data1 + " is now held in a different hand."); break;
	            case "Give_To_Other": return ("The " +_data1 + " now belongs to " + _data2 + "."); break;
	            case "Trade_With_Other": return ("The " +_data1 + " was exchanged for " + _data2 + "'s " + _data3); break;
            
	            //Equip
	            case "Equip_Cursed": return (_data1+" has been cursed!"); break;
	            case "Cancel_Equip_Cursed": return ("The curse prevents you from switching equipment."); break;
            
	            //Drop
	            case "Discard_Item?": return ("The " +_data1 + " will be discarded. OK?@"); break;
	            case "Item_Was_Discarded": return ("The " +_data1 + " has been discarded."); break;
	            case "Cancel_Drop_Cursed": return ("You cannot drop the\n"+_data1+".^\nIt's cursed!"); break;
	        }
	    break;
	    //================
	    //Spell Selection=
	    //================
	    case "Spell_Selection":
	        switch(_message_ID){
	            case "No_Magic": return ("Character has no magic."); break;
	            case "Not_Enough_Magic": return ("Not enough magic."); break;
	        }
	    break;
	    //===============
	    //Item Selection=
	    //===============
	    case "Item_Selection":
	        switch(_message_ID){
	            case "No_Items": return ("Character has no items."); break;
	            case "No_Equippable_Items": return ("Character has no equippable items."); break;
	            case "Cancel_Give_Cursed": return ("You cannot give away the " +_data1 + ". ^It's cursed!"); break;
	            case "Cancel_Equip_Cursed": return ("The curse prevents you from exchanging equipment."); break;
	            case "Character_Was_Cursed": return (_data1+" has been cursed!"); break;
	            case "Discard_Item?": return ("The " + _data1 +" will be discarded. OK?@"); break;
	            case "Cancel_Drop_Cursed": return ("\nYou cannot drop the " + _data1 +". ^It's cursed!"); break;
	            case "Cancel_Summon_Give": return ("Summoned creatures cannot give away items!"); break;
	            case "Item_Was_Discarded": return ("\nThe " + _data1 +" has been discarded."); break;
	        }
	    break;
	    //=================
	    //Target Selection=
	    //=================
	    case "Target_Selection":
	        switch(_message_ID){
	            case "No_Targets": return ("No targets in range."); break;
	            case "Not_Enough_Magic": return ("Not enough magic."); break;
	        }
	    break;
	    //===============
	    //Generic Battle=
	    //===============
	    case "Generic_Battle":
	        switch(_message_ID){
	            case "Reveal_Hidden_Unit": return (_data1 + " has appeared."); break; 
	            case "Spawn_Unit": return (_data1 + " has appeared."); break;
	            case "Quit": return ("Are you sure you want to quit to the title screen?@"); break;
	            case "Retreat": return ("Are you sure you want to retreat from this battle?@"); break;
	            case "Consumed_Spell_MP": return ("\n" + _data1 + "'s active spells consumed " + _data2 + " MP.%"); break;
	            case "Break_Spell_Maintain": return ("\n" + _data1 + "'s active spells can no longer be maintained.%"); break;
	        }
	    break;
	    //=================
	    //Battle Cutscenes=
	    //=================
	    case "Battle_Cutscene":
	        switch(_message_ID){
	            //default script
	            case "Melee_Attack": return (_data1 + " attacks!"); break;
	            case "Ranged_Attack": return (_data1 + " attacks!"); break;
	            case "Cast_Spell": return (_data1 + " casts " + _data2 + " level " + _data3 + "!"); break;
	            case "Use_Item": return (_data1 + " uses the " + _data2 + "!"); break;
	            case "Word_of_Power": return (_data1 + " casts a spell!"); break;
	            case "Blocked_Attack": return (_data1 + " blocked the attack."); break;
	            case "Critical_Hit": return ("Critical Hit! "); break;
	            case "Took_Damage": return (_data1 + " took " + _data2 + " damage."); break;
	            case "Regained_Health": return (_data1 + " regains " + _data2 + " health."); break;
	            case "Regained_Magic": return (_data1 + " regains " + _data2 + " magic."); break;
	            case "Was_Defeated": return ("\n" + _data1 + " was defeated."); break;
	            case "Spell_Has_No_Effect": return ("The spell has no effect on " + _data1); break;
	            case "Summoned_Creature": return ("The " + _data1 + " begins to take shape!"); break;
	            case "Nothing_Happens": return ("But nothing happens..."); break;
	            case "Spell_Fizzles": return ("But the spell fizzles..."); break;
	            case "Attacks_Again_Melee": return (_data1 + " attacks again!"); break;
	            case "Attacks_Again_Ranged": return (_data1 + " attacks again!"); break;
	            case "Attacks_Again_Cast_Spell": return (_data1 + " attacks again!"); break;
	            case "Attacks_Again_Use_Item": return (_data1 + " attacks again!"); break;
	            case "Attacks_Again_Word_of_Power": return (_data1 + " casts again!"); break;
	            case "Counter_Attack": return (_data1 + " counters!"); break;
	            case "Gains_XP": return (_data1 + " gains " + _data2 + " xp!"); break;
	            case "Found_Gold": return ("\nFound " + _data1 + " gold."); break;
            
	            case "Item_Damaged": return ("\nCracks appear in the " + _data1 + "."); break;
	            case "Item_Broke": return ("\nThe " + _data1 + " turned to dust!"); break;
	            case "Item_Dropped": return ("\n" + _data1 + " dropped the " + _data2 + "."); break;
	            case "Item_Recieved": return ("\n" + _data1 + " recieved the " + _data2 + "."); break;
	            case "Inventory_Full": return ("\nBut " + _data1 + " cannot hold it!"); break;
            
	            //Custom Scripts
	            case "Prism_Flower_Attack": return ("Prism Laser!"); break;
	            case "Burst_Rock_Exploded": return ("Burst Rock exploded!"); break;
	        }
	    break;
	    //=========
	    //Level Up=
	    //=========
	    case "Level_Up":
	        switch(_message_ID){
	            case "Is_Now_Level_X": return (_data1 + " is now level " + _data2 + "!"); break;
	            case "Gain_Attack": return ("\nAttack increased by " + _data1 + "!"); break;
	            case "Gain_Defense": return ("\nDefense increased by " + _data1 + "!"); break;
	            case "Gain_Agility": return ("\nAgility increased by " + _data1 + "!"); break;
	            case "Gain_Max_Health": return ("\nMaximum HP increased by " + _data1 + "!"); break;
	            case "Gain_Max_Magic": return ("\nMaximum MP increased by " + _data1 + "!"); break;
	            case "Learn_Spell": return ("\nLearned the new " + _data1 + " spell!"); break;
	            case "Increase_Spell_Level": return ("\n" + _data1 + " is now level " + _data2 + "!"); break;
	        }
	    break;
	    //===========
	    //Containers=
	    //===========
	    case "Containers":
	        switch(_message_ID){
	            //container types
	            case "Open_Chest": return (_data1 + " opened the chest."); break;
	            case "Search_Barrel": return (_data1 + " searches the barrel."); break;
	            case "Search_Area": return (_data1 + " investigates the area."); break;
            
	            //general messages
	            case "Empty": return ("Unfortunately it was empty!"); break;
	            case "Recieves_Gold": return (_data1 + " recieves " + _data2 + " Gold!"); break;
	            case "Found_Item": return (_data1 + " found the\n" + _data2 + "."); break;
	            case "Recieves_Item": return (_data1 + " recieves the " + _data2 + "!"); break;
	            case "Inventory_Full": return ("But no one can hold it!"); break;
	        }
	    break;
	}

	return "";



}
