/// move(collision_object)

//Pega o objeto que irá colidir com o que realiza a função.
var collision_object = argument0;

// Colisões horizontais.
//Pega o X do personagem e compara com a velocidade do mesmo.
if(place_meeting(x+hspd,y,collision_object)){
    //Enquanto não encontrar objeto a colidir, incrementa velocidade na horizontal.
    while (!place_meeting(x+sign(hspd), y ,collision_object)){
        x += sign(hspd); //Incrementando velocidade a posição atual.
    }
    hspd = 0;   //Após colidir, marca velocidade como zero.
}
x += hspd; //Se não colidir, acrescenta velocidade.

// Vertical Collisions
//Pega Y, e compara se Y+velocidade está colidindo.
if(place_meeting(x,y+vspd,collision_object)){
    //Enquanto não encontra colisão, acrescenta velocidade na vertical.
    while (!place_meeting(x, y+sign(vspd) ,collision_object)){
        //Acescenta velocidade na vertical.
        y += sign(vspd);
    }
    vspd = 0;// após isto seta velocidade como zero.
}
y += vspd;