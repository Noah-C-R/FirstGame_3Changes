extends CanvasLayer

func _ready():
	update_label()

func update_label():
	%GemsLabel.text = ("x" + str(StatsHolder.gems))

func _process(delta: float) -> void:
	update_label()
