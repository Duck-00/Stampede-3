extends Node2D

var horse := preload("res://src/stampede3/horse.tscn")
var thing: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	thing = GameData.horses


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in thing:
		var new = horse.instantiate()
		new.position = Vector2(400, 200)
		self.add_child(new)
		thing -= 1
		await get_tree().create_timer(10000000).timeout


func _input(event):
	if event.is_action_pressed("Back_esc"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
		
