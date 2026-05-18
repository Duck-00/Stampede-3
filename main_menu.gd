extends MarginContainer


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://play_game.tscn")


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/main_menu (2)/Shop.tscn")


func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/main_menu (2)/Credits.tscn")


"res://howt_play.tscn"
func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_how_play_pressed() -> void:
	get_tree().change_scene_to_file("res://howt_play.tscn")
