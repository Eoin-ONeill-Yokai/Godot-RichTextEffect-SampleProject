extends TextEdit

signal source_changed( text )

onready var name_label = $"../HBoxContainer/Effect Name"

func _ready():
	self.connect( "text_changed", self, "_text_changed" )

func _text_changed():
	emit_signal("source_changed", self.text)

func _on_RTLTestingEnvironment_example_changed(n : String, bbcode):
	name_label.text = n.capitalize()
	self.text = bbcode
	emit_signal("source_changed", self.text)
