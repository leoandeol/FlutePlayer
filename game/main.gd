extends Node2D

# JUST VISUAL STUFF AND PARALLAX

var bg_para
var fg_para
var aft_fir
var aft_sec
var aft_thi

# serious business

var game_speed

func _ready():
	set_process(true)
	set_process_input(true)
	game_speed = 1

func _process(delta):
	var mov = delta * 150
	
	bg_para = get_node("bg")
	fg_para = get_node("fg")
	aft_fir = get_node("front")
	aft_sec = get_node("middle")
	aft_thi = get_node("back")
	bg_para.update_bg_para(mov)
	for i in [aft_thi, aft_sec, aft_fir]:
		var pos = i.get_pos()
		pos.x += mov
		if(pos.x>(1280)):
			pos.x = 0
		i.set_pos(pos)
	fg_para.update_fg_para(mov)
	

func _input(event):
	pass