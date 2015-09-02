//snake_move_left_state
var wall_at_left = place_meeting(x-3,y, Solo);

var ledge_at_left = !position_meeting(bbox_left-1,bbox_bottom+1, Solo);

if(wall_at_left|| ledge_at_left){
    estado = snake_move_right_state;
}

//Control the snake sprite

image_xscale = -1;


//Move the snake

x-= 3;