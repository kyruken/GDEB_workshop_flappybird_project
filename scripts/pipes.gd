extends Node2D

var speed = 10

func _physics_process(delta):
	self.position.x -= speed
