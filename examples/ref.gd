extends Node2D

const FIXED = 356

var life = 40
var test = "Hello There"
var arr = [1,2,3,4]
var dictionary = {
	'power': 12,
	'life': 120,
	'name': 'Gio'
}

func loop_test():
	# loop range
	for i in range(3):
		print(i)
	# loop array
	for i in arr:
		print(i)
	# loop while
	var i = 0
	while i < 10:
		print(i)
		i += 1
	# ifs
	if dictionary == 2:
		print("hello")
	elif dictionary == 2:
		print("hello 2")
	if not dictionary:
		print("AnimatedSprite node not found!")

# Called when the node enters the scene tree for the first time.
func _ready():
	# print(life)
	# loop_test()
	print(dictionary.size())
	
func _process(delta):
	var x = self.position.x
	var y = self.position.y
