//snake_move_right_state
var wall_at_right = place_meeting(x+3,y, Solo);

var ledge_at_right = !position_meeting(bbox_right+1,bbox_bottom+1, Solo);
if(!place_meeting(x, y+1, Solo)){
    y += 1;
}
    
if(wall_at_right || ledge_at_right){
    estado = snake_move_left_state;
}

//Control the snake sprite

image_xscale = 1;


//Move the snake

x+= 3;