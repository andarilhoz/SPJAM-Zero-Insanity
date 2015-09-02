///Rato atacando

sprite_index = spr_enemy_rat_atack;
if(instance_exists(Jogador)){
    if(Jogador.imortalidade == false){
        with(Jogador){
            script_execute(take_damage);
        
        }
    }
}