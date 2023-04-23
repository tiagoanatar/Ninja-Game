extends TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	var used_cells = self.get_used_cells(0)
	_store.current_map_grid = used_cells

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
