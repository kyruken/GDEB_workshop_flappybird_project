extends Node2D

@export var object_to_spawn : PackedScene
var rng = RandomNumberGenerator.new()
var offset = 100
func _ready():
	pass

func _process(delta):
	pass


func _on_timer_timeout():
	print('spawn pipe')
	var new_spawn = object_to_spawn.instantiate()
	
	new_spawn.position.y = rng.randf_range(-offset, offset)
	self.add_child(new_spawn)
