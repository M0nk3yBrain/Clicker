extends Control


# All on ready variables.
@onready var point_count = get_parent().points
@onready var point_label = $MarginContainer/HBoxContainer/point_label


# Called when the node enters the scene tree for the first time.
func _ready():
	point_label.text = "Points:  %s" % point_count


# Each time button pressed to increase points updates point value in display.
func _on_game_buttons_points():
	point_count = get_parent().points
	point_label.text = "Points:  %s" % point_count
