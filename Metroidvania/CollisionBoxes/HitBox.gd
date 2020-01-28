extends Area2D

export(int) var damage = 1

func _on_HitBox_area_entered(hurtBox):
	hurtBox.emit_signal("hit", damage)
