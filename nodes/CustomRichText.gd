extends RichTextLabel

func _on_BBCodeSRC_source_changed(text):
	self.set_bbcode( text )
