extends KinematicBody

# Enemy AI script
var speed = 5
var target = null

func _ready():
    # Initialize enemy settings
    pass

func _process(delta):
    if target:
        move_toward_target(delta)

func move_toward_target(delta):
    var direction = (target.position - position).normalized()
    move_and_slide(direction * speed)