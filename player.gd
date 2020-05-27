extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)
const jump_height = -600
func _physics_process(delta):
	motion.y += 20
	if Input.is_action_pressed("ui_right"):
		motion.x = 300
		$Sprite.flip_h = false;
		$Sprite.play("run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -300
		$Sprite.flip_h = true;
		$Sprite.play("run")
		
	else:
		motion.x = 0;
		$Sprite.play("ideal")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = jump_height
	move_and_slide(motion , UP)
	pass
