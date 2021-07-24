function Can_Afford_Cost() {
	//Wrapper for testing price so we dont need to test for cheat everywhere
	//argument0: ammount of gold we need to buy said item
	if(!global.Unlimited_Gold){//if we have this cheat enabled, dont bother testing
	    if(global.Gold >= argument[0]){
	        return true;
	    }
	    else{//cant afford, return false
	        return false;
	    }
	}
	else{
	    return true;
	}



}
