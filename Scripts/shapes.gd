extends Node2D

@onready var label = $Label


var speed = randf_range(.1, .5)
var power = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "%s" % power


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(0, speed)
