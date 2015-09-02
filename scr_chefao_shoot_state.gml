///scr_chefao_shoot_state



if(instance_exists(Jogador)){  
    var dis = point_distance(x,y,Jogador.x,Jogador.y-20);
    var dir = point_direction(x,y, Jogador.x,Jogador.y);
    if(dis < 300 && cooldown == false){       
        
        hspd = lengthdir_x(spd,dir);
        
        if(hspd != 0){
            image_speed = 0.2;
            image_xscale = sign(hspd);
        }
        sprite_index = spr_chefao_pistol;
        image_speed = 0;
        if(sprite_index == spr_chefao_pistol){
            if(image_xscale = 1){
                var tiro = instance_create(x+55,y+20,TiroChefe);
                with(tiro){
                    move_towards_point(Jogador.x,Jogador.y-20,5);
                    image_angle=direction;
                }
            }else{
                var tiro = instance_create(x-55,y+20,TiroChefe);
                with(tiro){
                    move_towards_point(Jogador.x,Jogador.y-20,5);
                    image_angle=direction;
                }
            }
            alarm[1] = 10;
            cooldown = true;
        }
    }
    else if (dis > 300  && cooldown == false){
    
    sprite_index = spr_chefao_walking;
    image_speed = 0;
    hspd = lengthdir_x(spd,dir);
    
    
    if(hspd != 0){
        image_speed = 0.2;
        image_xscale = sign(hspd);
    }
    move(Solo);    
    }
    
}
