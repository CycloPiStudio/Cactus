extends Spatial

var preMenu = load("res://Ejecutable/Menu/Menu_niveles/Escena_menu_niveles.tscn")
var Menu

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_Area_area_entered(area):
	print("quien ha estrao")
	print(area.name)
	if area.name == "AreaPersonaje":
		print(" has pinchao")
		Menu =preMenu.instance()
		get_node("/root/Nodo_Dios").add_child(Menu)
		get_node("/root/Nodo_Dios/Music_menu").play()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_parent().get_parent().get_parent().queue_free()
		
	

	pass # Replace with function body.
