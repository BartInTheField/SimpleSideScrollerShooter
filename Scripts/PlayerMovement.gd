extends KinematicBody2D

var movementSpeed: int = 100
var motion: Vector2 = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("player_down"):
		set_y_motion(movementSpeed)
	elif Input.is_action_pressed("player_up"):
		set_y_motion(-movementSpeed)
	else:
		set_y_motion(0)
		
	if Input.is_action_pressed("player_left"):
		set_x_motion(-movementSpeed)
	elif Input.is_action_pressed("player_right"):
		set_x_motion(movementSpeed)
	else:
		set_x_motion(0)
	
	move_and_slide(motion)
	pass
	
func set_y_motion(moveValue: int):
	motion.y = moveValue
	pass

func set_x_motion(moveValue: int):
	motion.x = moveValue
	pass