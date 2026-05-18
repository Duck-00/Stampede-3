extends Node2D

func _input(event):
	if event.is_action_pressed("Back_esc"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
