extends ParallaxBackground

var scroll = 0

func update_para(mov):
	scroll += mov*2
	self.set_scroll_offset(Vector2(scroll,0))
