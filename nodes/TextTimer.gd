extends Timer

signal speak()
signal finished()
onready var text_view = $"../HSplitContainer/MarginContainer/Control/VBoxContainer/CenterContainer/BBCodeView"

func _ready():
	connect("timeout", self, "time_ticked")

func reset():
	text_view.visible_characters = 0
	start()

func time_ticked():
	text_view.visible_characters += 1
	if( text_view.visible_characters < text_view.text.length() and text_view.visible_characters > 0 and not_silent(text_view.text[text_view.visible_characters - 1]) ):
		emit_signal("speak")
	elif( text_view.visible_characters > text_view.text.length() ):
		stop()
		text_view.visible_characters = -1
		emit_signal("finished")

func not_silent(character):
	return not (character == " " or character == "." or character == ",") 
