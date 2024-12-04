extends Sprite2D
var min_speed = 300
var max_speed = 700
var speed:float = 400.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += max_speed * delta
