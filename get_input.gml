///get_input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check_pressed(vk_space);
up_release = keyboard_check_released(vk_space);
down = keyboard_check(vk_down);
just_up = keyboard_check(vk_space);
atira = keyboard_check(ord('Z'));
enter = keyboard_check(vk_backspace);
esc = keyboard_check(vk_escape);
troca = keyboard_check_pressed(ord('X'));


//Override the controls for a gamepad

var gp_id= 0;
var thresh = .5;

if(gamepad_is_connected(gp_id)){
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(gp_id,gp_face1 );
    up_release = gamepad_button_check_released(gp_id,gp_face1 );
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    just_up = gamepad_button_check(gp_id,gp_face1);
    enter = gamepad_button_check(gp_id,gp_start);
    esc = gamepad_button_check(gp_id,gp_select);
    atira = gamepad_button_check(gp_id,gp_shoulderrb);
    troca = gamepad_button_check_pressed(gp_id,gp_shoulderlb);

}



if(esc){
    game_end();
}

if(enter){
    game_restart();
}