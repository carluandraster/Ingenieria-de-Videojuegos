extends Node

class_name StateFactory

static func crear_estado(nombre_estado: String, personaje: Personaje) -> IState:
	var estado: IState
	match nombre_estado:
		Personaje.DEFAULT:
			estado = DefaultState.new()
		Personaje.SALTO:
			estado = SaltoState.new()
		Personaje.AGACHADO:
			estado = AgachadoState.new()
	estado.personaje = personaje
	return estado
