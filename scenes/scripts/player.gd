extends Node2D
var speed: float = 1000
var player: Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("ready called")
	player = $Sprite2D
	if player:
		print("found sprite!")
	else:
		print("sprite not found")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta

	position.x = clampf(position.x, 0,720)
		
