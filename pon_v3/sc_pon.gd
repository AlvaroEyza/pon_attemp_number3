extends Node2D

var player1_score = 0
var player2_score = 0

func _on_area_right_body_entered(_body):
	player2_score += 1
	reset_level()

func _on_area_left_body_entered(_body):
	player1_score += 1
	reset_level()

func reset_level():
	$Score_left.text = str(player1_score)
	$Score_right.text = str(player2_score)
	$ball.reset = true
	print("eeeeee")
