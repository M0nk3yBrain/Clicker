extends Node2D


signal spawn


@onready var timer = $Timer


var shape1 = preload("res://Scenes/shapes/triangle.tscn")
var shape2 = preload("res://Scenes/shapes/square.tscn")
var shape3 = preload("res://Scenes/shapes/octogon.tscn")
var aqua = Color(0, 1, 1, 1) # Aqua
var green = Color(0, 1, 0, 1) # Green
var red = Color(1, 0, 0, 1) # Red
var base_speed = 0
var spawn_count = 0


var _shapelist = [shape1, shape2, shape3]
var _colors = [
	aqua,
	green,
	red
]


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()
	randomize()


func _on_timer_timeout():
	spawn_shape()
	emit_signal("spawn")
	spawn_logic()


func spawn_shape():
	var random_shape = _shapelist[randi() % _shapelist.size()] #Choose a random shape
	var shape_instance = random_shape.instantiate() # Instantiate shape
	var random_color = _colors[randi() % _colors.size()] # Choose random color.
	var spawn_position = Vector2(randi_range(25, 512), -20) # Set spawn position for shape
	var set_speed = speed_picker(random_color)
	
	shape_instance.modulate = random_color # Applies the random color.
	shape_instance.position = spawn_position # Sets spawn location to instance.
	add_child(shape_instance)


func speed_picker(color):
	if color == aqua:
		var speed = base_speed + .1
		return speed
	if color == green:
		var speed = base_speed + .3
		return speed
	if color == red:
		var speed = base_speed + .5
		return speed


func spawn_logic():
	spawn_count += 1
	if spawn_count % 10:
		pass
