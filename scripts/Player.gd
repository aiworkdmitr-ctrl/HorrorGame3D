extends KinematicBody

# Player controller script

var speed = 10
var jump_force = 20
var gravity = 9.8
var velocity = Vector3.ZERO

func _process(delta):
    var input_vector = Vector3.ZERO
    if Input.is_action_pressed('ui_right'): 
        input_vector.x += 1
    if Input.is_action_pressed('ui_left'): 
        input_vector.x -= 1
    if Input.is_action_pressed('ui_down'): 
        input_vector.z += 1
    if Input.is_action_pressed('ui_up'): 
        input_vector.z -= 1

    input_vector = input_vector.normalized() * speed
    velocity.x = input_vector.x
    velocity.z = input_vector.z

    if is_on_floor() and Input.is_action_just_pressed('ui_accept'):
        velocity.y = jump_force

    velocity.y -= gravity * delta
    velocity = move_and_slide(velocity, Vector3.UP)