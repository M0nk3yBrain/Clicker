extends Control


signal points
signal shop


var points_up: int = 1
@onready var point_up_btn = $"MarginContainer/HBoxContainer/Point Up"


# Called when the node enters the scene tree for the first time.
func _ready():
	point_up_btn.text = "Points + %s" % points_up


# List the buttons on game menu.
func _on_point_up_pressed():
	emit_signal("points")


func _on_shop_pressed():
	emit_signal("shop")
