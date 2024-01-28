extends Area2D

# Define the next scene to load in the inspector
@export var next_scene : PackedScene

# Load next level scene when player collide with level finish door.
func _on_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().call_group("Player", "fake_death_tween") # death_tween is called here just to give the feeling of player entering the door.
		victory_sound()
		SceneTransition.load_scene(next_scene)

func victory_sound():
	var rng = RandomNumberGenerator.new()
	var random_number = rng.randi_range(0, 2)
	match random_number:
		0:
			AudioManager.success1.play()
		1:
			AudioManager.success2.play()
		2:
			AudioManager.success2.play()
