class_name HurtBox
extends Area2D

#signal touch_boulder()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_area_entered(hitbox:Hitbox) -> void:
		if hitbox!=null:
			print("contact!")
