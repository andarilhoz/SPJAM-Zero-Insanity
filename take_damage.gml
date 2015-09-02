///take_damage
if(estado!= hurt_state){
   /* audio_emitter_pitch(audio_em, 1.6);
    audio_emitter_gain(audio_em, 1.4);
    audio_play_sound_on(audio_em, snd_ouch, false, 8);
*/


    image_blend = make_colour_rgb(220,150,150);
    vspd = -12;
    hspd = (sign(x-other.x)*10);
    estado = hurt_state;
    move(Solo);
    
    if(instance_exists(GUI_Jogador)){
        if(GUI_Jogador.vida > 0){
            GUI_Jogador.vida -= 1;
        }else{
            with(Jogador){
                instance_destroy();
                room_goto(rm_gameover);
            }
            with(GUI_Jogador){
                instance_destroy();
            }
        }
    }
}
