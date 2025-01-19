extends Node2D


@onready var main_menu_button: Button = $"Main Menu Button"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_menu_button.pressed.connect(_on_mainmenu_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_mainmenu_button_pressed():
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")
