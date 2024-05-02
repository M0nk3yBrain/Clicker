extends Node2D


signal spawn


@onready var timer = $Timer


var shape1 = preload("res://Scenes/shapes/triangle.tscn")
var shape2 = preload("res://Scenes/shapes/square.tscn")
var shape3 = preload("res://Scenes/shapes/octogon.tscn")

var _shapelist = [shape1, shape2, shape3]

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawn_shape()
	emit_signal("spawn")

func spawn_shape():
	var random_shape = _shapelist[randi() % _shapelist.size()]
	#random_shape.color = random_shape.color_choice()
	var shape_instance = random_shape.instantiate()
	var spawn_position = Vector2(randi_range(25, 512), -20)
	shape_instance.position = spawn_position
	add_child(shape_instance)
