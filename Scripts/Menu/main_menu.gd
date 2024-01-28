extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Level.tscn")

func _on_tutorial_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu/Tutorial.tscn")

func _on_exit_pressed():
	get_tree().quit()
