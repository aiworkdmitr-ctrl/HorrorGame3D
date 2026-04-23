extends Spatial

# Constants
const PLAYER_SPEED = 5
const GRAVITY = -9.8

# Variables
var player
var velocity = Vector3()

func _ready():
    player = $Player

func _process(delta):
    movement_input(delta)
    apply_gravity(delta)
    player.move_and_slide(velocity, Vector3.UP)

func movement_input(delta):
    var direction = Vector3()
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    if Input.is_action_pressed("ui_down"):
        direction.z += 1
    if Input.is_action_pressed("ui_up"):
        direction.z -= 1

    direction = direction.normalized() * PLAYER_SPEED
    velocity.x = direction.x
    velocity.z = direction.z

func apply_gravity(delta):
    velocity.y += GRAVITY * delta
    if player.is_on_floor():
        velocity.y = 0
