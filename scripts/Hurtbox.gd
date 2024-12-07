class_name HurtBox
extends Area2D
@onready var player: Node2D = $".."
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"
@onready var boulder_spawner: Node2D = $"../../BoulderSpawner"
@onready var parallax_bg: ParallaxBackground = $"../../ParallaxBackground"
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
var DIE_SOUND  = preload("res://sounds/MARIO GAME OVER EDIT REVERB.mp3")
var DEATH: bool = false
var on:bool = true
var target_x
const death_sound = preload("res://sounds/MARIO GAME OVER EDIT REVERB.mp3")
const play_song = preload("res://sounds/MUSICORUM ET TIBIA BASS BOOST.mp3")
@onready var parallax = get_tree().get_root().get_node("MAIN_LEVEL/ParallaxBackground")
signal collision_detected
var is_left: bool
func _ready() -> void:
	audio.stream = play_song
	audio.stream.loop = true
	var audio_length = audio.stream.get_length()
	var song_random_start = randf_range(0, audio_length)
	audio.play(song_random_start)
	
	area_entered.connect(_on_area_entered)
func _on_area_entered(area: Area2D) -> void:
	if area is Hitbox:
		print("Players Hurtbox detect collision with hitbox")
		collision_detected.emit()
		animated_sprite_2d.stop()
		player.can_move = false
		parallax_bg.scroll_speed = 0
		audio.stop()
		boulder_spawner.queue_free()
		audio.stream = death_sound
		await get_tree().create_timer(0.1).timeout
		audio.play()
		await get_tree().create_timer(0.5).timeout
		DEATH = true
		target_x  = check_pos(player.position.x)
		print(player.position.y)
var check = true
var far_right = 710
var far_left = 10
func _process(delta: float) -> void:
	var up_force = 400
	var grav = 440
	var up_limit = 200
	if DEATH:
		var new_x = lerpf(player.position.x,target_x, 2*delta )
		var new_y = lerpf(player.position.y, 1200, 2*delta)
		player.position = Vector2(new_x,new_y)
func check_pos(pos : int):
	if pos < 360:
		return far_right
	else: return far_left
func _on_collision() -> void:
	parallax.is_scrolling = false
