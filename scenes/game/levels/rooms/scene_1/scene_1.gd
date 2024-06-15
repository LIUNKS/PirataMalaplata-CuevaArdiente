extends Node2D
## Script de escena principal.
##
## Tiene variables y funciones relacionados con la escena, por ejemplo cambios hacia otras escenas
## Cambio de escenas: https://docs.google.com/document/d/1eIBtgr8wln1pT0aZ4c-YWk_pqngyBg4HDsgdYLAXv28/edit?usp=sharing
## Uso de señales: https://docs.google.com/document/d/1vFSOuJkBy7xr5jksgCBNaTpqJHE_K87ZNafB5ZJ_I0M/edit?usp=sharing


# Area para siguiente nivel
@onready var _area_next_level = $Areas/AreaNextLevel


# Función de inicialización
func _ready():
	# Escuchamos cuando el personaje entre al área de contacto
	_area_next_level.body_entered.connect(_load_nex_level)


# Cargamos el siguiente nivel (la siguiente escena)
func _load_nex_level(body):
	if body.is_in_group("player"):
		var scene = "res://scenes/game/levels/rooms/scene_4/scene_4.tscn"
		#SceneTransition.change_scene(scene) # Por el momento no usaremos este cambio de nivel
