function Can_Afford_Cost(_cost) {
	if(!global.Unlimited_Gold){//if we have this cheat enabled, dont bother testing
	    if(global.Gold >= _cost){
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