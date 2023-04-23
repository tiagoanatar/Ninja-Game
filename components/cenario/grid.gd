class_name Grid
extends Node2D

@export var cell_size = 45

var grid = {}

func generate_grid():
	for y in _store.current_map_grid:
		grid[y] = y
		
		# draw rectangules
		var rect = ReferenceRect.new()
		rect.position = Vector2(grid[y]*_store.tile_size)
		rect.size = Vector2(_store.tile_size, _store.tile_size)
		rect.editor_only = false
		add_child(rect)
		
		#draw label
		var label = Label.new()
		label.position = Vector2(grid[y]*_store.tile_size)
		label.text = str(Vector2(grid[y]))
		label.label_settings = LabelSettings.new()
		label.label_settings.font_size = 12
		add_child(label)

