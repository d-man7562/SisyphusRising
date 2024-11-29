class_name Hitbox
extends Area2D

func _ready():
	connect("area entered",_on_area_entered)
func _on_area_entered(hitbox:Hitbox) -> void:
	if hitbox!=null:
		print("Contact!")
