extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

# Only want to do something when player enters area
# we trigger a signal Click on Area2D coin node on left, then on right panel choose Node tab we can see all the signals on the node


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
