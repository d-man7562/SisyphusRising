extends ParallaxBackground
@export var scroll_speed =500
@onready var hitbox: Hitbox = $Hitbox
var is_scrolling: bool = true

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if is_scrolling == true:
		scroll_offset.y += scroll_speed * delta
