///scr_idle_bee();


if(instance_exists(Jogador)){
    var dis = point_distance(x,y,Jogador.x,Jogador.y);
    
    if(dis < sight){
        speed = 0;
        estado = bee_chase;
        
    }else{    
        if(movimenta == true){
            switch(direcao){

                case 1:
                    move_towards_point(x-20,y+10,2);
                    break;
                case 2:
                    move_towards_point(x-10,y-5,2);
                    break;
                case 3:
                    move_towards_point(x+10,y-5,2);
                    break;
                case 4:
                    move_towards_point(x+20,y+10,2);
                    break;
                case 5:
                    move_towards_point(x+10,y-5,2);
                    break;
                case 6:
                    move_towards_point(x-10,y-5,2);
                    break;
            }
            if(direcao <= 6){
                direcao++;
                if(direcao == 7){
                    direcao = 1;
                }
            }        
            if(direcao == 2 || direcao == 5 ){
            alarm[0] = 6;        
            }else{
            alarm[0]= 3;
            }
            movimenta = false;
            move(Solo);
        }
    }
}