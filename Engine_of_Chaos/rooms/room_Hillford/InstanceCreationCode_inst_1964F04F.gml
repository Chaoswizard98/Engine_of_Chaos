Set_Character_Stats(id,"Fluffy");
Face_Direction(id,"Right");
if(!Check_Story_Flag(0,1,"Returned_Fluffy")){//If we have not yet returned fluffy
	instance_destroy();//He does not appear in town
}
