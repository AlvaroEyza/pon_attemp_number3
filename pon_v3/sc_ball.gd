extends RigidBody2D

var direction = 1
var speed = 300
var reset = true

func _ready() -> void:
	randomize() 
	var angle_degrees = randf_range(0, 360)
	var direction_vec = Vector2(1, 0).rotated(deg_to_rad(angle_degrees))
	linear_velocity = direction_vec * speed

func _physics_process(_delta: float) -> void:
	linear_velocity.x = direction * speed

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("players"):
		direction *= -1

#func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
#	if reset:
#		direction *= -1
#		state.transform.origin = Vector2(320, 200)
#		reset = false
		
func _integrate_forces(state) -> void:
	if reset:
		state.transform.origin = Vector2()
		reset = false
		print("adsda")
