extends ParallaxBackground

var coeff = [ 0.1, 0.2, 0.3, 0.4, 0.5 ,0.6 ,0.7 ]

func update_bg_para(mov):
	for i in range(1,8):
		var child = get_node(String(i))
		var curPos = child.get_pos()
		curPos.x += mov * coeff[i-1]
		if(curPos.x>(1280)):
			curPos.x = 0
		child.set_pos(curPos)
