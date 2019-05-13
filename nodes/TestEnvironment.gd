extends Control


signal example_changed(n, bbcode)
signal reset_views()


export(String, MULTILINE) var tornado = ""
export(String, MULTILINE) var wave = ""
export(String, MULTILINE) var shake = ""
export(String, MULTILINE) var fade = ""
export(String, MULTILINE) var rainbow = ""
export(String, MULTILINE) var custom = ""

onready var example_codes = [tornado, wave, shake, fade, rainbow, custom]
onready var example_names = ["tornado", "wave", "shake", "fade", "rainbow", "custom"]
onready var preset_chooser = $"HSplitContainer/MarginContainer/Control/VBoxContainer/HBoxContainer/PresetChooser"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var ind = randi() % example_codes.size()
	preset_chooser.selected = ind
	emit_signal("example_changed", example_names[ind], example_codes[ind])
	emit_signal("reset_views")
	

func _on_PresetChooser_item_selected(ID):
	emit_signal("example_changed", example_names[ID], example_codes[ID])
	emit_signal("reset_views")
