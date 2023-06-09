extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D

var animation_running = false
var direction: Vector2
var tween: Tween
var time = 0.30

func _process(delta):
	if _state.currentTurnState == _state.TurnState.PLAYER_MOVE:
		if Input.is_action_pressed("ui_right") && !animation_running:
			animation_running = true
			direction = Vector2(45, 0)
			_animated_sprite.play("walk")
			if _animated_sprite.flip_h:
				_animated_sprite.flip_h = false
			var colide = move_and_collide(direction, true)
			if !colide:
				tween = create_tween()
				tween.tween_property(self, "position", direction, time).as_relative()
		
		if Input.is_action_pressed("ui_left") && !animation_running:
			animation_running = true
			_animated_sprite.flip_h = true
			direction = Vector2(-45, 0)
			_animated_sprite.play("walk")
			var colide = move_and_collide(direction, true)
			if !colide:
				tween = create_tween()
				tween.tween_property(self, "position", direction, time).as_relative()
		
		if Input.is_action_pressed("ui_down") && !animation_running:
			animation_running = true
			direction = Vector2(0, 45)
			_animated_sprite.play("walk")
			var colide = move_and_collide(direction, true)
			if !colide:
				tween = create_tween()
				tween.tween_property(self, "position", direction, time).as_relative()
		
		if Input.is_action_pressed("ui_up") && !animation_running:
			animation_running = true
			direction = Vector2(0,-45)
			_animated_sprite.play("walk")
			var colide = move_and_collide(direction, true)
			if !colide:
				tween = create_tween()
				tween.tween_property(self, "position", direction, time).as_relative()
			
		if tween is Tween && !tween.is_valid():
			_animated_sprite.pause()
			animation_running = false
