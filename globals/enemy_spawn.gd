extends Node2D

func exec(range: int, element: PackedScene):
	for i in range(range):
		var new_element = element.instantiate()
		new_element.global_position = Vector2(randf_range(200,400), randf_range(200,500))
		add_child(new_element)
