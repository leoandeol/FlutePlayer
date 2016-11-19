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
	bg_para = get_child("bg")
	fg_para = get_child("fg")
	aft_fir = get_child("front")
	aft_sec = get_child("middle")
	aft_thi = get_child("back")
	game_speed = 1

func _process(delta):
	pass
	

func _input(event):
	pass