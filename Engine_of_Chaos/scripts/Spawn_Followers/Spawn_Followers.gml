function Spawn_Followers() {
	//This script creates follower characters and sets them to follow the player
	//They show up based on story state / flags as well as what map you're on.
	switch(room){
	    case room_Ashenwood: case room_Jasons_House_Second_Floor: case room_Jason_Basement: case room_Cieras_House_Second_Floor: case room_Cieras_House_Basement:
	    case room_Max_Second_Floor: case room_Muleborne_Second_Floor: case room_Ashenwood_Shop_Second_Floor:
	        if(global.Story_State = 2){
	            Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"Max",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	        }
	        else if(global.Story_State = 3){
	            Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"Ciera",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	        }
	        if(global.Story_State >= 4){
	        var _this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"Max",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	        Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"Ciera",_this);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	        }
	    break;
	}
}