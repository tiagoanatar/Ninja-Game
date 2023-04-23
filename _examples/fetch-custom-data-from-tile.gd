extends TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	var used_cells = self.get_used_cells(0)

	for cell in used_cells:
		# Convert the position from world space to map space
		var map_pos = self.local_to_map(self.map_to_local(cell))
		var data = self.get_cell_tile_data(0, map_pos)
		if !data.get_custom_data("blocked"):
			pass
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
