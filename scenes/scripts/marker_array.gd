extends Node2D
@onready var marker_2d: Marker2D = $Marker2D
@onready var marker_2d_2: Marker2D = $Marker2D2
@onready var marker_2d_3: Marker2D = $Marker2D3
@onready var marker_2d_4: Marker2D = $Marker2D4
@onready var marker_2d_5: Marker2D = $Marker2D5
@onready var marker_2d_6: Marker2D = $Marker2D6

@onready var marker_array: Node2D = $"../MarkerArray"
@onready var timer: Timer = $"../Timer"
var new_obstacle = preload("res://graphics/RockThumb.png")
var array = [marker_2d,marker_2d_2,marker_2d_3,marker_2d_4,marker_2d_5,marker_2d_6]
func _ready() -> void:
	print(marker_2d_6.position)
	pass
	#timer.wait_time = 2.0  # 2 seconds
	#timer.autostart = true
	##timer.connect("timeout",_on_timer_timeout)
	#timer.start()
func _process(delta: float) -> void:
	new_obstacle = Sprite2D.new()
	var random_index = randi_range(0,5)
	match random_index:
		0: new_obstacle.position = marker_2d.position
		1: new_obstacle.position = marker_2d_2.position
		2: new_obstacle.position = marker_2d_3.position
		3: new_obstacle.position = marker_2d_4.position
		4: new_obstacle.position = marker_2d_5.position
		5: new_obstacle.position = marker_2d_6.position
	print(new_obstacle.position)
	new_obstacle.position.y += 400 * delta #move down
	new_obstacle.add_child(new_obstacle)
	#if new_obstacle.position.y > 100:
		#queue_free()
	#
	# rock obstacle timer
#func _on_timer_timeout() -> void:
