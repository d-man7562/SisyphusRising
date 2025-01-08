extends Control
@onready var start_game: Button = $MenuBar2/Start_game
@onready var exit_startgame: Button = $MenuBar2/Exit_startgame
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var retry: Button = $MenuBar/retry
@onready var mainmenu: Button = $MenuBar/mainmenu
@onready var quit: Button = $MenuBar/quit
@onready var end_sound = preload("res://sounds/Sisyphus meme sound [ ezmp3.cc ].mp3")




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	retry.pressed.connect(_on_retry_button_pressed)
	quit.pressed.connect(_on_exit_button_pressed)
	mainmenu.pressed.connect(_on_mainmenu_button_pressed)
	audio.stream = end_sound
	audio.stream.loop = true
	audio.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mainmenu_button_pressed():
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")
func _on_exit_button_pressed():
	get_tree().quit()
func _on_retry_button_pressed():
	get_tree().change_scene_to_file("res://scenes/MAIN_LEVEl.tscn")
