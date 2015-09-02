/// move(collision_object)

//Pega o objeto que irÃ¡ colidir com o que realiza a funÃ§Ã£o.
var collision_object = argument0;

// ColisÃµes horizontais.
//Pega o X do personagem e compara com a velocidade do mesmo.
if(place_meeting(x+hspd,y,collision_object)){
    //Enquanto nÃ£o encontrar objeto a colidir, incrementa velocidade na horizontal.
    while (!place_meeting(x+sign(hspd), y ,collision_object)){
        x += sign(hspd); //Incrementando velocidade a posiÃ§Ã£o atual.
    }
    hspd = 0;   //ApÃ³s colidir, marca velocidade como zero.
}
x += hspd; //Se nÃ£o colidir, acrescenta velocidade.

// Vertical Collisions
//Pega Y, e compara se Y+velocidade estÃ¡ colidindo.
if(place_meeting(x,y+vspd,collision_object)){
    //Enquanto nÃ£o encontra colisÃ£o, acrescenta velocidade na vertical.
    while (!place_meeting(x, y+sign(vspd) ,collision_object)){
        //Acescenta velocidade na vertical.
        y += sign(vspd);
    }
    vspd = 0;// apÃ³s isto seta velocidade como zero.
}
y += vspd;