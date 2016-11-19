extends ParallaxBackground

var coeff = [ 1.4, 1.15 ]

func update_fg_para(mov):
	for i in range(1,3):
		var child = get_node("fg"+String(i))
		var curPos = child.get_pos()
		curPos.x += mov * coeff[i-1]
		if(curPos.x>(1280)):
			curPos.x = 0
		child.set_pos(curPos)
