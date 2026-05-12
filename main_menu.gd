extends MarginContainer


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://play_game.tscn")


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/main_menu/Shop.tscn")


func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/main_menu/Credits.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
