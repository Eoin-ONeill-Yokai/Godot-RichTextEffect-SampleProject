extends AudioStreamPlayer2D

func play_no_interrupt():
	if( !playing ):
		play()
