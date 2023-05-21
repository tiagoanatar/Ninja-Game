extends Node2D

var range_nodes = []

func _clear_range():
	for node in range_nodes:
		node.queue_free()
	range_nodes.clear()

func draw_range(cell):
	# Draw rectangles
	var rect = ReferenceRect.new()
	rect.position = cell
	rect.color = Color(0, 0, 0, 1)
	rect.border_width = 4
	rect.size = Vector2(45, 45)
	rect.editor_only = false
	add_child(rect)
	range_nodes.append(rect)

func draw_range_around_player():
	var range = 4

	# Clear previous range drawing
	#_clear_range()

	# Get the parent node's position
	var parent_position = get_parent().position
	var player_position_int = Vector2i(parent_position.x/45, parent_position.y/45)
	# Iterate through each cell in the used_cells list
	print(_store.current_map_grid)
	for cell in _store.current_map_grid:
		print(cell.distance_to(player_position_int))
		# Check if the cell is within the range around the player
		if cell.distance_to(player_position_int) <= range:
			# Draw the range around the cell
			draw_range(cell)

# Called when the node enters the scene tree for the first time.
func _ready():
	var emitter = get_node("res://components/cenario/mansion-01/Mansion-01/TileMap2")
	emitter.custom_signal.connect(draw_range_around_player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
