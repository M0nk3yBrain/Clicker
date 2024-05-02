extends Control


@onready var point_count = get_parent().points
@onready var point_label = $MarginContainer/HBoxContainer/point_label


# Called when the node enters the scene tree for the first time.
func _ready():
	point_label.text = "Points:  %s" % point_count


func _on_game_buttons_points():
	point_count = get_parent().points
	point_label.text = "Points:  %s" % point_count
