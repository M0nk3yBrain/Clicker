extends Node2D


signal spawn


@onready var timer = $Timer


var shape1 = preload("res://Scenes/shapes/triangle.tscn")
var shape2 = preload("res://Scenes/shapes/square.tscn")
var shape3 = preload("res://Scenes/shapes/octogon.tscn")

var _shapelist = [shape1, shape2, shape3]
var _colors = [
	Color(0, 1, 1, 1), # Aqua
	Color(0, 1, 0, 1), # Green
	Color(1, 0, 0, 1) # Red
]

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawn_shape()
	emit_signal("spawn")

func spawn_shape():
	var random_shape = _shapelist[randi() % _shapelist.size()] #Choose a random shape
	var shape_instance = random_shape.instantiate() # Instantiate shape
	var random_color = _colors[randi() % _colors.size()] # Choose random color.
	var spawn_position = Vector2(randi_range(25, 512), -20) # Set spawn position for shape
	shape_instance.modulate = random_color # Applies the random color.
	shape_instance.position = spawn_position # Sets spawn location to instance.
	add_child(shape_instance)
