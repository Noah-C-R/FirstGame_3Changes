extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()
	
	StatsHolder.update_gems(-2) #wonky, but the negative is here to add to the value
