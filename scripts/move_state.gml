/// move_state()
if(instance_exists(GUI_Jogador)){
    var jet = global.jetpack;
}
if(!place_meeting(x, y+1, Solo)){
    vspd += grav;
    
    //Player is in the air
    sprite_index = spr_jogador_pulo;
    image_speed = 0;
    image_index = (vspd > 0);
    if(instance_exists(GUI_Jogador)){
        if(jet >= 2 && just_up){
            
            if(didRelease){
                vspd-= 1.8;        
                global.jetpack-= 2; 
                jetusando = true;
                repeat(irandom_range(3,5)){
                    // Create within an area
                    
                    var rand_x = irandom_range(-2,2);
                    var rand_y = irandom_range(-2,2);
                    
                    instance_create(x+rand_x -5,y+rand_y + 10,Particles);
                }                
            }
        }
    }
    //Control the jump height
    if(up_release ){
        didRelease = true;
        if(vspd < -6){
            vspd = -6;
        }
    }
} else {
    vspd = 0;
    didRelease = false;
    
    //Jumping code
    if(up){
       vspd = -16;
       //audio_play_sound(snd_jump,5, false);
    }
    
    //Player is on the ground
    if(hspd == 0 ){
        sprite_index = spr_jogador_idle;
    } else {
        if(armaatual ='faca'){
            sprite_index = spr_jogador_adaga;
            image_speed = .3;
        }else{
            sprite_index = spr_jogador_walk;
            image_speed = .3;
        }
    }
}


if (right || left){
    hspd += (right-left) * acc;
    hspd_dir = right - left;
    
    if(hspd > spd) hspd = spd;
    if(hspd < -spd) hspd = -spd;
    
}else{
    apply_friction(acc);
}

if(hspd != 0){
    image_xscale = sign(hspd);
}
//Play the landing sound

if(place_meeting(x,y+vspd+1, Solo) && vspd > 0 ){
  //  audio_emitter_pitch(audio_em,random_range(.8,1.2));
   // audio_emitter_gain(audio_em, .2);
   // audio_play_sound_on(audio_em, snd_step, false, 6);
}

if(troca){
    //troca arma atual
    if(armaatual == 'pistola'){
        armaatual = 'faca';
        image_index = spr_jogador_adaga;
    }else{
        armaatual = 'pistola';
        image_index = spr_jogador_walk;
    }

}

if(armaatual == 'pistola'){
    if(atira && podeatira == true){
        if(image_xscale = 1){
            var tiro = instance_create(x+40,y-20,Tiro);
            with(tiro){
                move_towards_point(x*1,y,5);
            }
        }else{
            var tiro = instance_create(x-45,y-20,Tiro);
                with(tiro){
                move_towards_point(x*-1,y,5);
            }
        
        
        }
        podeatira = false;
        alarm[2] = 8;    
    }
}
if(armaatual == 'faca'){
    if(atira && podeatira == true ){
        image_index = spr_ataca_adaga;
        var adaga = instance_create(x+(40*image_xscale),y-20,Adaga);
        var pos = image_xscale;
        with(adaga){
            image_xscale = pos;
        }
        podeatira = false;
        alarm[2] = 20;
    }
}

move(Solo);