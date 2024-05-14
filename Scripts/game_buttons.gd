extends Control


signal points
signal shop


@onready var points_up = get_parent().click_power
@onready var point_up_btn = $"MarginContainer/HBoxContainer/Point Up"


# Called when the node enters the scene tree for the first time.
func _ready():
	point_up_btn.text = "Points + %s" % points_up


# List the buttons on game menu.
func _on_point_up_pressed(): #Connected to Game: _on_game_buttons_points()
	emit_signal("points")


func _on_shop_pressed():
	emit_signal("shop")


func update_click_button():
	points_up = get_parent().click_power
	point_up_btn.text = "Points + %s" % points_up
