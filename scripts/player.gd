extends RigidBody2D

var jump_impulse = -500
var score_label
var game_over

var is_alive = true

func _ready():
	score_label = get_tree().get_first_node_in_group("score")
	game_over = get_tree().get_first_node_in_group("game_over")
	print(score_label)

func _physics_process(delta):
	if (Input.is_action_just_pressed("jump") and is_alive):
		apply_impulse(Vector2(0, jump_impulse), self.global_position)

func _on_area_2d_area_entered(area):
	if !area.is_in_group("score_hitbox"):
		is_alive = false
		game_over.visible = true
	else:
		score_label.add_score()
		
