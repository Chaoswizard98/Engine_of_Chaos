function Spawn_Followers_Chapter_1(){
	if(global.Story_State = 2){
	    Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Max",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	}
	else if(global.Story_State = 3){
	    Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Ciera",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	}
	if(global.Story_State >= 4 && global.Story_State < 7){
		var _this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Max",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
		Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Ciera",_this);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	}
	if(global.Story_State >= 7){
		var _this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Max",global.Player);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
		_this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Ciera",_this);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
		_this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Kira",_this);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
		_this = Create_Follower(global.Player.x,global.Player.y,global.Player.direction,"AU_Karina",_this);//x,y,direction,id,target,x_offset,y_offset,cutscene_mode
	}
}