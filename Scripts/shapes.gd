extends Node2D

@onready var label = $Label


@export var speed = randf_range(.1, .5)
@export var power = 10
@export var side_movement = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "%s" % power
	shape()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position += Vector2(side_movement, speed)


func _bounce(area):
	if is_in_group("Walls"):
		side_movement *= -1


func shape():
	pass
	
