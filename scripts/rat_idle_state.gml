///rat_idle_state
if(instance_exists(Jogador)){
    var dis = distance_to_object(Jogador);
    sprite_index = spr_enemy_rat_idle;
    if(dis <sight && alarm[0] <= 0){
        image_speed = .5;
        
        //Make sure we face the player
        if(Jogador.x != x){
            image_xscale = sign(Jogador.x-x);
        }
    }
}