extends Node2D

var range_nodes = []
var range = 2

func distance_between_points(pos1: Vector2i, pos2: Vector2i):
	var dx = pos2.x - pos1.x
	var dy = pos2.y - pos1.y
	var distance = sqrt(dx * dx + dy * dy)
	return round(distance)

func _clear_range():
	for node in range_nodes:
		node.queue_free()
	range_nodes.clear()

func draw_range(cell):
	# Draw rectangles
	
	var rect = ReferenceRect.new()
	rect.position = Vector2(cell.x*45, cell.y*45)
	rect.border_color = Color(0, 0, 0, 1)
	rect.border_width = 4
	rect.size = Vector2(45, 45)
	rect.editor_only = false
	add_child(rect)
	range_nodes.append(rect)

func draw_range_around_player():

	# Clear previous range drawing
	#_clear_range()

	# Get the parent node's position
	var parent_position = get_parent().position
	var player_position_int = Vector2i(parent_position.x/45, parent_position.y/45)
	# Iterate through each cell in the used_cells list
	#print(_store.current_map_grid)
	for cell in _store.current_map_grid:
		# Check if the cell is within the range around the player
		if distance_between_points(cell, player_position_int) <= range:
			draw_range(cell)
			print(cell)
	pass

func _on_map_grid_ready():
	draw_range_around_player()

# Called when the node enters the scene tree for the first time.
func _ready():
	_signals.connect("map_grid", draw_range_around_player)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
