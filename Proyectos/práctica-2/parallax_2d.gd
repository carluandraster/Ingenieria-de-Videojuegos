extends Parallax2D

var velocidad_desplazamiento = 400.0 # Píxeles por segundo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# scroll_offset es la propiedad nativa que desplaza todas las capas
	scroll_offset.x -= velocidad_desplazamiento * delta
