spawner_ID = "Default";//ID of this spawner (used to figure out which mob to spawn)

remaining_units = 0;//number of enemies this will spawn. (-1 for infinite)
max_active_units = -1;//max units that can be on the map from this tile at one time
cooldown_type = "Round_Start";//when do we update the cooldown timer?
cooldown = 0;//cooldown between spawns
timer = 0;//timer counts from cooldown to 0

spawn_criteria = "Never";//when does this event get triggered?
spawn_state = 1;//what AI region do we need to be in?
attack_on_spawn = true;//do we attack the same turn we're spawned in?
spawn_action = "none";//action variable, //Immediate_Action
spawn_cutscene_ID = "Spawn_Character";//cutscene to play when spawning target

