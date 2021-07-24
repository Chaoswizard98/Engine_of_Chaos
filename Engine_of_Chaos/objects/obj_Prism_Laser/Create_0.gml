event_inherited();
x_pos = obj_Battle_Cutscene_Controller.scene_x - sprite_get_width(spr_Prism_Flower_Projectile);
y_pos = obj_Battle_Cutscene_Controller.scene_y + round(obj_Battle_Cutscene_Controller.scene_height/2);
end_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width;
end_y = y_pos;
hit_target = false;
movement_speed = 30;
event_perform(ev_other,ev_user1);

