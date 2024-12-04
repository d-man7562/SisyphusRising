class_name Hitbox
extends Area2D
@onready var parallax_background: ParallaxBackground = $ParallaxBackground

func _ready() -> void:
	# Connect the signal properly
	area_entered.connect(_on_area_entered)

# Change parameter type to Area2D
func _on_area_entered(area: Area2D) -> void:
	# Check if the area is a HurtBox
	if area is HurtBox:
		print("Contact from hitbox!")
		death_loop()


func death_loop() -> void:
	parallax_background.scroll_offset.y = 0
	#print(parallax_background.scroll_offset.y)
