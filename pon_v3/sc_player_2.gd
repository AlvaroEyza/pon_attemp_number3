extends CharacterBody2D

@export var player_speed: int = 400

func get_input():
	var input_direction = Input.get_vector("false", "false", "player2_up", "player2_down")
	velocity = input_direction * player_speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
