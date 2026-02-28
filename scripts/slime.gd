extends Node2D
const vel = 60
var dir = 1
@onready var ray_cast_r: RayCast2D = $RayCast_R
@onready var ray_cast_l: RayCast2D = $RayCast_L
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_r.is_colliding():
		dir = -1
		animated_sprite.flip_h = true
	if ray_cast_l.is_colliding():
		dir = 1
		animated_sprite.flip_h = false
	position.x += dir*vel*delta
