extends Node2D


@onready var polygon_2d = $Polygon2D

#var _colors = [
	#polygon_2d.color(0, 1, 1, 1), # Aqua
	#polygon_2d.color(0, 1, 0, 1), # Green
	#polygon_2d.color(1, 0, 0, 1) # Red
#]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func color_choice():
	#var random_color = _colors[randi() % _colors.size()]
	#return random_color
