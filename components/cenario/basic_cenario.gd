extends Node2D

@onready var grid = $GridComponent

# Called when the node enters the scene tree for the first time.
func _ready():
	grid.generate_grid()
