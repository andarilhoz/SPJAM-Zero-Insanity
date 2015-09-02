///rat_jump_state
sprite_index = spr_enemy_rat_jump;
image_index = 0;

//Apply gravity

if(!place_meeting(x, y+1,Solo)){
    vspd += grav;
    if(place_meeting(x,y,Jogador)){
    vspd += grav*2;
    
    }
} else {
    if(image_xscale = 1){
        for(i =1;i<=20;i++){
            if(place_meeting(x+10,y,Jogador)){
                estado = rat_attack_state;
                break;
            }
        }
    }else{
        for(i =1;i<=20;i++){
            if(place_meeting(x+10,y,Jogador)){
                estado = rat_attack_state;
                break;
            }
        }
    }
    vspd = 0;
    //Use fricction
    apply_friction(acc);
    image_index = 1;
    //Check for idle state
    if(hspd = 0 && vspd == 0){
        estado = rat_idle_state;
        alarm[0] = 15;
        image_speed = 0;
        image_index = 0;
    }
}
if(hspd != 0) image_xscale= sign (hspd);

// Move

horizontal_move_bounce(Solo);