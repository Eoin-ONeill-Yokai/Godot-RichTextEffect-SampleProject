tool
extends RichTextEffect
class_name HideTextFX

var bbcode := "hide"

func _process_custom_fx(char_fx : CharFXTransform):
	var hide_char : String = char_fx.env.get("char", "")
	
	if not hide_char or hide_char.length() > 1:
		return false
	
	if char_fx.character == ord(hide_char):
		char_fx.visible = false
	
	return true
