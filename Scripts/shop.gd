extends Control


@onready var shop_panel = $PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	shop_panel.add_item("Add 1 on Click")
	#shop_panel.connect("id_pressed", self, "on")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
