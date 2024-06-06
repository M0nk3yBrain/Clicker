extends Node2D


signal update_button


var points = 0
var click_power = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_game_buttons_points():
	points += click_power


func _on_shop_add_point_power(power_up):
	click_power += power_up
	emit_signal("update_button")

func _on_shop_reduce_points(price):
	points -= price


func _on_shop_pause():
	pass
	#get_tree().paused = true


func _on_shop_unpause():
	pass
	#get_tree().paused = false
