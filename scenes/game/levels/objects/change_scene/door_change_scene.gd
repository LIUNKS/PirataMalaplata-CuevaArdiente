extends Node2D
## Script de objeto para cambio de escena.
##
## Es un nodo que representa un objeto y al entrar en contacto cambia a una siguiente escena
## Cambio de escenas: https://docs.google.com/document/d/1eIBtgr8wln1pT0aZ4c-YWk_pqngyBg4HDsgdYLAXv28/edit?usp=sharing
## Uso de señales: https://docs.google.com/document/d/1vFSOuJkBy7xr5jksgCBNaTpqJHE_K87ZNafB5ZJ_I0M/edit?usp=sharing
## Uso de objetos para cambio de escena: https://docs.google.com/document/d/1DeAuU4dYa7DsWs-ht5Aiq4mFraOOu7hraNgIeSZn4lA/edit?usp=sharing


# Ruta de la escena a cargar
@export var _path_to_scene = "res://scenes/game/levels/rooms/scene_3/scene_3.tscn"

# Referencia al area
@onready var _area = $Area2D


# Función de inicialización
func _ready():
	_area.body_entered.connect(_load_nex_level)


# Cargamos el siguiente nivel (la siguiente escena)
func _load_nex_level(body):
	# Cambiamos de escena si la ruta no está vacía y el personaje principa entra en contacto
	if _path_to_scene != "" and body.is_in_group("player"):
		SceneTransition.change_scene(_path_to_scene)
