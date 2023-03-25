extends Node2D

func start_button():
	var intro = "res://intro.tscn"
	# get_tree().get_root().add_child(intro)
	get_tree().change_scene_to_file(intro)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.button_down.connect(start_button)
