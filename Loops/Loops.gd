extends Node2D

@export var spawn_count : int = 200
var star_scene = preload("res://Loops/Star.tscn")

var num_stars : int = 0

func _process(delta):
	if num_stars < spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
		star.position.x = randi_range(-280, 280)
		star.position.y = randi_range(-150, 150)

		var star_size = randf_range(0.5, 1)
		star.scale.x = star_size
		star.scale.y = star_size
		num_stars += 1
		print(num_stars)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	for i in spawn_count:
#		var star = star_scene.instantiate()
#		add_child(star)
#		star.position.x = randi_range(-280, 280)
#		star.position.y = randi_range(-150, 150)
#
#		var star_size = randf_range(0.5, 1)
#		star.scale.x = star_size
#		star.scale.y = star_size
