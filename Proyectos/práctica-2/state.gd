extends Node

## Clase base para el manejo de estados del personaje
class_name IState

var personaje: Personaje

## Método que se ejecuta al entrar al estado
func enter() -> void:
	pass

## Método que se ejecuta al salir del estado
func exit() -> void:
	pass

## Método que se ejecuta todo el tiempo
func update(delta: float) -> void:
	personaje.move_and_slide()

## Método que chequea si debe cambiar de estado
func check_state() -> void:
	pass
