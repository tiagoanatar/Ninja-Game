extends Node

enum TurnState {
	NONE,
	PLAYER_MOVE,
	PLAYER_ATTACK,
	PLAYER_ITEM,
	ENEMY_MOVE,
	ENEMY_ATTACK,
	ENEMY_ITEM,
	ENEMIES_CREATION,
	STAGE_COMPLETE,
	GAME_OVER,
	SAVE_GAME,
	PAUSE_GAME,
	MAIN_MENU
}

var currentTurnState = TurnState.NONE

func startPlayerTurn():
	currentTurnState = TurnState.PLAYER_MOVE
	# Add your logic for player turn start here

func endPlayerTurn():
	currentTurnState = TurnState.NONE
	# Add your logic for player turn end here

func startEnemyTurn():
	currentTurnState = TurnState.ENEMY_MOVE
	# Add your logic for enemy turn start here

func endEnemyTurn():
	currentTurnState = TurnState.NONE
	# Add your logic for enemy turn end here

func processTurn():
	match currentTurnState:
		TurnState.PLAYER_MOVE:
			# Add your logic for player move turn here
			pass
		TurnState.PLAYER_ATTACK:
			# Add your logic for player attack turn here
			pass
		TurnState.PLAYER_ITEM:
			# Add your logic for player item usage turn here
			pass
		TurnState.ENEMY_MOVE:
			# Add your logic for enemy move turn here
			pass
		TurnState.ENEMY_ATTACK:
			# Add your logic for enemy attack turn here
			pass
		TurnState.ENEMY_ITEM:
			# Add your logic for enemy item usage turn here
			pass
		TurnState.ENEMIES_CREATION:
			# Add your logic for enemies creation turn here
			pass
		TurnState.STAGE_COMPLETE:
			# Add your logic for stage complete turn here
			pass
		TurnState.GAME_OVER:
			# Add your logic for game over turn here
			pass
		TurnState.SAVE_GAME:
			# Add your logic for save game turn here
			pass
		TurnState.PAUSE_GAME:
			# Add your logic for pause game turn here
			pass
		TurnState.MAIN_MENU:
			# Add your logic for main menu turn here
			pass
		_:
			pass

func _ready():
	# Initialize turn controller at start of game
	startPlayerTurn()
