extends Node2D

# global functions
var enemy_spawn = preload("res://globals/enemy_spawn.gd")

# components
var player = preload("res://components/player/Player.tscn")

func _ready():
	var enemy_spawn_instance = enemy_spawn.new()
	add_child(enemy_spawn_instance)
	enemy_spawn_instance.exec(6, player)
