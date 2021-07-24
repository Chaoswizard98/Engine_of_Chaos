if((round(global.Player.x) = x)&&(round(global.Player.y) = y)){//if player stands on this tile
    if(call_cutscene){
        call_cutscene = false;
        Create_Cutscene_Controller(cutscene_ID,"Cutscene",0,global.Player,noone);
        if(!is_persistent){
            instance_destroy();
        }
    }
}
else{//player is not on tile
    call_cutscene = true;//allow tile to be triggered
}

