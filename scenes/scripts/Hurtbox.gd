class_name HurtBox
extends Area2D

func _ready() -> void:
	# Connect the signal properly
	area_entered.connect(_on_area_entered)

# Change parameter type to Area2D
func _on_area_entered(area: Area2D) -> void:
	# Check if the area is a Hitbox
	if area is Hitbox:
		print("contact from hurtbox!")
