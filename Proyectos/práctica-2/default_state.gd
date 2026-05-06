extends IState

class_name DefaultState

func enter() -> void:
	self.personaje.animated_sprite.play(personaje.DEFAULT)

func exit() -> void:
	pass

func check_state() -> void:
	if Input.is_action_pressed("ui_down"):
		self.personaje.set_estado(Personaje.AGACHADO)
	elif Input.is_action_just_pressed("ui_up"):
		self.personaje.set_estado(Personaje.SALTO)
