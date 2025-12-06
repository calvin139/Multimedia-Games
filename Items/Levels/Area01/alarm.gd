extends AudioStreamPlayer2D

@onready var audio_player = $"."


func _ready():
	audio_player.play()
