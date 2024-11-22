extends Node

onready var animation = get_node("AnimationPlayer")

func _ready():
#	Engine.time_scale = 50
	for _i in range(100000):
		yield(get_tree().create_timer(rand_range(0.02, 0.30)), "timeout")
		animation.play("Activate")
		yield(animation, "animation_finished")
