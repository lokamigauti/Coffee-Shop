extends Node2D


# Declare member variables here. Examples:
var PlayerView = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if PlayerView == 0 and get_viewport().get_mouse_position().y < get_viewport_rect().size.y/5:
		$Camera.position.y = $Camera.position.y - 4*get_viewport_rect().size.y/5
		PlayerView = 1
	elif PlayerView == 1 and get_viewport().get_mouse_position().y > 4*get_viewport_rect().size.y/5:
		$Camera.position.y = $Camera.position.y + 4*get_viewport_rect().size.y/5
		PlayerView = 0
	print(PlayerView)
	#$Camera.position = PlayerView
	pass
