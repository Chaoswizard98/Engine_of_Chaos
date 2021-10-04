function Remove_Gold(_ammount){
	if(!global.Unlimited_Gold){//if we have this cheat enabled, dont remove gold
	    global.Gold -= _ammount;
	    global.Gold = max(global.Gold,0);//ensure gold is always at least 0 (cant go negetive)
	}
}