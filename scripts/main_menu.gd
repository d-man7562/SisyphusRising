extends Control
@onready var start_game: Button = $MenuBar2/Start_game
@onready var exit_startgame: Button = $MenuBar2/Exit_startgame
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_game.pressed.connect(_on_start_button_pressed)
	exit_startgame.pressed.connect(_on_end_button_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/MAIN_LEVEL.tscn")
func _on_end_button_pressed():
	get_tree().quit()
