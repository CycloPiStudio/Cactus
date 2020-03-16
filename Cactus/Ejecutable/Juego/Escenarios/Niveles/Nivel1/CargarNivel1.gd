extends Spatial

var preNivel_juegar_1 = preload("res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/Nivel1.tscn")
# Declare member variables here. Examples:
var Nivel_juegar = 0
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print(("la puta"))
	print(get_node("Timer1"))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func cargar_nivel(preNivel_juegar):
	Nivel_juegar =preNivel_juegar.instance()
	get_node("/root/Nodo_Dios").add_child(Nivel_juegar)
	get_node("/root/Nodo_Dios/Music_menu").stop()
	get_node("/root/Nodo_Dios").Nivel_jugar = 1
	$".".queue_free()
	pass


#func _on_TimerAuX_timeout():
#	cargar_nivel(preNivel_juegar_1)
#	print("sala timer")
#	pass # Replace with function body.


func _on_Timer1_timeout():
	cargar_nivel(preNivel_juegar_1)
	print("sala timer")
#	pass # Replace with function body.
	pass # Replace with function body.
