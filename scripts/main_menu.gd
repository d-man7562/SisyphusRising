extends Control
@export var game_start:bool = false
@onready var exit_startgame: Button = get_node("MenuBar2/Exit_startgame")
@onready var start_game: Button = get_node("MenuBar2/Start_game")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !game_start:
		exit_startgame.visible = false
		start_game.visible = true
	if start_game.pressed:
		game_start = true
		exit_startgame.visible = false
		start_game.visible = false
		pass
	if exit_startgame.pressed: get_tree().quit()
	
	
					
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
