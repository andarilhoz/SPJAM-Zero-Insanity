///apply_friction(amount)

var ammount = argument[0];

if(hspd != 0){
    if(abs(hspd)-ammount > 0){
        hspd -= ammount*image_xscale;
    } else {
        hspd = 0;
    }

}