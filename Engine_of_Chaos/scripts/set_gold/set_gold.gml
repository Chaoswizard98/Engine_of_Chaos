function Set_Gold(_ammount){
	global.Gold = _ammount;//Set gold value to the given ammount.
	global.Gold = min(global.Gold,global.Gold_Cap);//Don't exceed gold cap.
}