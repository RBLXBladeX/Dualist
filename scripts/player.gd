extends CharacterBody2D

var distance_squared = 0
var id = 0
@onready var sprite: Sprite2D = $Sprite2D
@export var player:CharacterBody2D
const SPEED = 130.0 # velocity
const JUMP_VELOCITY = -300.0 # jumping speed

func _ready():
	add_to_group("Player")
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle light calculations.
	if TPBool.tp == false:
		for i in Torch_list.torch_list:
			
			#print(i[0])
			distance_squared = pow(player.position.x-i[0],2) + pow(-player.position.y-i[1],2)
			if distance_squared < 8000:
				id += 1
				print(id)
			print(distance_squared)
			await 1000
				
		if id < 1:
			print("TEsting")
			get_tree().reload_current_scene()
		id = 0
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	# Flipping sprite

		
	# Animation-playing
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	
