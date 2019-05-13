extends Panel

export(NodePath) var pth_hsplit = ".."
onready var hsplit = $".."

func _on_ShowSplit_toggled(button_pressed):
	self.visible = button_pressed
