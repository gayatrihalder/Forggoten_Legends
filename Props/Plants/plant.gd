class_name Plant extends Node2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$HitBox.Damaged.connect(TakeDamage)
	pass # Replace with function body.


func TakeDamage(_hurt_box : HurtBox) -> void:
	audio_stream_player_2d.play()
	await audio_stream_player_2d.finished
	queue_free()
	pass
