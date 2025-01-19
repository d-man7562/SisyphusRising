extends Control
var menu_sound = preload("res://sounds/Reciting Homer Iliad Book 6 [ ezmp3.cc ].mp3")
@onready var start_game: Button = $MainMenuBar/Start_game
@onready var exit_startgame: Button = $MainMenuBar/Exit_startgame
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var controls: Button = $MainMenuBar/Controls
@onready var main_menu_bar: MenuBar = $MainMenuBar
@onready var controls_menu_bar: MenuBar = $ControlsMenuBar
@onready var back_button: Button = $ControlsMenuBar/BackButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	controls_menu_bar.visible = false
	
	start_game.pressed.connect(_on_start_button_pressed)
	
	exit_startgame.pressed.connect(_on_end_button_pressed)
	
	controls.pressed.connect(_on_controls_pressed)

	back_button.pressed.connect(_on_back_button_pressed)

	audio.stream = (menu_sound)
	
	audio.stream.loop = true

	audio.play()

func _process(delta: float) -> void:
	pass
	
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/MAIN_LEVEL.tscn")
	
func _on_end_button_pressed():
	get_tree().quit()

func _on_controls_pressed():
	main_menu_bar.visible = false
	controls_menu_bar.visible = true
	
func _on_back_button_pressed():
	main_menu_bar.visible = true
	controls_menu_bar.visible = false
	
