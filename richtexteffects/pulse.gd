tool extends RichTextEffect
class_name RichTextPulse

var bbcode = "pulse"

func _init():
	resource_name = "RichTextPulse"

func _process_custom_fx(char_fx : CharFXTransform) -> bool:
	var color = char_fx.env.get("color", char_fx.color)
	var height = char_fx.env.get("height", 0.0)
	var freq = char_fx.env.get("freq", 2.0)
	
	var sinedTime = (sin(char_fx.elapsed_time * freq) + 1.0) / 2.0
	var y_off = sinedTime * height
	color.a = 1.0
	char_fx.color = char_fx.color.linear_interpolate(color, sinedTime)
	char_fx.offset = Vector2(0, -1) * y_off
	return true
