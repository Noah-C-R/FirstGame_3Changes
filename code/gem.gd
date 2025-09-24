extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	var gameplay_fx_node: Node2D = get_parent().get_node("%GameplayFXNode")
	
	StatsHolder.update_gems(-2) #wonky, but the negative is here to add to the value
	gameplay_fx_node.display_particles("Sparks", global_position)
	call_deferred("queue_free")
