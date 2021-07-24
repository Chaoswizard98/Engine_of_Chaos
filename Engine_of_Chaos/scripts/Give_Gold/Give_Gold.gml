function Give_Gold() {
	//Wrapper for giving gold so we dont need to test for cap everywhere
	//argument0: ammount of gold to give to player 
	global.Gold += argument[0];
	global.Gold = min(global.Gold,9999999);



}
