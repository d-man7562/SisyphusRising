class_name HurtBox
extends Area2D
@onready var player: Node2D = $".."
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"

#@onready var parallax_background: ParallaxBackground = $ParallaxBackground
#@onready var parallax_background = preload("res://scenes/scripts/parallax_background.gd")
@onready var parallax = get_tree().get_root().get_node("MAIN_LEVEL/ParallaxBackground")
signal collision_detected
func _ready() -> void:
	# Connect the signal properly
	area_entered.connect(_on_area_entered)
	#$player/HurtBox.collision_detected.connect(_on_collision)
# Change parameter type to Area2D
func _on_area_entered(area: Area2D) -> void:
	# Check if the area is a Hitbox
	if area is Hitbox:
		print("Players Hurtbox detect collision with hitbox")
		collision_detected.emit()
		animated_sprite_2d.stop()
		await get_tree().create_timer(0.5).timeout
		
		#if player.position.x < 360:
		#	
			
		#parallax_background.is_scrolling = false
func _on_collision() -> void:
	parallax.is_scrolling = false
