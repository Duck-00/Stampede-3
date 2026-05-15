extends CharacterBody2D

var horse = preload("res://src/stampede3/horse.tscn")

var dir: Vector2 = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0))
var rot: float = randf()

func _physics_process(delta: float) -> void:
	velocity = dir * GameData.speed * delta
	rotation += rot * delta * (GameData.speed / 20)
	await get_tree().create_timer(1.0).timeout
	var collision = move_and_collide(velocity)
	if collision:
		dir = dir.bounce(collision.get_normal()) 
		rot = randf_range(-1.0, 1.0)
		var new = horse.instantiate()
		self.add_child(new)
		new.reparent(get_parent())
		
