extends IState

class_name SaltoState

func check_state() -> void:
	if self.personaje.is_on_floor():
		self.exit()
	
func enter() -> void:
	self.personaje.velocity.y = Personaje.JUMP_VELOCITY
	self.personaje.animated_sprite.play(self.personaje.SALTO)

func exit() -> void:
	self.personaje.velocity.y = 0
	self.personaje.set_estado(personaje.DEFAULT)

func update(delta: float) -> void:
	self.personaje.velocity += self.personaje.get_gravity() * delta
	super.update(delta)
	self.check_state()
