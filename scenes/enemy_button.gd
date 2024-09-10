extends Button

@export var character: Character:
	set(value):
		character = value
		text = value.title

func _on_pressed():
	character.get_attacked()
	get_parent().hide()
	get_parent().owner.attack()
	get_parent().owner.pop_out()
