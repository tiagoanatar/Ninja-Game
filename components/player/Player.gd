extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D
@onready var _colision_shape = $CollisionShape2D

var animation_running = false
var direction: Vector2
var tween: Tween
var time = 0.25

func _process(delta):
	
	if Input.is_action_pressed("ui_right") and not animation_running:
		tween = create_tween()
		animation_running = true
		if _animated_sprite.flip_h:
			_animated_sprite.flip_h = false
		direction = Vector2(45, 0)
		var colide = move_and_collide(direction, true)
		if !colide:
			tween.tween_property(self, "position", direction, time).as_relative()
	
	if Input.is_action_pressed("ui_left") and not animation_running:
		tween = create_tween()
		animation_running = true
		_animated_sprite.flip_h = true
		direction = Vector2(-45, 0)
		var colide = move_and_collide(direction, true)
		if !colide:
			tween.tween_property(self, "position", direction, time).as_relative()
	
	if Input.is_action_pressed("ui_down") and not animation_running:
		tween = create_tween()
		animation_running = true
		direction = Vector2(0, 45)
		var colide = move_and_collide(direction, true)
		if !colide:
			tween.tween_property(self, "position", direction, time).as_relative()
	
	if Input.is_action_pressed("ui_up") and not animation_running:
		tween = create_tween()
		animation_running = true
		direction = Vector2(0,-45)
		var colide = move_and_collide(direction, true)
		if !colide:
			tween.tween_property(self, "position", direction, time).as_relative()
		
	if animation_running:
		_animated_sprite.play("walk")
		
	if tween is Tween and not tween.is_valid():
		_animated_sprite.stop()
		animation_running = false
