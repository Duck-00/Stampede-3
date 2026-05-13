extends CharacterBody2D


func _ready() -> void:
	pass
func _process(delta: float) -> void:
	pass
	

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * GameData.speed

func _physics_process(delta):
	get_input()
	move_and_slide()
