extends Control


signal add_point_power
signal reduce_points
signal update_score


@onready var points = get_parent().points


func cost_check(price, point_up):
	points = get_parent().points
	if points > price:
		emit_signal("reduce_points", price)
		emit_signal("update_score")
		power_added(point_up)


func power_added(power_up):
	emit_signal("add_point_power", power_up)


func _on_plus_one_pressed():
	var cost = 10
	var point_up = 1
	cost_check(cost, point_up)


func _on_plus_two_pressed():
	var cost = 20
	var point_up = 2
	cost_check(cost, point_up)


func _on_plus_five_pressed():
	var cost = 25
	var point_up = 5
	cost_check(cost, point_up)


func _on_plus_ten_pressed():
	var cost = 30
	var point_up = 10
	cost_check(cost, point_up)


func _on_plus_twenty_pressed():
	var cost = 50
	var point_up = 20
	cost_check(cost, point_up)


func _on_plus_fifty_pressed():
	var cost = 100
	var point_up = 50
	cost_check(cost, point_up)


func _on_plus_one_hundred_pressed():
	var cost = 200
	var point_up = 100
	cost_check(cost, point_up)
