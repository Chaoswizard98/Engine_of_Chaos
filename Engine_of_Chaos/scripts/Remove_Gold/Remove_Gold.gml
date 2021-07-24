function Remove_Gold() {
	//Wrapper for removing gold so we dont need to test for cap / cheat everywhere
	//argument0: ammount of gold to take from player
	if(!global.Unlimited_Gold){//if we have this cheat enabled, dont remove gold
	    global.Gold -= argument[0];
	    global.Gold = max(global.Gold,0);//ensure gold is always at least 0 (cant go negetive)
	}



}
