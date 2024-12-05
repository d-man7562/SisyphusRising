extends ParallaxBackground
@export var scroll_speed =500
@onready var hitbox: Hitbox = $Hitbox
var is_scrolling: bool = true
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	var hurtbox = get_node("player/Hurtbox")
	#is_scrolling = true
	 hurtbox.collision_detected.connect(_on_collision)
	#var hitbox = get_node("res://scenes/scripts/Hitbox.gd")
	#hitbox.collision_detected.connect(_on_collision)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#while $Hitbox.death ==false:
	if is_scrolling == true:
		scroll_offset.y += scroll_speed * delta
	else: scroll_offset.y = 0
