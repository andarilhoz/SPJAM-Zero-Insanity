if(instance_exists(Jogador)){
    var dir = point_direction(x,y, Jogador.x,Jogador.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd,dir);
    
    // Change to the flying sprite
    
    //sprite_index = spr_bat_fly;
    
    //face the right direction
    
    if(hspd != 0) image_xscale = sign(hspd);
    
    //Move
    move(Solo);    
    
}