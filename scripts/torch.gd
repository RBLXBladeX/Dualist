extends Area2D

@onready var torch: Area2D = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Torch")
	Torch_list.torch_list.append([torch.position.x,-torch.position.y])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
