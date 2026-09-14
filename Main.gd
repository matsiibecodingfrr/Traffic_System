extends Node2D

@onready var intersection = $Intersection
@onready var traffic_info = $CanvasLayer/TrafficInfo

func _process(_delta):

	if intersection == null:
		return

	traffic_info.text = intersection.get_debug_text()
