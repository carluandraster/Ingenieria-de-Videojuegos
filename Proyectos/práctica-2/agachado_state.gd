extends IState

class_name AgachadoState

func enter() -> void:
	self.personaje.animated_sprite.play(self.personaje.AGACHADO_STATE)

func exit() -> void:
	pass

func check_state() -> void:
	if not Input.is_action_pressed("ui_down"):
		self.personaje.estado = self.personaje.DEFAULT_STATE
