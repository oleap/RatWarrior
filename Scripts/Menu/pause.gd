extends Node

@onready var root = $"../../"

func _on_resume_pressed():
	root.Pause()

func _on_quit_to_main_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu/main_menu.tscn")
