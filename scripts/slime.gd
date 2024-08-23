extends Node2D

#create a const for speed so we can always adjust easily at top rather than in code
const SPEED = 60

# create  variable to control the direction the slime moves in
var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

# Using process

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_cast_right.is_colliding():
			direction = -1
			animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
			direction = 1
			animated_sprite.flip_h = false
			
	position.x += direction * SPEED * delta
