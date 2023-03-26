extends AnimatableBody2D
var player_test = preload("res://components/player/Player.tscn")

func _process(delta):
	
	# Tween transition
	var tween = create_tween()
	var direction = Vector2(45, 0)
	var time = 1
	tween.tween_property(player_test, "position", direction, time).as_relative().set_trans(Tween.TRANS_ELASTIC) 
