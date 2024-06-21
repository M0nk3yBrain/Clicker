extends Node2D

@onready var label = $Label


var entered: bool
var speed = .3
var power = 10
@export var side_movement = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "%s" % power


func _process(delta):
	_click()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += Vector2(side_movement, speed)


func _bounce(area):
	if is_in_group("Walls"):
		side_movement *= -1


func _on_area_entered(area):
	if area.is_in_group("Walls"):
		side_movement *= -1


func _on_mouse_entered():
	entered = true


func _on_mouse_exited():
	entered = false


func _click():
	if Input.is_action_just_pressed("click"):# and entered == true:
		print("Click")
		queue_free()
