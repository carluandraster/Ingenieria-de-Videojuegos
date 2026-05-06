extends CharacterBody2D

class_name Personaje

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const DEFAULT = "default"
const AGACHADO = "Agachado"
const SALTO = "Salto"
var DEFAULT_STATE = StateFactory.crear_estado(DEFAULT, self)
var AGACHADO_STATE = StateFactory.crear_estado(AGACHADO, self)
var SALTO_STATE = StateFactory.crear_estado(SALTO, self)

var estado = DEFAULT_STATE
@onready var animated_sprite = $SpriteAnimado
var muerto = false

func set_estado(nombre_estado: String) -> void:
	match nombre_estado:
		DEFAULT:
			estado = DEFAULT_STATE
		AGACHADO:
			estado = AGACHADO_STATE
		SALTO:
			estado = SALTO_STATE
	estado.enter()

func _physics_process(delta: float) -> void:
	estado.update(delta)

func _input(event: InputEvent) -> void:
	estado.check_state()
