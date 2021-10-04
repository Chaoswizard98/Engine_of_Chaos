function Give_Gold(_ammount){
	global.Gold += _ammount
	global.Gold = min(global.Gold,9999999);
}