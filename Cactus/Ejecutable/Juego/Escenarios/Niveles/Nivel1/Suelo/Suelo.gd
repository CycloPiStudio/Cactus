extends Spatial

# Declare member variables here. Examples:
#var suelo 
var b = 1
var punto = Vector3()
var matr_punt
var punto2 = Vector3()
var matr_punt2
var limite = 28

# Called when the node enters the scene tree for the first time.
func _ready():
	
	punto = get_node("Scene Root").get_global_transform()[3]
	matr_punt = get_node("Scene Root").get_global_transform()
#	punto.x = punto.x + b
#	matr_punt[3] = punto
#	get_node("Scene Root").set_global_transform(matr_punt)
#
	punto2 = get_node("Scene Root2").get_global_transform()[3]
	matr_punt2 = get_node("Scene Root2").get_global_transform()
#	punto2.x = punto2.x + b
#	matr_punt2[3] = punto2
#	get_node("Scene Root2").set_global_transform(matr_punt2)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if punto.x > limite:
		punto.x = -limite
	
	if punto2.x > limite:
		punto2.x = -limite
		
	punto.x = punto.x + b
	matr_punt[3] = punto
	get_node("Scene Root").set_global_transform(matr_punt)
	
	punto2.x = punto2.x + b
	matr_punt2[3] = punto2
	get_node("Scene Root2").set_global_transform(matr_punt2)
#
	pass # Replace with function body.
