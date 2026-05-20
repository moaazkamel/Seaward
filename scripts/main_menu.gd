extends Node2D








func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/level_1.tscn')

func _on_texture_button_2_pressed() -> void:
	get_tree().quit()
