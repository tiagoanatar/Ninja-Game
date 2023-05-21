class_name Grid
extends Node2D

@export var width = 10
@export var height = 10
@export var cell_size = 45

var grid: Dictionary = {}

func cell_factory(x, y):
	return {"x": x * cell_size, "y": y * cell_size, "type": "OPEN", "blocked": false }

func generate_grid():
	for y in width:
		grid[y] = {}
		for x in height:
			grid[y][x] = cell_factory(x, y)
			
			# draw rectangules
			var rect = ReferenceRect.new()
			rect.position = Vector2(grid[y][x].x, grid[y][x].y)
			rect.size = Vector2(cell_size, cell_size)
			rect.editor_only = false
			add_child(rect)
			
			#draw label
			var label = Label.new()
			label.position = Vector2(grid[y][x].x, grid[y][x].y)
			label.text = grid[y][x].type + str(Vector2(grid[y][x].x, grid[y][x].y))
			label.label_settings = LabelSettings.new()
			label.label_settings.font_size = 10
			add_child(label)

