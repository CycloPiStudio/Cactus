extends Node2D

# Declare member variables here. Examples:
var jirafa
var punto_jirafa = Vector3()
var matr_jirafa
var velo = 0.2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	print(get_tree().get_root().get_node("Game_play/Personaje"))
#	print(get_tree().get_root())
#	print(get_node("/root/Nodo_Dios/Game_play/Personaje").name)
	jirafa = get_node("/root/Nodo_Dios/Game_play/Personaje")
	punto_jirafa = jirafa.get_global_transform()[3]
	matr_jirafa = jirafa.get_global_transform()
	print(matr_jirafa)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Derecha_pressed():
	print("Derecha")
	punto_jirafa.z = punto_jirafa.z - velo
	matr_jirafa[3] = punto_jirafa
	jirafa.set_global_transform(matr_jirafa)
	if punto_jirafa.z < -1:
		punto_jirafa.z = -1
	pass # Replace with function body.

func _on_Izquierda_pressed():
	punto_jirafa.z = punto_jirafa.z + velo
	matr_jirafa[3] = punto_jirafa
	jirafa.set_global_transform(matr_jirafa)
	if punto_jirafa.z > 1:
		punto_jirafa.z = 1
	print("Izquierda")
	pass # Replace with function body.
