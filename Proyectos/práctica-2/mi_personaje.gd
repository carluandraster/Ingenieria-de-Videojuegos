extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var estado = "default"
@onready var animated_sprite = $SpriteAnimado
var muerto = false

func _physics_process(delta: float) -> void:
	animated_sprite.play(estado)
	match estado:
		"default":
			if Input.is_action_just_pressed("ui_down"):
				estado = "Agachado"
			elif Input.is_action_just_pressed("ui_up"):
				velocity.y = JUMP_VELOCITY
				estado = "Salto"
		"Agachado":
			if not Input.is_action_pressed("ui_down"):
				estado = "default"
		"Salto":
			velocity += get_gravity() * delta
			if is_on_floor():
				velocity.y = 0
				estado = "default"
	move_and_slide()
