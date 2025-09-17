extends CanvasLayer

func _ready():
	update_label()

func update_label():
	%GemsLabel.text = ("x" + str(StatsHolder.gems))


func _on_stats_holder_gems_changed() -> void:
	print("we got the signal from stats_holder")
	update_label()
