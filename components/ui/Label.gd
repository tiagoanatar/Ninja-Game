extends Label

var string = "TURN: {s}"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = string.format({"s": _state.currentTurnState})
