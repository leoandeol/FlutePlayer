extends Sprite

var frames
var count
var duration
var speed

func _ready():
	frames = self.get_hframes()
	set_process(true)
	count = 0
	duration = 0.100
	speed=10
	
func _process(delta):
	count+=delta
	if(count>duration):
		count = 0
		var v = self.get_frame()
		if(v>=frames-1):
			v=0
		else:
			v+=1
		self.set_frame(v)