extends CharacterBody2D

class_name Personaje

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const DEFAULT_STATE = "default"
const AGACHADO_STATE = "Agachado"
const SALTO_STATE = "Salto"

var estado = DEFAULT_STATE
@onready var animated_sprite = $SpriteAnimado
var muerto = false

func _physics_process(delta: float) -> void:
	animated_sprite.play(estado)
	match estado:
		DEFAULT_STATE:
			if Input.is_action_pressed("ui_down"):
				estado = AGACHADO_STATE
			elif Input.is_action_just_pressed("ui_up"):
				velocity.y = JUMP_VELOCITY
				estado = SALTO_STATE
		AGACHADO_STATE:
			if not Input.is_action_pressed("ui_down"):
				estado = DEFAULT_STATE
		SALTO_STATE:
			velocity += get_gravity() * delta
			if is_on_floor():
				velocity.y = 0
				estado = DEFAULT_STATE
	move_and_slide()

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	pass # Llamo a chek_state
