extends Area2D
@onready var timer: Timer = $Timer
@onready var currentscene: Node2D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() # Replace with function body.




func _on_body_entered(body: Node2D) -> void:
	print("You died!")

	body.get_node("CollisionShape2D").queue_free()
	timer.start()
