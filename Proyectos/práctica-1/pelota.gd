extends RigidBody2D

class_name Pelota

const FUERZA_DE_IMPULSO = -200.0
const VELOCIDAD = 150


	# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


	# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var toca_el_piso = get_colliding_bodies().size() > 0
	if toca_el_piso and Input.is_action_pressed("ui_up"):
		apply_central_impulse(Vector2(0, FUERZA_DE_IMPULSO))
	if Input.is_action_pressed("ui_left"):
		apply_central_force(Vector2(-VELOCIDAD * 10, 0))
	if Input.is_action_pressed("ui_right"):
		apply_central_force(Vector2(VELOCIDAD*10, 0))
