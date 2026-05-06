extends IState

class_name AgachadoState

func enter() -> void:
	self.personaje.animated_sprite.play(Personaje.AGACHADO)

func check_state() -> void:
	if not Input.is_action_pressed("ui_down"):
		self.personaje.set_estado(Personaje.DEFAULT)
