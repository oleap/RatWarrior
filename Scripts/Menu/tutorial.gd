extends Node

@onready var pauseMenu = $UserInterface/Pause

var paused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		Pause()

func Pause():
	if paused:
		pauseMenu.show()
		Engine.time_scale = 0
	else:
		pauseMenu.hide()
		Engine.time_scale = 1
	paused = !paused
