extends IState

class_name DefaultState

func enter() -> void:
	self.personaje.animated_sprite.play(personaje.DEFAULT_STATE)

func exit() -> void:
	pass

func check_state() -> void:
	if Input.is_action_pressed("ui_down"):
		self.personaje.estado = self.personaje.AGACHADO_STATE
	elif Input.is_action_just_pressed("ui_up"):
		self.personaje.velocity.y = self.personaje.JUMP_VELOCITY
		self.personaje.estado = self.personaje.SALTO_STATE
