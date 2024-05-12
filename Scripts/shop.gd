extends Control


signal add_point_power


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func power_added(power_up):
	emit_signal("add_point_power", power_up)


func _on_plus_one_pressed():
	var point_up = 1
	power_added(point_up)


func _on_plus_two_pressed():
	var point_up = 2
	power_added(point_up)


func _on_plus_five_pressed():
	var point_up = 5
	power_added(point_up)


func _on_plus_ten_pressed():
	var point_up = 10
	power_added(point_up)


func _on_plus_twenty_pressed():
	var point_up = 20
	power_added(point_up)


func _on_plus_fifty_pressed():
	var point_up = 50
	power_added(point_up)


func _on_plus_one_hundred_pressed():
	var point_up = 100
	power_added(point_up)
