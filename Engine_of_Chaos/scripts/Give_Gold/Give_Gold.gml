function Give_Gold(_ammount){
	global.Gold += _ammount;//increase gold by ammount
	global.Gold = min(global.Gold,global.Gold_Cap);//adjust for gold cap
}