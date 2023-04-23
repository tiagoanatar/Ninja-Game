extends Node

var tile_size = 45
var current_map_grid = []

# ENEMIES 
###
var enemy_base = {
  # enemy types
  type = {
	sword_a = {
		# default stats
		life = 4,
		life_ref = 4,
		atk_power = 3,
		range = 5
	},
  }, 
  
  # comportment module
  comp_random = ["stop", "move", "sleep"],

  comp_types = {
	stop = 'stop', 
	move = 'move',
	sleep = 'sleep', 
	dead = 'dead', 
	alert_desconf = 'alert_desconf', 
	alert_player = 'alert_player', 
	alert_body = 'alert_body', 
	alert_item = 'alert_item', 
	alert_total = 'alert_total', 
	confuse = 'confuse' 
  },
}

# controller
var enemies_list = []

#PLAYER 
###
var player_base = {
  # player types
  type = {
	ninja_a = {
		# default stats
		life = 4,
		life_ref = 4,
		atk_power = 3,
		range = 5
	},
  }, 
}

# controller
var players_list = []
