extends Node2D

const REQ_GEMS := 10

func perform_gem_check():
	if(StatsHolder.gems >= REQ_GEMS):
		StatsHolder.update_gems(REQ_GEMS)
		%AnimatedSprite2D.play()
		%AreaCollisionShape2D.set_deferred("disabled", true)
		%StaticCollisionShape2D.set_deferred("disabled", true)
		%TextureRect.visible = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Lock Area Entered")
	perform_gem_check()
