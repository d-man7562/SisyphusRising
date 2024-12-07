extends Node2D
@onready var player: Node2D = $"../Player/HurtBox"

const BOULDER = preload("res://scenes/boulder.tscn")
@export var spawn_interval: float = 2.0
@export var min_x: float = -450
@export var max_x: float = 500.0
@export var spawn_height: float = -50.0
@export var random_interval_variation: float = 0.5  # Adds randomness to timing
var time_since_spawn: float = 0.0
var next_spawn_time: float = 0.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assert(BOULDER != null, "boulder not detected!")
	randomize()  # Initialize random number generator
	var next_spawn_time = spawn_interval + randf_range(-random_interval_variation, random_interval_variation)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !player.DEATH:
		time_since_spawn += delta
		if time_since_spawn >= next_spawn_time:
			spawn_boulder()
			time_since_spawn = 0.0
		# Set next spawn time with random variation
			next_spawn_time = spawn_interval + randf_range(-random_interval_variation, random_interval_variation)
func spawn_boulder() -> void:
	var boulder = BOULDER.instantiate()
	var spawn_x = randf_range(min_x,max_x)
	boulder.position = Vector2(spawn_x, spawn_height)
	add_child(boulder)
