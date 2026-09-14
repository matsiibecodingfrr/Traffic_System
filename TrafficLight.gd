extends Node2D


enum LightState {
	RED,
	YELLOW,
	GREEN
}


var current_state: LightState = LightState.RED


func _ready():
	set_light(LightState.RED)


func set_light(state: LightState):
	current_state = state

	$RedLight.visible = false
	$YellowLight.visible = false
	$GreenLight.visible = false

	match current_state:

		LightState.RED:
			$RedLight.visible = true

		LightState.YELLOW:
			$YellowLight.visible = true

		LightState.GREEN:
			$GreenLight.visible = true
